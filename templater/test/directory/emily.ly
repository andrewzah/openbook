title: Emily
composer: Johnny Mandel
poet: Johnny Mercer
meter: Waltz
time: 3/4
---
\chordmode {
  c2.:maj7 | a2.:m7 | d2.:m7 | g2.:7
  c2. | g4.:m7/c c4.:7.9- | f2.:maj7 | f2.:m6
  a2./cis | fis2.:m7 | b2.:m7 | b4.:m7/e e4.:7.9-
  a2.:m7 | d2.:9 | d2.:m7/g | g2.:7.5+.9-
  c2.:maj7 | a2.:m7 | d2.:m7 | g2.:7
  c2.:maj9 | c2.:7 | f2.:maj7 | b4.:m7/e e4.:7.9-
  a2.:m | b4.:7.5+.9- b4.:7.9- | e2.:m7 | a4.:9 cis4.:dim7
  d2.:m7 | g2.:7 | e2.:m7 | a2.:9
  fis2.:m7.5- | f2.:m7 | e2.:m7 | a2.:9
  d2.:m7 | g2.:9 | c2.:6 | \LPC d4.:m7 \RPC g4.:7
}
---
\relative c'' {
  \key c \major
  \time 3/4
  \numericTimeSignature

  e,8 b'8 g2
  e8 b'8 g2
  e8 b'8 g2~
  g4 e4. d8 \endLine

  c4. d8 e4
  a2 g4
  c,2.~
  c2 d4 \endLine

  e8 a,8 a2
  e'8 a,8 a2
  e'8 a,8 a2~
  a4 a4 b4 \endLine

  c4 d4 e4
  d'4 c4 a4
  d,2.
  dis2. \endLine

  e8 b'8 g2
  e8 b'8 g2
  e8 b'8 g2~
  g4 g4 f4 \endLine

  e4. f8 g4
  e'4. d8 c4
  a2.
  b2. \endLine

  c4 b4 a4
  g2 fis4
  g8 a8 b2~
  b4 a4 g4 \endLine

  f8 g8 a2~
  a4 g4. f8
  e8 f8 g2~
  g4 a4 b4 \endLine

  c4 b4 a4
  g2 f4
  e8 b'8 g2~
  g4 g4 f4 \endLine

  e8 b'8 g2
  e8 b'8 g2
  c2.~
  c2 r4

  \songEndBar
}
