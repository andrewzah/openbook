title: St. Thomas
composer: Sonny Rollins
meter: Calypso
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions

  \repeat unfold 2 {
    c1:6 | e2:m7 a2:7 | d2:m7 g4:7 c4:6 | c1:6
  }

  e2:m7.5- bes4:7 a4:7 | a1:7 | d2:m7 aes4:7.5+ g4:7 | g1:7 |
  c2:6 c2:7/e | f2:6 f2:dim7 | c2:6/g g4:7 c4:6 | c1:6
}
---
\relative c'' {
  \key c \major
  \time 4/4
  \numericTimeSignature

  \voltaStartBar
  \repeat unfold 2 {
    r4 g8 c8 r8 b8 r8 a8 |
    g4-. a4-. e4-. f4-. |
    g4-. c4-. b4-. c4-- |
    r1 | \endLine
  }

  e2 f4. g8 |
  r1 |
  f2 e4. d8 |
  r1 | \endLine

  e2 d2 |
  c4. a8~ a2 |
  g4-. c4-. b4-. c4-- |
  r1 |

  \voltaEndBar
}
