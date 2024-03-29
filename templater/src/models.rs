use std::collections::HashMap;
use std::fs::File;
use std::io::Write;

use crate::capitalize_first_letter_ascii;

pub struct TemplaterConfig {
    // e.g. If someone enters 'Bb', lilypond expects
    // 'd'. In the intro page I want to display the
    // user-specified key (e.g. "for Bb instruments")
    pub transpose_text: TransposeText,
}

// lilypond expects this format: "c c"
// but we also want to show the key in the pdf
#[derive(Debug, Clone)]
pub struct TransposeText {
    pub display_text: String,
    pub lilypond_text: String,
}

#[derive(Clone,Debug)]
pub struct Song {
    pub transpose_text: TransposeText,

    // body
    pub chords: String,
    pub voices: Vec<String>,
    pub pre_staves: String,
    pub lyrics: Vec<String>,
    pub pre_section: String,
    pub post_section: String,

    // header
    pub arranger: Option<String>,
    pub composer: String,
    //pub copyright: Option<String>,
    pub dedication: Option<String>,
    pub footer: Option<String>,
    pub instrument: Option<String>,
    pub is_piano_staff: Option<String>,
    pub meter: Option<String>,
    pub poet: Option<String>,
    pub subsubtitle: Option<String>,
    pub subtitle: Option<String>,
    pub tagline: Option<String>,
    pub title: String,
}

impl Song {
    pub fn new(front_matter: Vec<&str>, document: &str, transpose_text: TransposeText, include_lyrics: bool) -> Self {
        let mut metadata = Song::parse_frontmatter(front_matter);
        let parts = document.split("---").collect::<Vec<&str>>();

        let mut chords = String::new();
        let mut voices = vec![];
        let mut lyrics = vec![];
        let mut pre_staves = String::new();
        let mut pre_section = String::new();
        let mut post_section = String::new();

        for part in parts {
            if part.contains("chordmode") {
                chords = part.to_string();
                continue;
            }

            if part.contains("numericTimeSignature") {
                voices.push(part.to_string());
                continue;
            }

            if part.contains("pre-stave") {
                pre_staves.push_str(part);
                continue;
            }

            if part.contains("lyricmode") && include_lyrics {
                lyrics.push(part.to_string());
                continue;
            }

            if part.contains("pre-section") {
                pre_section.push_str(part);
                continue;
            }

            if part.contains("post-section") {
                post_section.push_str(part);
                continue;
            }
        }

        Song {
            transpose_text,

            chords,
            voices,
            lyrics,
            pre_staves,
            pre_section,
            post_section,

            title: metadata
                .remove("title")
                .unwrap_or_else(|| String::from("UNKNOWN TITLE")),
            composer: metadata
                .remove("composer")
                .unwrap_or_else(|| String::from("UNKNOWN COMPOSER")),
            arranger: metadata.remove("arranger"),
            //copyright: metadata.remove("copyright"),
            dedication: metadata.remove("dedication"),
            footer: metadata.remove("footer"),
            instrument: metadata.remove("instrument"),
            meter: metadata.remove("meter"),
            poet: metadata.remove("poet"),
            subsubtitle: metadata.remove("subsubtitle"),
            subtitle: metadata.remove("subtitle"),
            tagline: metadata.remove("tagline"),
            is_piano_staff: metadata.remove("pianostaff"),
        }
    }

    fn parse_frontmatter(front_matter: Vec<&str>) -> HashMap<String, String> {
        front_matter
            .into_iter()
            .map(|e| e.split(':').collect::<Vec<&str>>())
            .fold(HashMap::new(), |mut acc, vec| {
                acc.insert(vec[0].to_string(), vec[1].trim_start().to_string());
                acc
            })
    }

    pub fn write(self, file: &mut File) {
        let chords = crate::CHORDS_TEMPLATE
            .get()
            .unwrap()
            .replace("%%TRANSPOSE%%", &self.transpose_text.lilypond_text)
            .replace("%%CHORDS%%", &self.chords);

        let mut voices = String::new();
        for voicepart in &self.voices {
            let formatted_voice = crate::VOICE_TEMPLATE
                .get()
                .unwrap()
                .replace("%%TRANSPOSE%%", &self.transpose_text.lilypond_text)
                .replace("%%NOTES%%", voicepart);
            voices.push_str(&formatted_voice);
        }

        let mut lyrics = String::new();
        for lyricspart in &self.lyrics {
            let formatted_lyrics = crate::LYRICS_TEMPLATE
                .get()
                .unwrap()
                .replace("%%LYRICS%%", lyricspart);
            lyrics.push_str(&formatted_lyrics);
        }

        let poet = match self.poet {
            Some(p) => String::from(p),
            None => String::new(),
        };

        let composerpoet = match &self.composer == &poet {
            true => {
                format!("composer = \"Music & Lyrics by {}\"", &self.composer)
            },
            false => {
                match &poet.is_empty() {
                    true => {
                        format!("composer = \"Music by {}\"\n", &self.composer)
                    },
                    false => {
                        format!("composer = \"Music by {}\"\npoet = \"Lyrics by {}\"", &self.composer, &poet)
                    }
                }
            }
        };

        let song_header = crate::SONG_HEADER_TEMPLATE
            .get()
            .unwrap()
            .replace("%%TITLE%%", &self.title)
            .replace("%%COMPOSERPOET%%", &composerpoet)
            .replace("%%ARRANGER%%", &self.arranger.unwrap_or_default())
            .replace(
                "%%COPYRIGHT%%",
                &capitalize_first_letter_ascii(&self.transpose_text.display_text),
            )
            .replace("%%DEDICATION%%", &self.dedication.unwrap_or_default())
            .replace("%%INSTRUMENT%%", &self.instrument.unwrap_or_default())
            .replace("%%METER%%", &self.meter.unwrap_or_default())
            .replace("%%SUBSUBTITLE%%", &self.subsubtitle.unwrap_or_default())
            .replace("%%SUBTITLE%%", &self.subtitle.unwrap_or_default())
            .replace("%%TAGLINE%%", &self.tagline.unwrap_or_default());

        let pianostaff = match &self.is_piano_staff {
            Some(_) => String::from("\\new PianoStaff"),
            None => String::new(),
        };

        let song_body = crate::SONG_BODY_TEMPLATE
            .get()
            .unwrap()
            .replace("%%CHORDS%%", &chords)
            .replace("%%VOICES%%", &voices)
            .replace("%%PIANOSTAFF%%", &pianostaff)
            .replace("%%LYRICS%%", &lyrics)
            .replace("%%PRE_STAVES%%", &self.pre_staves)
            .replace("%%PRE_SECTION%%", &self.pre_section)
            .replace("%%POST_SECTION%%", &self.post_section);

        let toc_title = format!("{} - {}", self.title, self.composer);
        let bookpart = crate::BOOKPART_TEMPLATE
            .get()
            .unwrap()
            .replace("%%TITLE%%", &toc_title)
            .replace("%%SONG_HEADER%%", &song_header)
            .replace("%%SONG_BODY%%", &song_body);

        write!(file, "{}", bookpart).unwrap();
    }
}
