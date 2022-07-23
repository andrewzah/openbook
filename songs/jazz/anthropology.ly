title: Anthropology
composer: Charlie Parker
meter: Fast
year: 1945
---
\chordmode {
  \repeat volta 2 {
    \boxMark "A"
    bes1:6 | c2:m7 f2:7 | bes2:6 g2:m7 |
    c2:m7 f2:7 | f2:m7 bes2:7 | ees2:7 aes2:7 |
  } \alternative {
    { d2:m7 g2:7 | c2:m7 f2:7 }
    { c2:m7 f2:7 | bes1:6 }
  }

  \boxMark "B"
  d1:7 | d1:7 | g1:7 | g1:7
  c1:7 | c1:7 | f1:7 | f1:7

  \boxMark "A"
  bes1:6 | c2:m7 f2:7 | bes2:6 g2:m7 | c2:m7 f2:7 |
  f2:m7 bes2:7 | ees2:7 aes2:7 | c2:m7 f2:7 | bes1:6
}
---
\relative c'' {
  \key bes \major
  \time 4/4
  \numericTimeSignature

    \repeat volta 2 {
      \voltaStartBar
      bes8 d8 c8 bes8 ees8 cis8 d8 f8 |
      r4 r8 ees8 r8 f8 ees4 |
      r8 d8 ees8 d8 c8 a8 bes8 d8 | \endLine

      c8 g8 bes8 a8 r4 r8 bes8~ |
      bes4 g8 bes8 d8 bes8 r8 e8 |
      r8 ees8 r8 ges,8~ ges8 bes8 c8 d8 \endLine
    } \alternative {
      {
        f4 r8 b,8 r8 aes'8 r8 fis8 |
        g8 ees8 bes8 g8 d'8 f8 r8 f,8 |
        \voltaEndBar
      }
      {
        ees'8 f16 ees16 d8 f8 r8 d8 ees8 g,8 |
        c8 g8 bes8 c8 r4 r8 fis8~ | \bar "||" \endLine
      }
    }

    fis4 g8 gis8 a8 fis8 g8 a8 |
    fis8 d8 r4 r4 r8 e8 |
    f8 e8 d8 b8 e8 d8 b8 a8 |
    r4 r8 a'8 r8 a8 r8 a8~ | \endLine

    a8 g8 e8 d8~ d4. a8 |
    \tuplet 3/2 { c16 d16 c16 } g8 bes8 c8 r4 r8 ees8~ |
    ees4 d8 c8 b8 d8 c8 a8 |
    c4 bes8 a8 r4 r8 f8 \bar "||" \endLine

    bes8 d8 c8 bes8 ees8 cis8 d8 f8 |
    r4 r8 ees8 r8 f8 ees4 |
    r8 d8 ees8 d8 c8 a8 bes8 d8 |
    c8 g8 bes8 a8 r4 r8 bes8~ | \endLine

    bes4 g8 bes8 d8 bes8 r8 e8 |
    r8 ees8 r8 ges,8~ ges8 bes8 c8 d8 |
    ees8 f16 ees16 d8 f8 r8 d8 ees8 g,8 |
    c8 bes8 a8 bes8 r2

    \songEndBar
}
