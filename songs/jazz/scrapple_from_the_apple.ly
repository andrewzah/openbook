title: Scrapple From The Apple
subtitle: Based on Honeysuckle Rose and Rhythm Changes
subsubtitle: 1947
composer: Charlie Parker
meter: Medium Bop
---
\chordmode {
  \boxMark "A"
  \repeat volta 2 {
    g1:m7 | c1:7 | g1:m7 | c1:7
    f1:maj7 | bes2:maj7 b2:dim7 | f2:maj7 g2:m7
  } \alternative {
    { a2:m7 d2:7 }
    { f1:6 }
  }

  \boxMark "B"
  a1:7 | a1:7 | d1:7 | d1:7
  g1:7 | g1:7 | c1:7 | c1:7

  \boxMark "A"
  g1:m7 | c1:7 | g1:m7 | c1:7
  f1:maj7 | bes2:maj7 b2:dim7 | f2:maj7 g4:m7 c4:7 | f1:6
}
---
\relative c' {
  \key f \major
  \time 4/4
  \numericTimeSignature

  \repeat volta 2 {
    r8 fis8 g8 bes8 a8 g8 f8 d8 |
    g8 c8 r4 r8 bes4 a8 |
    bes8 f'8 \tuplet 3/2 { d8 bes8 g8 } a8 d,8 g8 des8 |
    r4 r8 a'8~ a8 bes4 a8 | \endLine

    c8 a8 \tuplet 3/2 { g8 f8 g8~ } g4 r8 f'8 |
    d4 r8 e8~ e8 d8 \tuplet 3/2 { a8 bes8 b8 } |
    c4. a8 bes8 a8 gis8 a8
  } \alternative {
    { c8 a8 bes8 c8 r2 | \voltaEndBar \endLine }
    { f,8 c8 e8 f8 r2 | }
  }

  \new ImproVoice {
    c4^"Solo" c4 c4 c4 |
    \repeat unfold 12 { c4 } | \endLine
    \repeat unfold 16 { c4 } | \endLine
  }

  r8 fis8 g8 bes8 a8 g8 f8 d8 |
  g8 c8 r4 r8 bes4 a8 |
  bes8 f'8 \tuplet 3/2 { d8 bes8 g8 } a8 d,8 g8 des8 |
  r4 r8 a'8~ a8 bes4 a8 | \endLine

  c8 a8 \tuplet 3/2 { g8 f8 g8~ } g4 r8 f'8 |
  d4 r8 e8~ e8 d8 \tuplet 3/2 { a8 bes8 b8 } |
  c4. a8 bes8 a8 gis8 a8 |
  f8 c8 e8 f8 r2 |

  \songEndBar
}
