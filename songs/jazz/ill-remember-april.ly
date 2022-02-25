title: I'll Remember April
subsubtitle: Debuted in Ride 'Em Cowboy (1942)
composer: Gene de Paul
poet: Patricia Johnston and Don Raye
meter: Swing
year: 1941
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions

  %\boxMark "Intro"

  \boxMark "A1"
  g1:maj7 | g1:6 | g1:maj7 | g1:6 |
  g1:m7 | g1:m6 | g1:m7 | g1:m6 |
  a1:m7.5- | d1:7 | b1:m7.5- | e1:7 |
  a1:m7 | d1:7 | g1:maj7 | g1:7.9- |

  \boxMark "B"
  c1:m7 | f1:7 | bes1:maj7 | g1:m7 |
  c1:m7 | f1:7 | bes1:maj7 | bes1:6 |
  a1:m7 | d1:7 | g1:maj7 | g1:maj6 |
  fis1:m7 | b1:7 | e1:maj7 | a2:m7 d2:7 |

  \boxMark "A2"
  g1:maj7 | g1:6 | g1:maj7 | g1:6 |
  g1:m7 | g1:m6 | g1:m7 | g1:m6 |
  a1:m7.5- | d1:7 | b1:m7.5- | e1:7 |
  a1:m7 | d1:7 | g1:6 | \LPC a2:m7 \RPC d2:7
}
---
\relative c'' {
  \key g \major
  \time 4/4
  \numericTimeSignature

  r4 b4 c4 d4 |
  c4 b4 a4 g4 |
  a2. g4 |
  fis4 e2. | 
  r4 a4 bes4 c4 | \endLine

  bes4 a4 g4 f4 |
  g8 a8 g2.~ |
  g2 r8 g4. |
  a2. a4 
  a4 a4 b4 c4 | \endLine

  d4. d8~ d2~ |
  d2 e4. d8 | 
  b4 c4 d4 c4~ |
  c2 b4 ais4 |
  b1~ |
  b2 r8 b4. | \partBar \endLine

  g4 g4 g2~ |
  g4 a4 bes4 c4 |
  d2. c4 |
  bes4 g2 f4 |
  g4 g4 g2~ |
  g4 a4 bes4 c4 |  \endLine

  d2 d4 d4~ |
  d4 d4 \tuplet 3/2 { d4 d4 d4 } |
  d2. d4 |
  e4 c4 d4. b8 |
  a4 b2.~ |
  b4 b4 d4 c4 | \endLine

  b4 b2.~ |
  b2 \tuplet 3/2 { b4 a4 gis4 } |
  b1~ |
  b1 | \partBar \endLine

  r4 b4 c4 d4 |
  c4 b4 a4 g4 |
  a2. g4 |
  fis4 e2. | \endLine

  r4 a4 bes4 c4
  bes2 \tuplet 3/2 { a4 g4 fis4 } |
  g8 a8 g2.~ |
  g2 r8 g4. | \endLine

  a4. a8 a2~ |
  a4 a4 \tuplet 3/2 { a4 b4 c4 } |
  d2 d2~ |
  d2 e4. d8 | \endLine

  b4 c4 d4 c4~ |
  c2 b4 b4 |
  g1~ |
  g2 r2 |

  \songEndBar
}
