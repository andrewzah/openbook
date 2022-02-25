title: How Deep Is The Ocean (How High Is The Sky)
composer: Irving Berlin
meter: Swing
year: 1932
---
\chordmode {
  \repeat volta 2 {
    c1:m | c1:m7+ | c1:m7 | a2:m7.5- d2:7.9- |
    g1:m7 | a2:m7.5- d2:7.9- |
    g2:m7 c2:7.9- |
    f2:m7 bes2:7
  } \alternative {
    {
      ees1:6 | bes2:m7 ees2:7 | aes1:7 | aes1:7 |
      c1:m7.5- | f1:7 | bes1:7 | d2:m7.5- g2:7.9-
    }
    {
      ees1:6 | g2:m7.5- c2:7.9- | f1:m7 | des1:9 |
      ees1:maj7 | f1:7 | f2:m7 bes2:7 | ees2:6 g2:7.5+
    }
  }
}
---
\relative c' {
  \key ees \major
  \time 4/4
  \numericTimeSignature

  \repeat volta 2 {
    r4 ees4 \tuplet 3/2 { ees d4 ees4 } |
    g4 g2. |
    r4 ees4 \tuplet 3/2 { ees4 d4 ees4 } |
    g2 r2 | \endLine

    r4 bes4 \tuplet 3/2 { bes4 a4 bes4 } |
    c4 c2. |
    r4 bes4 \tuplet 3/2 { bes4 a4 bes4 } |
    c2 r2 | \endLine
  } \alternative {
    {
      r4 ees4 ees4 ees4 |
      ees8 bes4 bes8~ bes4 bes4 |
      bes4 ges4 ges4 ges4~ |
      ges1 | \endLine

      ges4 ees4 ees4 ees4~ |
      ees4 d2 ees4 |
      ges4 f4 f4 f4~ |
      f2 r2 | \endLine
      \voltaEndBar
    }
    {
      r4 ees'4 ees4 des4 |
      des4 c4 c4 bes4 |
      r4 aes4 \tuplet 3/2 { aes4 g4 f4 } |
      aes1 | \endLine

      r4 g4 \tuplet 3/2 { g4 f4 ees4 } |
      g4 g2. |
      r4 f4 \tuplet 3/2 { f4 ees4 d4 } |
      ees2 r2

      \songEndBar
    }
  }

  \songEndBar
}
---
\lyricmode {
  How much do I love you?
  I'll tell you no lie,
  how deep is the o -- cean,
  how high is the sky?

  How man -- y times a day __
  do I think of you? __
  How man -- y ros -- es are sprin -- kled with dew? __

  And if I ev -- er lost you,
  how much would I cry?
  How deep is the o -- cean,
  how high is the sky?
}
---
\lyricmode {
  How far would I trav -- el
  to be where you are?
  How far is the jour -- ney
  from here to a star?
}
