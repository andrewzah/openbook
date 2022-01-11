title: Old Devil Moon
composer: Burton Lane
poet: E.Y. Harburg
meter: Medium
---
\chordmode {
  \repeat volta 2 {
    f1:6 | c1:m7/f | f1:6 | c1:m7/f
    f1:maj7 | c1:m7/f | f1:maj7 | c2:m7 f2:7

    bes1:maj7 | bes1:maj7 | bes1:m7 | ees1:7
    aes2:m7 des2:7 | ges2:6 c2:7 | f1:6 | c1:m7/f
  } \alternative {
    {
      f1:6 | c1:m7/f | d1:maj7 | d1:maj7
      d1:m7 | g1:7 | g1:m7 | c1:7
    }
    {
      f1:6 | c1:m7/f | f1:6 | c1:m7/f
      f2:maj7 c2:m7/f | f2:maj7 c2:m7/f | f1:maj7 | \LPC g2:m7 \RPC c2:7
    }
  }
}
---
\relative c' {
  \key f \major
  \time 4/4
  \numericTimeSignature

  \repeat volta 2 {
    \voltaStartBar

    f1
    ees8 ees ees8 ees8 ees4 g4
    f1
    g8 g g8 g8 g4 bes4 \endLine

    a1
    bes8 bes8 bes8 bes8 bes4 d4
    c1~
    c2 c4 c4 \endLine

    c2 bes8 a4 f8~
    f2 a4 bes4
    c2 bes8 a4 f8~
    f2 a4 bes4 \endLine

    des2 ces8 bes4 ges8~
    ges2 a8 g4 f8~
    f1
    r2 ees8 c8 ees8 f8~ \endLine
  } \alternative {
    {
      f2 ees8 c8 ees8 g8~
      g2 \tuplet 3/2 { ees4 c4 ees4 }
      a2 a2~
      a2 f8 d8 f8 a8~ \endLine

      a2 f8 d8 f8 b8~
      b2 \tuplet 3/2 { f4 d4 f4 }
      c'2 c2~
      c8 d4 aes8 g8 f8 d8 c8 \voltaEndBar \endLine
    }
    {
      f2 f2~
      f2 ees8 c8 ees4
      f1~
      f2 \tuplet 3/2 { ees'4 ees4 ees4 } \endLine

      c2 \tuplet 3/2 { bes4 c4 bes4 }
      a2 \tuplet 3/2 { f4 ees4 g4 }
      c1
      r1

      \songEndBar
    }
  }

}
