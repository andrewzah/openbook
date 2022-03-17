title: Whispering
composer: John Schonberger
subsubtitle: 1920
meter: Medium
poet: Malvin Schonberger
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 2 {
    ees1 | ees1 | a1:m7 | d1:7 |
    ees1 | ees1 | c1:7.5+ | c1:7 |
    f1:7 | f1:7 | bes1:7 | bes1:7 |
  } \alternative {
    {
      ees1 | g2:m7 ges2:dim7 | f2:m7 bes2:7 | f2:m7 bes2:7 |
    }
    {
      f1:m7 | bes2:7 des2:7 | ees1 | \LPC f2:m7 \RPC bes2:7 |
    }
  }
}
---
\key ees \major
\time 4/4
\numericTimeSignature

\repeat volta 2 {
  \voltaStartBar
  ees''2 d''4 ees''4 |
  f''4 ees''4 d''4 ees''4 |
  d''1 |
  c''1 | \endLine

  bes'2 a'4 bes'4 |
  c''4 bes'4 a'4 bes'4 |
  aes'1 |
  g'1 | \endLine

  g'2 f'4 g'4 |
  c''4 g'4 f'4 g'4 |
  g'1 |
  f'1 | \endLine
} \alternative {
  {
    ees'2 f'4 g'4 |
    bes'2 c''4 d''4 |
    c''2 bes'4 d''4 |
    c''2 bes'2 | \endLine
  }
  {
    f'4 g'4 aes'4 bes'4 |
    c''2 ees''2 |
    ees''2 r2 |
    r1 |
  }
}

\songEndBar
