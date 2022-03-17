use std::path::{Path, PathBuf};
use std::ffi::OsStr;

pub fn capitalize_first_letter_ascii(s: &str) -> String {
    let mut c = s.chars();

    match c.next() {
        None => String::new(),
        Some(f) => f.to_uppercase().collect::<String>() + c.as_str(),
    }
}

pub fn get_files_by_ext<P: AsRef<Path>>(path: &P, ext: &str) -> Vec<PathBuf> {
    let mut paths: Vec<PathBuf> = vec![];

    for dir_entry in std::fs::read_dir(path).unwrap() {
        let entry = dir_entry.unwrap();
        let entry_path = entry.path();
        let file_type = entry.file_type().unwrap();

        if file_type.is_dir() {
            let mut nested_paths = get_files_by_ext(&entry_path, ext);
            paths.append(&mut nested_paths);
        } else if let Some(cmp_ext) = entry_path.extension().and_then(OsStr::to_str) {
            if ext == cmp_ext {
                paths.push(entry_path.to_owned());
            }
        }
    }

    paths
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn it_capitalizes_first_letter_ascii() {
        assert_eq!("Cb", capitalize_first_letter_ascii("cb"));
    }

    #[test]
    fn it_recursively_gets_ly_files() {
        let paths = get_files_by_ext(&PathBuf::from("./test/"), "ly");
        let mut filenames: Vec<Option<&str>> = paths
            .iter()
            .map(|p| p.to_str())
            .collect();
        filenames.sort_by(|a, b| a.unwrap().cmp(b.unwrap()));

        assert_eq!(filenames, vec![
            Some("./test/crazeology.ly"),
            Some("./test/directory/emily.ly"),
            Some("./test/misty.ly"),
            Some("./test/nardis.ly"),
            Some("./test/nows_the_time.ly"),
        ]);
    }
}
