c: build-rust qr
  rm -f openbook-C.*
  ./templater/target/release/templater --lyrics
  lilypond openbook-Concert.ly

bb: build-rust qr
  rm -f openbook-Bb.*
  ./templater/target/release/templater --transpose bb --lyrics
  lilypond openbook-Bb.ly

eb: build-rust qr
  rm -f openbook-Eb.*
  ./templater/target/release/templater --transpose eb --lyrics
  lilypond openbook-Eb.ly

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
