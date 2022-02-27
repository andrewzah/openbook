title: Fine And Dandy
subsubtitle: 1930
composer: Kay Swift
poet: James Paul Warburg
meter: Medium
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 4 {
    \boxMark "A"
    f1 | d1:dim | g2.:m7 c4:7 | c1:7 |
    f1 | d1:dim | g2:m7 c2:7 | c1:7 |

    \boxMark "B"
    f1:7 | f1:7 | bes1:7 | bes1:7 |
    ees1:7 | ees1:7 | aes1:7 | c1:7 |

    \boxMark "A"
    f1 | d1:dim | g2.:m7 c4:7 | c1:7
    f1 | d1:dim | g2.:m7 c4:7 | c1:7

    \boxMark "C"
    c2.:m7 f4:7 | f1:7 | bes2. bes4:m | bes1:m | f2 d2:m7 |
    g2.:7 c4:7 |
  } \alternative {
    {
      f1 | g2:m7 c2:7 |
    }
    {
      f2 bes2:7 | f1
    }
  }
}
---
\key f \major
\time 2/2
%\numericTimeSignature

\repeat volta 4 {
  %% "A"
  e'2 d'4 f'4~ |
  f'1 |
  f'2 d'4 a'4~ |
  a'4 a'2. | \endLine

  e'2 d'4 f'4~ |
  f'4 f'2 d'4 |
  a'2 f'4 c''4~ |
  c''1 | \endLine

  %% "B"
  c''2 b'4 d''4~ |
  d''4 c''4 a'4 f'4 |
  d'2 d'4 d'4~ |
  d'1 | \endLine

  bes'2 a'4 c''4~ |
  c''4 bes'4 g'4 ees'4 |
  c'2 c'4 c'4~ |
  c'1 \endLine

  %% "A"
  e'2 d'4 f'4~ |
  f'1 |
  f'2 d'4 a'4~ |
  a'4 a'2. | \endLine

  e'2 d'4 f'4~ |
  f'4 f'2 d'4 |
  a'2 f'4 c''4~ |
  c''1 | \endLine

  %% "C"
  bes'2 g'4 d''4~ |
  d''4 d''2 a'4 |
  c''2 g'4 bes'4~ |
  bes'4 bes'2 f'4 |
  a'4 f'4 a'4 f'4 | \endLine

  a'4 a'2. |
} \alternative {
  {
    f'2 r2 |
    r1
    \voltaEndBar
  }
  {
    f'1~ |
    f'4 r4 r2 |
    \songEndBar
  }
}
