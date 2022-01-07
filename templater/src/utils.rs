use std::path::PathBuf;
use std::ffi::OsStr;

pub fn capitalize_first_letter(s: &str) -> String {
    let mut c = s.chars();

    match c.next() {
        None => String::new(),
        Some(f) => f.to_uppercase().collect::<String>() + c.as_str(),
    }
}

pub fn get_files_by_ext(dir: &str, ext: &str) -> Vec<PathBuf> {
    let mut paths = vec![];

    for dir_entry in std::fs::read_dir(dir).unwrap() {
        let path = dir_entry.unwrap().path();
        if let Some(ext) = path.extension().and_then(OsStr::to_str) {
            paths.push(path.to_owned());
        }
    }

    paths
}
