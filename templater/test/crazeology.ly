title: Crazeology
composer: 'Little' Benny Harris
style: Bop
time: 4/4
bpm: 240
---
\chordmode {
  \boxMark "A1"
  bes2:6 g2:m7 | c2:m7 f2:7 | d2:m7 g2:m7 | c2:m7 f2:7
  aes2:m7 des2:7 | ges1:maj7 | f1:7 | bes1:6

  \boxMark "B"
  d1:7 | d1:7 | d1:m7 | g1:7
  c1:7 | c1:7 | c1:m7 | f1:7

  \boxMark "A2"
  bes2:6 g2:m7 | c2:m7 f2:7 | d2:m7 g2:m7 | c2:m7 f2:7
  aes2:m7 des2:7 | ges1:maj7 | f1:7 | bes1:6
}
---
\relative c'' {
  \key bes \major
  \time 4/4
  \numericTimeSignature

  \repeat volta 1 {
    \voltaStartBar

    d8 c8 bes8 a8 c8 bes8 r4
    a8 g8 f8 ees8 d8 f8 a8 c8~

    c4 bes8 d,8 a'8 g8 r8 f8~
    f4 ees8 g,8 d'8 c8 r4 \endLine

    r8 des'8 ces8 ees,8 bes'8 aes8 r8 aes8~
    aes4 ges8 e8 f8 ees8 r8 des8
    d8 f8 a8 b8~4 a8 bes8
    r1 \voltaEndBar \endLine
  }

  r4 \tuplet 3/2 { fis8 g8 gis8 } a8 g8 f8 e8
  d8 fis8 a8 d8 r2
  r8 f,8 a8 d8 des8 a8 f8 d8
  c'8 a8 b8 g'8 r2 \endLine

  r4 \tuplet 3/2 { e,8 f8 fis8 } g8 f8 e8 d8
  c8 e8 g8 c8 r2
  r8 ees,8 g8 c8 b8 g8 ees8 c8
  bes'8 g8 a8 f'8 r2 \endLine

  d8 c8 bes8 a8 c8 bes8 r4
  a8 g8 f8 ees8 d8 f8 a8 c8~

  c4 bes8 d,8 a'8 g8 r8 f8~
  f4 ees8 g,8 d'8 c8 r4 \endLine

  r8 des'8 ces8 ees,8 bes'8 aes8 r8 aes8~
  aes4 ges8 e8 f8 ees8 r8 des8
  d8 f8 a8 b8~4 a8 bes8
  r1

  \songEndBar
}
