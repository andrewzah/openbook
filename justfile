build:
  ./templater/target/release/templater
  lilypond book.ly

v:
  mupdf book.pdf
