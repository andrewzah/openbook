title: The Eternal Triangle
composer: Sonny Rollins
subsubtitle: 1959 - On Sonny Side Up
meter: Up
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 2 {
    bes1:maj7 | c2:m f2:7 | bes1:maj7 | c2:m f2:7 |
    bes1:7 | ees2:maj7 e2:dim |
  } \alternative {
    {
      bes2 g2:7 | c2:m f2:7 |
    }
    {
      bes1 | c4:m f4:7 bes2
    }
  }

  b1:m7 | e1:7 | bes1:m7 | ees1:7 |
  a2:m7 d2:7 | aes2:m7 des2:7 | g2:m7 c2:7 | ges2:m7 ces2:7 |

  bes1:maj7 | c2:m f2:7 | bes1:maj7 | c2:m f2:7 |
  bes1:7 | ees2:maj7 e2:dim | bes1 | c4:m f4:7 bes2 |
}
---
\key bes \major
\time 4/4
\numericTimeSignature

\boxMark "A"
\repeat volta 2 {
  r8 a'8
    \tuplet 3/2 { bes'8 d''8 f''8 }
    a''8 g''8 f''8 d''8 |
  ees''8 f''8 g''8 ees''8
    d''8 f'8 a'8 c''8~ |
  c''4 bes'8 f'8 a'8 g'8 r4 |
  r2 r8 e''8 f''8 g''8 | \endLine

  aes''8 c''8 des''8 d''8
    g''8 ges''8 f''8 fes''8 |
  ees''8 bes'8 c''8 des''8 r2 |
} \alternative {
  {
    r8 d''4. ees''2 |
    c''4. d''8~ d''4 r4 |
  }
  {
    r8 d''8~ d''4 ees''2 |
      d''8 bes'8 c''8 bes'8 r2 | \partBar \endLine
  }
}

\boxMark "B"
r8 e''4. d''2 |
cis''4~ cis''8 b'4. r4 |
r8 ees''4 ees''8 des''4 des''4 |
c''8 ees''8 des''8 bes'8 r2 | \endLine

r8 d''8 c''8 e'8 b'8 a'8 r8 des''8~ |
des''4 ces''8 ees'8 bes'8 aes'8 r4 |
r8 c''8 bes'8 d'8
  a'8 g'8 r8 ces''8~ |
ces''4 a'8 des'8 aes'8 g'8 r4 | \partBar

\boxMark "A"
r8 a'8
  \tuplet 3/2 { bes'8 d''8 f''8 }
  a''8 g''8 f''8 d''8 |
ees''8 f''8 g''8 ees''8
  d''8 f'8 a'8 c''8~ |
c''4 bes'8 f'8 a'8 g'8 r4 |
r2 r8 e''8 f''8 g''8 | \endLine

aes''8 c''8 des''8 d''8
  g''8 ges''8 f''8 fes''8 |
ees''8 bes'8 c''8 des''8 r2 |
r8 d''4. ees''2 |
d''8 bes'8 c''8 bes'8 r2 |

\songEndBar
