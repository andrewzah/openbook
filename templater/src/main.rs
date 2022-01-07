// goals of this project
// * automatically parse frontmatter in the songfiles
// * generate a `book.ly` from templates
//   -> book cover / title page
//   -> alphabetical (by song name) table of contents
//   -> extra ToCs (by composer name, meter, bpm)
// * setup each song from template
//   -> name, composer, etc
//   -> transposing_instrument (default to c)

use std::path::PathBuf;
use std::fs::{self, File};
use std::io::Write;

use extract_frontmatter::{Extractor};
use once_cell::sync::OnceCell;

mod models;
mod utils;

use crate::models::*;
use crate::utils::*;

static INTRO_TEMPLATE: OnceCell<String> = OnceCell::new();
static BOOKPART_TEMPLATE: OnceCell<String> = OnceCell::new();
static SONG_BODY_TEMPLATE: OnceCell<String> = OnceCell::new();
static SONG_HEADER_TEMPLATE: OnceCell<String> = OnceCell::new();
static CHORDS_TEMPLATE: OnceCell<String> = OnceCell::new();
static VOICE_TEMPLATE: OnceCell<String> = OnceCell::new();
static LYRICS_TEMPLATE: OnceCell<String> = OnceCell::new();

fn main() {
    // TODO: make configurable via flags
    let conf = TemplaterConfig {
        transpose: String::from("c"),
    };
    init_static(&conf);

    let mut songs: Vec<Song> = get_files_by_ext(&PathBuf::from("./songs"), "ly")
        .iter_mut()
        .map(|path| {
            let input = fs::read_to_string(path).unwrap();
            let mut extractor = Extractor::new(&input);
            extractor
                .select_by_terminator("---")
                .strip_whitespace();
            let (front_matter, document): (Vec<&str>, &str) = extractor.split();

            Song::new(front_matter, document, &conf.transpose)
        })
        .collect();
    songs.sort_by(|a, b| a.title.cmp(&b.title));

    let mut outfile = File::create("book.ly").expect("Unable to create book.ly");

    write!(outfile, "{}", INTRO_TEMPLATE.get().unwrap()).unwrap();

    for song in songs {
        println!("Handling {}", song.title);
        song.write(&mut outfile);
    }

    writeln!(outfile, "{}", "}").unwrap();
}

// set templates in memory
fn init_static(conf: &TemplaterConfig) {
    let intro_template = fs::read_to_string("./templates/intro")
        .expect("Unable to read intro template")
        .replace("%%TRANSPOSE%%", &capitalize_first_letter_ascii(&conf.transpose));
    INTRO_TEMPLATE.set(intro_template).expect("Unable to set INTRO_TEMPLATE");

    let bookpart_template = fs::read_to_string("./templates/bookpart")
        .expect("Unable to read bookpart template");
    BOOKPART_TEMPLATE.set(bookpart_template).expect("Unable to set BOOKPART_TEMPLATE");

    let song_body_template = fs::read_to_string("./templates/song-body")
        .expect("Unable to read song body template");
    SONG_BODY_TEMPLATE.set(song_body_template).expect("Unable to set SONG_BODY_TEMPLATE");

    let song_header_template = fs::read_to_string("./templates/song-header")
        .expect("Unable to read song header template");
    SONG_HEADER_TEMPLATE.set(song_header_template).expect("Unable to set SONG_HEADER_TEMPLATE");

    let voice_template = fs::read_to_string("./templates/voice")
        .expect("Unable to read voice template")
        .replace("%%TRANSPOSE%%", &conf.transpose);
    VOICE_TEMPLATE.set(voice_template).expect("Unable to set VOICE_TEMPLATE");

    let lyrics_template = fs::read_to_string("./templates/lyrics")
        .expect("Unable to read lyrics template");
    LYRICS_TEMPLATE.set(lyrics_template).expect("Unable to set LYRICS_TEMPLATE");

    let chords_template = fs::read_to_string("./templates/chords")
        .expect("Unable to read chords template");
    CHORDS_TEMPLATE.set(chords_template).expect("Unable to set CHORDS_TEMPLATE");
}

