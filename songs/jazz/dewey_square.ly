title: Dewey Square
composer: Charlie Parker
meter: Bop
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 2 {
    ees1:maj7 | aes2:m7 des2:7 | g1:m7 | c1:7 |
    f1:7 | bes1:7 |
  } \alternative {
    {
      g2:m7 c2:7 | f2:m7 bes2:7 |
    }
    {
      ees1:maj7 | bes2:m7 ees2:7 | aes1:maj7 | des1:7 |
      ees1:maj7 | c1:7 | f1:7 | f1:7 | f1:m7 | bes1:7 |
      ees1:maj7 | aes2:7 des2:7 | g1:m7 | c1:7 |
      f1:7 | bes1:7 | ees1:maj7 | ees1:maj7
    }
  }
}
---
\key ees \major
\time 4/4
\numericTimeSignature

\repeat volta 2 {
  \voltaStartBar
  \boxMark "A1"
  r8 d''4. c''8 bes'8
    \tuplet 3/2 { g'8 ees'8 c'8 } |
  f'4 r8 ees'8~ ees'8 g'8 aes'8 f'8 |
  g'8 bes'8 c''8 bes'8
    des''4 c''8 g'8 |
  r4 r8 d''8 f''8 ees''8 d''8 c''8 | \endLine

  b'8 g'8 ees'8 b8
    g'4. f'8 |
  aes'8 bes'8 g'4
    f'8 g'8 aes'8 bes'8 |
} \alternative {
  {
    r4 r8 g'8~ g'8 aes'4 g'8 |
    bes'8 c''8 bes'8 bes'8~ bes'4 r4
    | \voltaEndBar | \endLine
  }
  {
    r4 r8 g'8~ g'8 aes'4 g'8 |
    bes'8 c''8 bes'8 b'8~ b'4 r4 |
    \partBar

    \boxMark "B"
    \new ImproVoice {
      \repeat unfold 2 { c4 c4 c4 c4 | } \endLine
      \repeat unfold 6 { c4 c4 c4 c4 | } \endLine
    }

    \partBar

    \boxMark "A2"
    r8 des''4. c''8 bes'8
      \tuplet 3/2 { g'8 ees'8 c'8 } |
    f'4 r8 ees'8~ ees'8 g'8 aes'8 f'8 |
    g'8 bes'8 c''8 bes'8
      des''4 c''8 g'8 |
    r4 r8 d''8 f''8 ees''8 d''8 c''8 | \endLine

    b'8 g'8 ees'8 b8 g'4. f'8 |
    aes'8 bes'8 g'4
      f'8 g'8 aes'8 bes'8 |
    r4 r8 g'8~ g'8 aes'4 g'8 |
    \tuplet 3/2 { ees'16 f'16 ees'16 }
      bes8 d'8 ees'8~ ees'4 r4 |
    \songEndBar
  }
}
