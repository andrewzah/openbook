title: How High The Moon
subsubtitle: From Two for the Show (1940)
composer: Morgan Lewis
poet: Nancy Hamilton
meter: Medium Swing
---
\chordmode {
  \partial 2. s2.

  \boxMark "A"
  g1:maj7 | g1:maj7 | g1:m7 | c1:7
  f1:maj7 | f1:maj7 | f1:m7 | bes:7

  \boxMark "B"
  ees:maj7 | aes2:m7.5- d2:7 | g1:m7 | aes2:m7.5- d2:7
  g1:maj7 | a2:m7 d2:7 | b2:m7 bes2:7 | a2:m7 d2:7 

  \boxMark "A"
  g1:maj7 | g1:maj7 | g1:m7 | c1:7
  f1:maj7 | f1:maj7 | f1:m7 | bes:7

  \boxMark "C"
  ees:maj7 | aes2:m7.5- d2:7 | g1:maj7 | a2:m7 d2:7
  b2:m7 bes2:7 | a2:m7 d2:7 | g1:6 | \LPC a2:m7 \RPC d2:7
}
---
\relative c' {
  \key g \major
  \time 4/4
  \numericTimeSignature

  \partial 2. d4 g4 a4

  \voltaStartBar

  g2 b2~
  b4 d,4 g4 a4 bes1~
  bes4 c,4 f4 g4 \endLine

  g2 a2~ a4
  c,4 f4 g4
  aes1~
  aes4 d,4 ees4 f4 \endLine

  g4 g4 g4 g4
  g4 g8 a8~ a8 g8 a4
  bes1~
  bes4. a8~ a8 g8 a4 \endLine

  b1~
  b4 a4 b4 c4
  d4 d4 d4 d4
  d8 r8 d,4 g4 a4 \endLine

  a2 b2~
  b4 d,4 g4 a4
  bes1~
  bes4 c,4 f4 g4 \endLine

  g2 a2~
  a4 c,4 f4 g4
  aes1~
  aes4 d,4 ees4 f4 \endLine

  g4 g4 g4 g4
  g4 g8 a8~ a8 g8 a4
  b1~
  b4 a4 b4 c4 \endLine

  d4 d4 d4 d4
  d4 d,4 g4 a4
  g1~
  g4 

  \override ParenthesesItem.font-size = #5
  \startParenthesis \parenthesize d4
  g4
  \endParenthesis \parenthesize a4

  \voltaEndBar
}
