use std::fs::File;
use std::collections::HashMap;
use std::io::Write;

pub struct TemplaterConfig {
    pub transpose: String,
}

#[derive(Debug)]
pub struct Song {
    pub transpose: String,

    // body
    pub chords: String,
    pub voices: String,
    pub lyrics: String,

    // header 
    pub arranger: Option<String>,
    pub composer: String,
    pub copyright: Option<String>,
    pub dedication: Option<String>,
    pub footer: Option<String>,
    pub instrument: Option<String>,
    pub meter: Option<String>,
    pub poet: Option<String>,
    pub subsubtitle: Option<String>,
    pub subtitle: Option<String>,
    pub tagline: Option<String>,
    pub title: String,
}

impl Song {
    pub fn new(front_matter: Vec<&str>, document: &str, transpose: &str) -> Self {
        let mut metadata = Song::parse_frontmatter(front_matter);
        let parts = document.split("---")
            .collect::<Vec<&str>>();

        let mut chords = String::new();
        let mut voices = String::new();
        let mut lyrics = String::new();

        for part in parts {
            if part.contains("chordmode") {
                chords = part.to_string();
                continue;
            }

            if part.contains("numericTimeSignature") {
                voices.push_str(part);
                continue;
            }

            if part.contains("lyricmode") {
                lyrics.push_str(part);
                continue;
            }
        }

        Song {
            transpose: String::from(transpose),

            chords: chords,
            voices: voices,
            lyrics: lyrics,

            title: metadata.remove("title")
                .unwrap_or(String::from("UNKNOWN TITLE")),
            composer: metadata.remove("composer")
                .unwrap_or(String::from("UNKNOWN COMPOSER")),
            arranger: metadata.remove("arranger"),
            copyright: metadata.remove("copyright"),
            dedication: metadata.remove("dedication"),
            footer: metadata.remove("footer"),
            instrument: metadata.remove("instrument"),
            meter: metadata.remove("meter"),
            poet: metadata.remove("poet"),
            subsubtitle: metadata.remove("subsubtitle"),
            subtitle: metadata.remove("subtitle"),
            tagline: metadata.remove("tagline"),
        }
    }

    fn parse_frontmatter(front_matter: Vec<&str>) -> HashMap<String, String> {
        front_matter
            .into_iter()
            .map(|e| e.split(":").collect::<Vec<&str>>())
            .fold(HashMap::new(),
                |mut acc, vec| { acc.insert(vec[0].to_string(), vec[1].trim_start().to_string()); acc })
    }

    pub fn write(self, file: &mut File) {
        let chords = crate::CHORDS_TEMPLATE.get().unwrap()
            .replace("%%TRANSPOSE%%", &self.transpose)
            .replace("%%CHORDS%%", &self.chords);

        let voices = crate::VOICE_TEMPLATE.get().unwrap()
            .replace("%%TRANSPOSE%%", &self.transpose)
            .replace("%%NOTES%%", &self.voices);

        let lyrics = crate::LYRICS_TEMPLATE.get().unwrap()
            .replace("%%LYRICS%%", &self.lyrics);

        let song_header = crate::SONG_HEADER_TEMPLATE.get().unwrap()
            .replace("%%TITLE%%", &self.title)
            .replace("%%COMPOSER%%", &format!("Music by {}", &self.composer))
            .replace("%%ARRANGER%%", &self.arranger.unwrap_or(String::new()))
            .replace("%%COPYRIGHT%%", &self.copyright.unwrap_or(String::new()))
            .replace("%%DEDICATION%%", &self.dedication.unwrap_or(String::new()))
            .replace("%%INSTRUMENT%%", &self.instrument.unwrap_or(String::new()))
            .replace("%%METER%%", &self.meter.unwrap_or(String::new()))
            .replace("%%POET%%", &self.poet.unwrap_or(String::new()))
            .replace("%%SUBSUBTITLE%%", &self.subsubtitle.unwrap_or(String::new()))
            .replace("%%SUBTITLE%%", &self.subtitle.unwrap_or(String::new()))
            .replace("%%TAGLINE%%", &self.tagline.unwrap_or(String::new()));

        let song_body = crate::SONG_BODY_TEMPLATE.get().unwrap()
            .replace("%%CHORDS%%", &chords)
            .replace("%%VOICES%%", &voices)
            .replace("%%LYRICS%%", &lyrics);

        let toc_title = format!("{} - {}", self.title, self.composer);
        let bookpart = crate::BOOKPART_TEMPLATE.get().unwrap()
            .replace("%%TITLE%%", &toc_title)
            .replace("%%SONG_HEADER%%", &song_header)
            .replace("%%SONG_BODY%%", &song_body);


        write!(file, "{}", bookpart).unwrap();
    }
}
