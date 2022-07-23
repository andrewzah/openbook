title: Au Privave
composer: Charlie Parker
meter: Fast
year: 1951
---
\chordmode {
  \repeat volta 2 {
    f1:7 | g2:m7 c2:7 | f2:7 g2:m7 
    c2:m7 f2:7.5+ | bes1:7 | bes2:7 ees2:7
    f2:7 g2:m7 | a2:m7 d2:7 | g1:m7
    g2:m7 c2:7 | f2 d2:7.9-
  } \alternative {
    { g2:m7 c2:7 }
    { g2:m7 c2:7 }
  }

  g2:m7 c2:7 | f1:maj7
}
---
\relative c' {
  \key f \major
  \time 4/4
  \numericTimeSignature
  \tempo 4 = 220

  \repeat volta 2 {
    \voltaStartBar

    f8 e8 f8 c8 r4 a'8 gis8 |
    a8 c,8 r8 e8 r8 g8 f8 c8 |
    g'8 f8 a8 bes8 a8 f8 g8 ees8 | \endLine

    r8 d'8 r4 r8 des4 f,8 |
    b4. f'8 r8 b,4 bes8~ |
    bes2 aes8 f8 g8 f8 | \endLine

    c'4 r8 a8 bes4 r8 g8 |
    c4 c4~ c8 a8 bes8 c8 |
    a8 g8 f8 e8 f4 r8 c'8 | \endLine

    bes4 r8 f'8~ f8 c8 e8 f8 |
    r4 r8 c8 c4. a8 |
  } \alternative {
    { 
      \mark \markup { \musicglyph #"scripts.coda" }
      bes8 a8 f8 d8 a'8 a4. | \voltaEndBar
    }
    { bes8 a8 f8 d8 a'8 g4. | \endLine }
  }

  \once \override Score.RehearsalMark.font-size = #5
  \codaMark
  bes8 a8 f8 d8 a'8 a4.~ |
  a1^\fermata | \songEndBar
  s1^\markup{ \caps { After Solos, D.C. Al Coda (Take Repeat)} } |
  s1
}
