build:
  rm -f book.pdf book.ly
  ./templater/target/release/templater
  lilypond book.ly

v:
  mupdf book.pdf
