title: Here's That Rainy Day
composer: Jimmy Van Heusen
poet: Johnny Burke
subsubtitle: Introduced in in the musical Carnival in Flanders (1953)
meter: Medium
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 2 {
    g1:maj | bes1:7 | ees1:maj7 | aes1:maj7 |
    a1:m7 | d1:7 | g1:maj7 | d2:m7 g2:7 |
  } \alternative {
    {
      c1:m7 | f1:7 | bes1:maj7 | ees1:maj7 |
      a1:m7 | d1:7 | g1:maj7 | a2:m7 d2:7 |
    }
    {
      c1:maj7 | a2:m7 d2:7 | b2:m7 e2:m7 | a1:7 |
      a1:m7 | d1:7 | g1:6 | \LPC a2:m7 \RPC d2:7 |
    }
  }
}
---
\key g \major
\time 4/4
\numericTimeSignature

\repeat volta 2 {
  d'4 d'2 d'4 |
  d'4 f'4 bes'4 d''4 |
  d''2 c''4. b'8 |
  c''1 | \endLine

  d'4 d'2 d'4 |
  d'4 fis'4 a'4 c''4 |
  b'1~ |
  b'2. r4 | \endLine
} \alternative {
  {
    ees''2 ees''2 |
    ees''4 g'4 aes'4 a'4 |
    d''2 f'4 fis'4 |
    g'2 f'4 g'4 | \endLine

    c''4 c''8 c''8 c''4 c''8 c''8 |
    c''4 e'4 eis'4 fis'4 |
    b'1~ |
    b'2. r4 | \endLine
  }
  {
    e''4 e''2 e''4 |
    e''4 a'4 b'4 c''4 |
    d''2 f'4 g'4 |
    a'1 | \endLine

    d'4 d'2 d'4 |
    d'4 f'4 a'4 b'4 |
    g'1 |
    r1
  }
}

\songEndBar
