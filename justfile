build: build-rust
  rm -f book.pdf book.ly
  ./templater/target/release/templater
  lilypond openbook-c.ly

build-rust:
  #!/bin/sh
  cd ./templater/
  just build-release

buildall: build-rust
  rm -f openbook-c.* openbook-bb.* openbook-eb.* openbook-bass.*

  ./templater/target/release/templater
  ./templater/target/release/templater --transpose bb
  ./templater/target/release/templater --transpose eb

  lilypond openbook-c.ly
  lilypond openbook-bb.ly
  lilypond openbook-eb.ly

v:
  mupdf book.pdf
