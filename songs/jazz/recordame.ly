title: Recordame
subsubtitle: 1963
composer: Joe Henderson
meter: Bossa Nova
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \partial 1 s1

  \repeat volta 2 {
    \repeat unfold 4 { a1:m7 }
    \repeat unfold 3 { c1:m7 }
    c2:m7 f2:7 |
    bes1:maj7 | bes2:m7 ees2:7 | aes1:maj7
    aes2:m7 des2:7 | ges1:maj7 | g2:m7 c2:7 |
    f2.:maj7 e4:7.9+ |
  } \alternative {
    { e1:7.9+ }
    { e1:7.9+ }
  }
}
---
\relative c' {
  \key c \major
  \time 4/4
  \numericTimeSignature

  \partial 1 r4 r8 e8 b'8 c8 e,8 c8

  \repeat volta 2 {
    \voltaStartBar

    fis2 r8 g8 a8 b8 |
    b4 a8 b8~ b8 c8 e,8 c8 | \endLine

    fis8 g4 a8~ a8 b4 b8~ |
    b8 a8 b8 a8 d8 ees8 g,8 ees8 |
    a2 r8 bes8 c8 d8 \endLine

    d4 c8 d8~ d8 ees8 g,8 ees8 |
    a8 bes4 c8~ c8 d4 d8-. |
    r4 r8 c8 d4 c8 f,8~ | \endLine

    f1 |
    r8 ees8 f8 c'8~ c4 bes8 g8 |
    ees2~ ees8 d8 ees8 bes'8~ | \endLine

    bes2 aes4-. f8 des8~ |
    des1 |
    r4 a'2 r8 g8 | \endLine

    c,4. c8~ c8 c8 g'4->~
  } \alternative {
    { g4. e8 b'8 c8 e,8 c8 \voltaEndBar }
    { g'1 }
  }
  \songEndBar
}
