title: Buzzy
composer: Charlie Parker
meter: Up
type: blues
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions

  bes1:7 | ees1:7 | bes1:7 | bes1:7 |
  ees1:7 | ees1:7 | bes1:7 | g1:7 |
  c1:m7 | f1:7 | bes1:7 | f1:7 |
}
---
\relative c'' {
  \key bes \major
  \time 4/4
  \numericTimeSignature

  d8 c8 bes8 a8 bes8 a4 c8~
  | c8 bes8 r4 r4 r8 f8
  | d'8 c8 bes8 a8 bes8 f8 g8 aes8
  | r1 \endLine

  des8 c8 bes8 a8 bes8 a4 c8~
  | c8 bes8 r4 r4 r8 f8
  | d'8 c8 bes8 a8 bes8 f8 g8 aes8
  | r1 \endLine

  d8 c8 bes8 a8 bes8 a4 c8~
  | c8 bes8 r4 r4 r8 f8
  | d'8 c8 bes8 a8 bes8 f8 g8 aes8
  | r1

  \songEndBar
}
