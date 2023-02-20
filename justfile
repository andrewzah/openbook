c: build-rust
  rm -f openbook-C.*
  #./templater/target/release/templater --song-names "rhythm-a-ning,satin doll,sonnymoon for two,tea for two,smile,pent up house,all of me,bags' groove,d natural blues,flood in franklin park,buzzy,lester leaps in,mr. p.c.,(meet) the flintstones"
  ./templater/target/release/templater
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

vgm:
  ./templater/target/release/templater --songs-dir ./songs/videogames
  lilypond openbook-Concert.ly
  mv openbook-Concert.pdf openbook-vgm-concert.pdf
