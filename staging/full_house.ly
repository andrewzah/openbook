title: Full House
composer: Music by John L. (Wes) Montgomery
---
\chordmode {
  \partial 2 s2

  \boxMark "Intro"
  g1*10:m9
}
---
\relative c' {
  \key bes \major
  \time 3/4
  \numericTimeSignature

  \partial 2 r8 bes'8 r8 f'8

  \repeat volta 2 {
    \voltaStartBar

    g8 d8 f8 g8 r4
    r8 a4.~ a8 d,8
    f8 f8 d8 f8 r4
    r8 d8 r8 f8 r8 d8 \endLine

    g8 d8 f8 g8 r8 a8
    r8 g8 r8 f8 d8 c8
    d8 c8 bes8 g8 r4
    %\songEndBar
  }
  \alternative {
    {
      r8 d'8 r8 f8 r8 d8
      \voltaEndBar
    }
    {
      r4 r4 r8 d8
    }
  }

  \boxMark "A"
  \repeat volta 2 {
    \voltaStartBar
  }
  \alternative {
  }
}
