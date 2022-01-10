build: build-rust
  rm -f book.pdf book.ly
  ./templater/target/release/templater
  lilypond book.ly

build-rust:
  #!/bin/sh
  cd ./templater/
  just build-release

v:
  mupdf book.pdf
