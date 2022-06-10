title: April Joy
composer: Pat Metheny
meter: Medium - Even 8ths
---
\chordmode {
  \set additionalPitchPrefix = #"add"
  \partial 2 s2

  \boxMark "A"
  bes1:maj7 | bes1:maj7 | d1:9sus4 | d1:9sus4
  bes1:maj7 | bes1:maj7 | bes1:m7+.5- | bes1:m7+.5-
  bes2:maj7 a2:m7 | bes2:maj7 a2:m7 | d1:5.9 | d1:5.9

  \boxMark "B"
  d1:m7 | bes1:maj7 | a1:m7 | a1:m7
  bes1:maj7 | bes1:5.9/c | f1:maj7 | bes1:maj7
  bes2:maj7 a2:m7 | bes2:maj7 bes2:5.9/c | f1:maj7 | bes1:maj7
  e1:m7.5- | a1:7sus4 | d1:7sus4 | d1:7sus4
}
---
\relative c'' {
  \key c \major
  \time 4/4
  \numericTimeSignature

  \partial 2
  r16 g16 c16 d16 f16 e16 d16 c16

  \voltaStartBar

  d4. g8~ g2~
  g2 r16 g,16 c16 d16 f16 e16 d16 c16
  \tuplet 3/2 {d8 e8 a8} d2.~
  d2.~ d8 d8 \endLine

  \tuplet 3/2 {e4 c4 a4}~ a2~
  a2.~ a8 g16 c16
  a1~
  a1 \endLine

  d4 d8 f8 e8 c8 a8 d8~
  d1~
  d1
  r2 r8 d,8 f8 g8 \endLine

  a4 r4 r8 d,8 g8 e8~
  e2~ e8 d8 c8 a8~
  a8 c8 c8 a8 d8 a8 c4~
  c2.~ c8 d8~ \endLine

  d8 f8 f8 d8 g8 d8 f4~
  f2~ f8 g8 f8 e8~
  e8 d8 e8 c8~ c2~
  c1 \endLine

  a'8 g8 f8 g8~ g8 c4 d8~
  d8 e8 f8 c8~ c2
  r1
  d8 e8 f8 c8~ c4. bes8 \endLine

  a2.~ a8 bes8
  a4. bes8 a4. bes8
  a4 d,8 d'8~ d2~
  d2

  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize r16
  g,,16 c16 d16 f16 e16 d16
  \endParenthesis \parenthesize c16

  \voltaEndBar
}
