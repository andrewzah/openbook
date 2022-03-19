use std::fmt::{self, Formatter};

#[derive(Debug)]
pub enum TemplaterError {
    Templater(TemplaterErrorKind),

    IO(std::io::Error),
    PicoArgs(pico_args::Error),
}

impl TemplaterError {
    pub fn from_str(msg: &str) -> TemplaterError {
        TemplaterError::Templater(TemplaterErrorKind::General(msg.into()))
    }
}

impl fmt::Display for TemplaterError { 
    fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result {
        match self {
            TemplaterError::Templater(e) => write!(f, "[Error]: {}", e),
            TemplaterError::IO(e) => write!(f, "[Error]: {}", e),
            TemplaterError::PicoArgs(e) => write!(f, "[Error]: {}", e),
        }
    }
}

#[derive(Debug)]
pub enum TemplaterErrorKind {
    General(String),
}

impl fmt::Display for TemplaterErrorKind { 
    fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result {
        match self {
            TemplaterErrorKind::General(s) => write!(f, "{}", s),
        }
    }
}

impl From<String> for TemplaterError {
    fn from(msg: String) -> TemplaterError {
        TemplaterError::Templater(TemplaterErrorKind::General(msg))
    }
}

impl From<std::io::Error> for TemplaterError {
    fn from(err: std::io::Error) -> TemplaterError {
        TemplaterError::IO(err)
    }
}

impl From<pico_args::Error> for TemplaterError {
    fn from(err: pico_args::Error) -> TemplaterError {
        TemplaterError::PicoArgs(err)
    }
}
