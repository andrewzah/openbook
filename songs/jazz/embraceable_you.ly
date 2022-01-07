title: Embraceable You
subsubtitle: From Girl Crazy (1930)
composer: George Gershwin
poet: Ira Gershwin
meter: Ballad
---
\chordmode {
  %\boxMark "A"
  g1:6 | bes1:dim7 | a1:m7 | d1:7
  a2:m7 a2:m7/g | f2:7 d2:7 | g1:6 | fis2:dim7 a2:7

  %\boxMark "B"
  e2:m7 e2:maj7 | e2:m6 fis2:7.5- | b2:m7 bes2:aug | a2:sus a2:7
  d2:maj7 dis2:dim | e2:m7 a2:7 | a1:m7 | d1:7

  g1:6 | bes1:dim | a2:m7 d2:7 | a2:m7 d2:7
  a2:m7 a2:m7/g | f1:7 | g1 | d2:m7 g2:7

  c1:maj7 | fis2:7.5- b2:7.9- | e2:m e2:m7+ | e2:m a2:7
  g1:maj7 | a2:m7.9- d2:7.9- | g1:6 | \LPC a2:m7 \RPC d2:7 
}
---
\relative c'' {
  \key g \major
  \time 4/4
  \numericTimeSignature

  r4 e,4 fis4 g4
  r4 e4 fis4 g4
  a4. d,8 d4 d4~
  d1 \endLine

  r4 a'4 b4 c4
  r4 a4 b4 c4
  d4. g,8 g4 g4~
  g1 \endLine

  b4 g4 a4 g4
  b4 g4 a4 g4
  b4. fis8 fis4 fis4~
  fis1 \endLine

  a4 fis4 g4 fis4
  g4 a4 b4 cis4
  d4. d,8 d4 d4~
  d1 \endLine

  r4 e4 fis4 g4
  r4 e4 fis4 g4
  a4. d,8 d4 d4~
  d1 \endLine

  r4 a'4 b4 c4
  r4 a4 b4 c4
  d4. g,8 g4 g4~
  g1 \endLine

  r4 d'4 c4 b4
  c4 b4 a4 b4
  r4 g8 g8 g8 g8 g8 g8
  g8 g8 d'2. \endLine

  r4 b4 c4 d4 ees4.
  g,8 fis2
  g1
  r1

  \songEndBar
}
