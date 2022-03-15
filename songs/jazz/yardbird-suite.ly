title: Yardbird Suite
composer: Charlie Parker
subsubtitle: 1946
meter: Medium Up
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 2 {
    c1:6 | f2:m7 bes2:7 | c2:maj7 bes2:7 | a1:7 |
    d1:7
  } \alternative {
    {
      g1:7 | e2:m7 a2:7 | d2:m7 g2:7 |
    }
    {
      g1:7 | c1:6 | c2:6 b2:7.9- |
      e1:m7 | fis2:m7.5- b2:7.9- | e1:m7 | a1:7 |
      d1:m7 | e2:m7 a2:7 | d1:7 | d2:m7 g2:7 |
      c1:6 | f2:m7 bes2:7 | c2:maj7 bes2:7 | a1:7 |
      d1:7 | d2:m7 g2:7 | c1:6 | \LPC d2:m7 \RPC g2:7 |
      d2:m7 g2:7 | c1:maj7 | c1:maj7
    }
  }
}
---
\key c \major
\time 4/4
\numericTimeSignature

\voltaStartBar
\repeat volta 2 {
  r8 c''4. g'4 a'4 |
  bes'4. aes'8~ aes'8 ees'8 f'8 g'8~ |
  g'2 g'4. e'8~ |
  e'4. e'8 f'8 e'8 f'8 g'8 | \endLine

  e'8 c'8 r8 c'8~ c'2 |
} \alternative {
  {
    r4 r8 d'8 r8 e'8 f'8 g'8~ |
    g'4. a'8~ a'8 e'8 f'8 g'8~ |
    g'2. r4 | \voltaEndBar \endLine
  }
  {
    r4 r8 c'8 e'8 c'8 e'8 c'8~ |
    c'1 |
    r2 r4
      g'16 a'16 g'16 fis'16 | \endLine

    e'4. fis'8 g'8 e'8 r8 a'8 |
    r8 a'8 a'2. |
    g'8 a'8 g'8 fis'8
      e'8 b8 c'8 cis'8~ |
    cis'2 r4 r8 bes8 | \endLine

    a4. a'8 r8 e'8 f'8 g'8 |
    r8 g'4. f'8 e'8 d'8 cis'8 |
    e'4 a8 e'8~ e'4. a8 |
    d'8 e'8 f'8 g'8 r2 | \endLine

    r8 c''4. g'4 a'4 |
    bes'4. aes'8~ aes'8 ees'8 f'8 g'8~ |
    g'2 g'4. e'8~ |
    e'4 e'8 f'8 r8 dis'8 e'8 a'8 | \endLine

    r8 a'4. a'2 |
    \mark \markup { \musicglyph #"scripts.coda" }
    r8 a8
      \tuplet 3/2 { b8 c'8 d'8 }
      e'4 g8 c'8 |
    c'2. r4 |
    r1_\markup{\center-column{\caps "After solos, Dc.Al Coda" "(Take Repeat)"}} | \endLine

    \once \override Score.RehearsalMark.font-size = #4
    \mark \markup { \musicglyph #"scripts.coda" }
    r8 a8
      \tuplet 3/2 { b8 c'8 d'8 }
      e'8 f'8
      \tuplet 3/2 { g'8 a'8 b'8 } |
    d''1~ |
    d''1-\fermata
  }
}

\songEndBar
s1
