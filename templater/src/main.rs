// goals of this project
// * automatically parse frontmatter in the songfiles
// * generate a `book.ly` from templates
//   -> book cover / title page
//   -> alphabetical (by song name) table of contents
//   -> extra ToCs (by composer name, meter, bpm)
// * setup each song from template
//   -> name, composer, etc
//   -> transposing_instrument (default to c)

use std::fs::{self, File};
use std::io::Write;
use std::path::PathBuf;

use extract_frontmatter::Extractor;
use once_cell::sync::OnceCell;

mod errors;
mod models;
mod utils;

use crate::errors::TemplaterError;
use crate::models::*;
use crate::utils::*;

static INTRO_TEMPLATE: OnceCell<String> = OnceCell::new();
static BOOKPART_TEMPLATE: OnceCell<String> = OnceCell::new();
static SONG_BODY_TEMPLATE: OnceCell<String> = OnceCell::new();
static SONG_HEADER_TEMPLATE: OnceCell<String> = OnceCell::new();
static CHORDS_TEMPLATE: OnceCell<String> = OnceCell::new();
static VOICE_TEMPLATE: OnceCell<String> = OnceCell::new();
static LYRICS_TEMPLATE: OnceCell<String> = OnceCell::new();

#[derive(Debug)]
struct AppArgs {
    transpose: String,
    songs_dir: String,
    lyrics: bool,
}

fn parse_args() -> Result<AppArgs, TemplaterError> {
    let mut pargs = pico_args::Arguments::from_env();
    let args = AppArgs {
        transpose: pargs.opt_value_from_str("--transpose")?.unwrap_or("c".into()),
        songs_dir: pargs.opt_value_from_str("--songs-dir")?.unwrap_or(String::from("./songs")),
        lyrics: pargs.contains("--lyrics"),
    };

    // Help has a higher priority and should be handled separately.
    if pargs.contains(["-h", "--help"]) {
        println!("args:\n    --transpose: pass in bb/eb");
        println!("    --lyrics: include lyrics");
        std::process::exit(0);
    }

    let remaining = pargs.finish();
    if !remaining.is_empty() {
        println!("Warning: unused arguments left: {:?}.", remaining);
    }

    Ok(args)
}

fn main() -> Result<(), TemplaterError> {
    let args = parse_args()?;
    let transpose_text = transpose_text(&args.transpose)?;

    let conf = TemplaterConfig { transpose_text, };

    let mut songs: Vec<Song> = get_files_by_ext(&PathBuf::from(&args.songs_dir), "ly")
        .iter_mut()
        .map(|path| {
            let input = fs::read_to_string(path).unwrap();
            let mut extractor = Extractor::new(&input);
            extractor.select_by_terminator("---").strip_whitespace();
            let (front_matter, document): (Vec<&str>, &str) = extractor.split();

            Song::new(front_matter, document, conf.transpose_text.clone(), args.lyrics)
        })
        .collect();
    println!("[info]: songs found: {}", songs.len());
    songs.sort_by(|a, b| a.title.cmp(&b.title));

    init_static(&conf, songs.len())?;

    let filename = format!("openbook-{}.ly", &conf.transpose_text.display_text);
    let mut outfile = File::create(filename).expect("Unable to create output file");

    write!(outfile, "{}", INTRO_TEMPLATE.get().unwrap()).unwrap();

    for song in songs {
        println!("Handling {}", song.title);
        song.write(&mut outfile);
    }

    // }} escapes } apparently
    writeln!(outfile, "}}").unwrap();

    Ok(())
}

fn transpose_text(input: &str) -> Result<TransposeText, TemplaterError> {
    match input {
        "c" => Ok(TransposeText {
            display_text: "Concert".into(),
            lilypond_text: "c c".into(),
        }),
        "bb" => Ok(TransposeText {
            display_text: "Bb".into(),
            lilypond_text: "c d".into(),
        }),
        "eb" => Ok(TransposeText {
            display_text: "Eb".into(),
            lilypond_text: "c a".into(),
        }),
        "testing-f" => Ok(TransposeText {
            display_text: "Testing".into(),
            lilypond_text: "c g".into(),
        }),
        _ => Err(TemplaterError::from_str(&format!("Transposing '{}' not supported.", input))),
    }
}

// set templates in memory
fn init_static(conf: &TemplaterConfig, num_songs: usize) -> Result<(), TemplaterError> {
    let intro_template = fs::read_to_string("./templates/intro")?
        .replace(
            "%%TRANSPOSE%%",
            &capitalize_first_letter_ascii(&conf.transpose_text.display_text),
        )
        .replace("%%NUM_TUNES%%", &format!("{}", num_songs));

    INTRO_TEMPLATE.set(intro_template)?;

    let bookpart_template = fs::read_to_string("./templates/bookpart")?;
    BOOKPART_TEMPLATE.set(bookpart_template)?;

    let song_body_template = fs::read_to_string("./templates/song-body")?;
    SONG_BODY_TEMPLATE.set(song_body_template)?;

    let song_header_template = fs::read_to_string("./templates/song-header")?;
    SONG_HEADER_TEMPLATE.set(song_header_template)?;

    let voice_template = fs::read_to_string("./templates/voice")?
        .replace("%%TRANSPOSE%%", &conf.transpose_text.lilypond_text);
    VOICE_TEMPLATE.set(voice_template)?;

    let lyrics_template = fs::read_to_string("./templates/lyrics")?;
    LYRICS_TEMPLATE.set(lyrics_template)?;

    let chords_template = fs::read_to_string("./templates/chords")?;
    CHORDS_TEMPLATE.set(chords_template)?;

    Ok(())
}
