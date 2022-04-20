title: Pent Up House
composer: Sonny Rollins
meter: Medium Up Swing
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions

  \partial 1 s1

  \repeat volta 2 {
    a2:m7/d d2:7.5+ | a2:m7/d d2:7.5+ | g2:maj7 aes4:7 g4:maj7
    r1 | a2:m7/d d2:7.5+ | a2:m7/d d2:7.5+ | g2:maj7 aes4:7 g4:maj7
    r1 | d2:m7/g g2:7.5+ | d2:m7/g g2:7.5+ | c1:m7
    f1:7 | a2:m7/d d2:7.5+ | a2:m7/d d2:7.5+
  } \alternative {
    {
      g2:maj7 aes4:7 g4:maj7 |
      r1
    }
    {
      g1:maj7
      s1
    }
  }

  a1:m7 | d1:7 | g1:maj7 | g1:maj7 |
  a1:m7 | d1:7 | g1:maj7 | g1:maj7 |
  d1:m7 | g1:7 | c1:m7 | f1:7 |
  a1:m7 | d1:7 | g1:maj7 | g1:maj7

  g1:maj7
}
---
\relative c' {
  \key g \major
  \time 4/4
  \numericTimeSignature

  \boxMark "Head"
  \partial 1 r8 d8 e8 fis8 g8 a8 b8 c8

  \repeat volta 2 {
    \voltaStartBar

    d8 b4-. d8 bes4-. d8 b8 |
    r8 d8 bes4-. d8 bes4-. d8 |
    a2 bes4. a8 | \endLine

    r8 d,8 e8 fis8 g8 a8 b8 c8 |
    d8 b4-. d8 bes4-. d8 b8 |
    r8 d8 bes4-. d8 bes4-. d8 |
    a2 bes4. a8 | \endLine

    r8 d,8 a'8 fis8 g8 a8 b8 d8 |
    g8 e4-. g8 ees4-. g8 e8 |
    r8 g8 ees4-. g8 ees4-. g8 |
    d1 | \endLine

    fis8 d4 fis8 des2 |
    d8 b4-. d8 bes4-. d8 b8 |
    r8 d8 bes4-. d8 bes4-. d8 |
  } \alternative {
    {
      a2. r4 | \endLine
      r8 d,8 e8 fis8 g8 a8 b8 c8 |
      \voltaEndBar
    }
    {
      a1 |
      \mark \markup{\musicglyph #"scripts.coda"}
      r1^\markup{\caps{"(to solos)"}}
      \endLine
    }
  }

  \boxMark "Solos"
  \voltaStartBar
  \new ImproVoice {
    \repeat unfold 5 { c4 c4 c4 c4 } \endLine
    \repeat unfold 6 { c4 c4 c4 c4 } \endLine
    \repeat unfold 5 { c4 c4 c4 c4 } \endLine
  }
  \voltaEndBar

  \endLine

  \once \override Score.RehearsalMark.font-size = #5
  \mark \markup { \musicglyph #"scripts.coda" }
  a'4. a8 r2
  \songEndBar

  s2 s2^\markup{\raise #4 \caps{"After solos, D.C. Al Coda (Take Repeat)"}} 
  s1
}
