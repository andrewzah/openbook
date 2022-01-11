title: Ornithology
subtitle: Based on How High The Moon
subsubtitle: 1946
composer: Charlie Parker & Benny Harris
meter: Medium Up Swing
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \partial 8 s8

  \repeat volta 2 {
    g1:maj7 | g1:maj7 | g2:m7 c2:7 | g2:m7 c2:7 |
    f1:maj7 | f1:maj7 | f1:m7 | bes:7 |
    ees:maj7 | aes2:m7.5- d2:7
  } \alternative {
    {
      g1:m7 | d1:7 |
      b1:m7 | e1:7 | a1:m7 | d1:7 |
    }
    {
      g1:m7 | d1:7 | b2:m7 bes2:m7 | a2:m7 aes2:m7 |
      g1 | \LPC a2:m7 \RPC d2:7
    }
  }

}
---
\relative c' {
  \key g \major
  \time 4/4
  \numericTimeSignature

  \partial 8 d8

  \repeat volta 2 {
    g8 a8 b8 c8 d8 b8 c8 d8 |
    b8 g8 r4 r4 r8 d8 |
    g8 a8 bes8 c8 d8 e4 f8~ |
    f8 g,8 a8 bes8~ bes4. d8 | \endLine

    c8 a4 f8 bes8 gis8 a8 f8 |
    r2 r4 r8 aes8~ |
    aes4 g8 f8 e8 g8 f8 c8 |
    f4 ees8 d8 r4 r8 des'8~ | \endLine

    des4 c8 bes8 a8 c8 bes8 g8 |
    a4 g8 fis8 r4 r8 d8 |
  } \alternative {
    {
      a'8 g8 d8 bes8 f'4 ees8 d8 |
      r2 r8 b'8 c8 d8~ | \endLine

      d8 r8 r8 b8~ b8 a4 g8 |
      gis8 b8 d8 f8~ f4 e8 c8~
      c8 r8 r8 a8~ a8 g4 f8 |
      fis8 a8 c8 ees8~ ees4 d8 d,8 | \voltaEndBar \endLine
    }
    {
      a'8 g8 d8 b8 f'4 ees8 d8 |
      r2 r4 r8 bes'8 |
      b8 d8 fis8 d8 f8 des8 bes8 aes8 | 
      a8 c8 e8 c8 ees8 ces8 aes8 ges8 | \endLine
      g8 r8 r4 r2 |
      r1 | \songEndBar s1 s1 
    }
  }

}
