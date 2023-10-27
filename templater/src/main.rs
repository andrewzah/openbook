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
use std::collections::HashMap;

use extract_frontmatter::{Extractor,config::{Modifier,Splitter}};
use itertools::Itertools;
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
    song_names: Option<String>,
    composers: Option<String>,
    lyrics: bool,
}

fn parse_args() -> Result<AppArgs, TemplaterError> {
    let mut pargs = pico_args::Arguments::from_env();
    let args = AppArgs {
        transpose: pargs.opt_value_from_str("--transpose")?.unwrap_or("c".into()),
        songs_dir: pargs.opt_value_from_str("--songs-dir")?.unwrap_or(String::from("./songs")),
        song_names: pargs.opt_value_from_str("--song-names")?,
        composers: pargs.opt_value_from_str("--composers")?,
        lyrics: pargs.contains("--lyrics"),
    };

    // Help has a higher priority and should be handled separately.
    if pargs.contains(["-h", "--help"]) {
        println!("args:\n    --transpose: pass in bb/eb");
        println!("    --lyrics: include lyrics");
        println!("    --composers: quoted, comma delimited list of composers to filter by");
        println!("    --song-names: quoted, comma delimited list of song names to filter by");
        println!("    --song-dir");
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
            println!("Handling {}", &path.display());
            let input = fs::read_to_string(path).unwrap();

            let mut extractor = Extractor::new(Splitter::DelimiterLine("---"));
            extractor.with_modifier(Modifier::TrimWhitespace);

            let (front_matter, document) = extractor.extract(&input);
            let front_matter = front_matter.into_owned();
            let front_matter = front_matter.split("\n").collect::<Vec<&str>>();

            Song::new(front_matter, document, conf.transpose_text.clone(), args.lyrics)
        })
        .collect();
    println!("[info]: total songs found: {}", songs.len());

    if let Some(song_names) = args.song_names {
        let song_names: Vec<&str> = song_names.split(",").collect();

        songs = songs
            .into_iter()
            .filter(|song| song_names.contains(&song.title.to_lowercase().as_str()))
            .collect();
    }

    if let Some(composers) = args.composers {
        let composers: Vec<&str> = composers.split(",").collect();

        songs = songs
            .into_iter()
            .filter(|song| composers.contains(&song.composer.to_lowercase().as_str()))
            .collect();
    }

    if songs.is_empty() {
        println!("0 songs were selected. Check your filters (--song-names | --composers).");
        std::process::exit(1);
    }

    println!("[info]: songs remaining after filtering: {}", songs.len());
    songs.sort_by(|a, b| a.title.cmp(&b.title));

    init_static(&conf, songs.len())?;

    let final_filename = format!("openbook-{}.ly", &conf.transpose_text.display_text);
    let mut outfile = File::create(final_filename).expect("Unable to create output file");

    write!(outfile, "{}", INTRO_TEMPLATE.get().unwrap()).unwrap();

    //let songs_by_meter: Vec<_> = songs
    //    .clone()
    //    .into_iter()
    //    .into_group_map_by(|song| song.meter.clone())
    //    .into_iter()
    //    .filter(|(k, _v)| Option::is_some(&k))
    //    .map(|(k, v)| (k, v))
    //    .sorted_by(|a, b| Ord::cmp(&a.0, &b.0))
    //    .collect();

    //for (k, v) in songs_by_meter {
    //    println!("k: {:?}", k);
    //    println!("  -> v: {:?}", v.into_iter().map(|s| s.title).collect::<Vec<String>>());
    //}

    //fs::create_dir("./.cache").expect("Unable to create .cache dir! Check your permissions.");
    for song in songs {
        println!("Handling {}", song.title);
        song.write(&mut outfile);
    //    let song_filename = format!("./.cache/{}-{}.ly", song.title, &conf.transpose_text.display_text);
    //    let song_file = File::create(song_filename).expect("Unable to create songfile!"); 
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
