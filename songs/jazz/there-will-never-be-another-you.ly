title: There Will Never Be Another You
subsubtitle: 1942
meter: Up
composer: Harry Warren
poet: Mack Gordon
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \partial 8 s8

  \repeat volta 2 {
    ees1:maj7 | ees1:maj7 | d1:m7.5- | g1:7 |
    c1:m7 | c1:m7 | bes1:m7 | ees1:7 |
    aes1:maj7 |

  } \alternative {
    {
      des1:9 | ees1:maj7 | c1:m7 |
      f1:7 | f1:7 | f1:m7 | bes1:7 |
    }
    {
      des1:9 | ees1:maj7 | a2:m7 d2:7 |
      ees2:maj7 d2:7 | g2:m7 c2:7 | f2:m7 bes2:7 | ees2 
        \once \set chordNameFunction = #parenthesis-ignatzek-chord-names
      bes2:7
    }
  }
}
---
\key ees \major
\time 4/4
\numericTimeSignature

\partial 8 bes8

\repeat volta 2 {
  c'4 d'4 ees'4 f'4 |
  g'4 bes'4 f'4. ees'8 |
  f'1~ |
  f'2. g'4 | \endLine

  ees'4 f'4 g'4 bes'4 |
  c''4 ees''4 c''4. bes'8 |
  c''1~ |
  c''2. bes'4 | \endLine

  ees''4 c''4 bes'4 aes'4 |
} \alternative {
  {
    g'4 f'4 g'4 aes'4 |
    bes'4 g'4 f'4 ees'4 |
    f'4 ees'4 f'4. ees'8 | \endLine

    d''4 c''4 bes'4 a'4 |
    g'4 f'4 g'4 f'4 |
    aes'1~ |
    aes'2. bes4 | \endLine
  }
  {
    g'4 f'4 g'4. aes'8 |
    bes'4 g'4 f'4 ees'4 |
    d''2. c''4 \endLine

    bes'4 ees''4 d''4 c''4 |
    bes'4 ees'4 bes'4 aes'4 |
    f'2 g'2 |
    ees'1_\markup{"Fine"} |

  }
}

\songEndBar
