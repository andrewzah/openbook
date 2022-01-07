title: Caravan
composer: Music by Duke Ellington
meter: Latin
---
\chordmode {
  \boxMark "A"
  c1:7 | des1:7 | c1:7 | c1:7
  c1:7 | des1:7 | c1:7 | c1:7
  c1:7 | des1:7 | c1:7 | c1:7
  f1:m6 | f1:m6 | f1:m6 | f1:m6

  \boxMark "B"
  f1:7 | f1:7 | f1:7 | f1:7
  bes1:7 | bes1:7 | bes1:7 | bes1:7
  ees1:7 | ees1:7 | ees1:7 | ees1:7
  aes1:7 | aes1:7 | c1:7 | c1:7
}
---
\relative c'' {
  \key aes \major
  \time 2/2
  \numericTimeSignature

  \voltaStartBar

  c1~
  c1~
  c4 des4 c4 g4
  bes4 c4 e4 g,4 \endLine

  bes1~
  bes1~
  bes4 c4 des4 c4
  des4 c4 b4 g4 \endLine

  bes1~
  bes~
  bes4 c4 b4 bes4
  a4 aes4 ges4 e4 \endLine

  f1~
  f1~
  f1~
  f2. r4 \voltaEndBar \endLine

  \time 4/4

  f'1
  d2 c4. g8~
  g1~
  g4. f8 e4 f4 \endLine

  c'1
  g2 f4. c8~
  c1
  r2 bes'8 c8 des8 e8 \endLine

  ees1
  c2 bes4. f8~
  f1~
  f2 g4 ees4 \endLine

  c'4. aes8~ aes2~
  aes2 bes4 aes4
  g2 g4. g8~
  g2 r2

  \songEndBar
}
