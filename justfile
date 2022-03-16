c: build-rust qr
  rm -f openbook-C.*
  ./templater/target/release/templater
  lilypond openbook-Concert.ly

bb: build-rust qr
  rm -f openbook-bb.*
  ./templater/target/release/templater --transpose bb
  lilypond openbook-bb.ly

build-rust:
  #!/bin/sh
  cd ./templater/
  just build-release

buildall: build-rust qr
  rm -f openbook-C.* openbook-bb.* openbook-eb.* openbook-bass.*

  ./templater/target/release/templater
  ./templater/target/release/templater --transpose bb
  ./templater/target/release/templater --transpose eb

  lilypond openbook-Concert.ly &
  lilypond openbook-Bb.ly &
  lilypond openbook-Eb.ly

qr:
  bash ./generate-qr-codes.sh

v:
  mupdf openbook-Concert.pdf
