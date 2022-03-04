c: build-rust qr
  rm -f openbook-c.*
  ./templater/target/release/templater
  lilypond openbook-c.ly

bb: build-rust qr
  rm -f openbook-bb.*
  ./templater/target/release/templater --transpose bb
  lilypond openbook-bb.ly

build-rust:
  #!/bin/sh
  cd ./templater/
  just build-release

buildall: build-rust qr
  rm -f openbook-c.* openbook-bb.* openbook-eb.* openbook-bass.*

  ./templater/target/release/templater
  ./templater/target/release/templater --transpose bb
  ./templater/target/release/templater --transpose eb

  lilypond openbook-c.ly
  lilypond openbook-bb.ly
  lilypond openbook-eb.ly

qr:
  bash ./generate-qr-codes.sh

v:
  mupdf openbook-c.pdf
