c: build-rust
  rm -f openbook-c.*
  ./templater/target/release/templater
  lilypond openbook-c.ly

bb:
  rm -f openbook-bb.*
  ./templater/target/release/templater --transpose bb
  lilypond openbook-bb.ly

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
  mupdf openbook-c.pdf
