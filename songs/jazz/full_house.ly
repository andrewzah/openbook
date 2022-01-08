title: Full House
composer: John L. (Wes) Montgomery
---
\chordmode {
  \partial 2 s2

  \boxMark "Intro"
  \repeat volta 2 {
    f2.*7:m9
  } \alternative {
    { f2.:m9 }
    { f2.:m9 }
  }

  \boxMark "A"
  \repeat volta 2 {
    f2.:m9 | bes2.:13 | f2.:m9 | bes2.:13 | f2.:m9
    bes2.:13 | f2.:m9 | c2.:7.9+ | f2.:m9 | bes2.:13
    f2.:m9 | bes2.:13 | f2.:m9 | bes2.:13 | f2.:m9
  } \alternative {
    { f2.:m9 }
    { f2.:m9 }
  }

  \boxMark "B"
  bes2.:m7 | ees2.:7 | aes2.:maj7
  des2.:7 | ges2.:maj7 | b2.:maj7 | g2.:m7.5- | c2.:7.9-.11+

  \boxMark "A"
  f2.:m9 | bes2.:13 | f2.:m9 | bes2.:13 | f2.:m9
}
---
\relative c' {
  \key aes \major
  \time 3/4
  \numericTimeSignature

  \partial 2 r8 c'8 r8 ees8

  \repeat volta 2 {
    \voltaStartBar

    f8 c8 ees8 f8 r4
    r8 g4.~ g8 c,8
    ees8 ees8 c8 ees8 r4
    r8 c8 r8 ees8 r8 c8 \endLine

    f8 c8 ees8 f8 r8 g8
    r8 f8 r8 ees8 c8 bes8
    c8 bes8 aes8 g8 r4
  }
  \alternative {
    {
      r8 c8 r8 ees8 r8 c8 
    }
    {
      r2 r8 c,8 \voltaEndBar \endLine
    }
  }

  \repeat volta 2 {
    \voltaStartBar

    f8 aes8 r4 r4
    f8 bes8 r4 r8 f8
    r8 aes8 r8 f8 aes8 f8
    bes8 aes8 bes4 aes8 c,8
    f8 aes8 r4 r4 \endLine

    f8 aes8 r4 r8 f8
    r8 aes8 r8 f8 aes8 r8
    r4 c,2
    f8 aes8 r4 r4
    f8 bes8 r4 r8 f8 \endLine

    r8 aes8 r8 f8 aes8 f8
    bes8 aes8 bes4 aes8 c,8
    f8 aes8 r4 r4
    f8 bes8 r4 r8 c,8
    f8 aes8 g8 ees8~ ees8 c8 \endLine
  } \alternative {
    {
      f2~ f8 c8 \voltaEndBar
    }
    {
      f8 g4 aes8~ aes8 c8
    }
  }

  f2.
  r4 g4 r8 ees8 c2. \endLine

  r4 f4 r8 des8
  bes2.
  r4 g8 gis8 bes8 b8
  c2.
  c,2 r8 c8 \endLine

  f8 aes8 r4 r4
  f8 bes8 r4 r8 f8
  r8 aes8 r8 f8 aes8 f8
  bes8 aes8 bes4 aes8 c,8
  f8 aes8 r4 r4
}
