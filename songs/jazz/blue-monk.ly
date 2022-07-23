title: Blue Monk
composer: Thelonious Monk
year: 1954
meter: Medium
type: blues
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  bes1 | ees1:7 | bes2:7 f2:7 | bes2 bes2:7 |
  ees1 | e1:dim7 | bes2 f2:7 | bes1 |
  f1:7 | f1:7 | bes1 | bes2

  \once \set chordNameFunction = #parenthesis-ignatzek-chord-names
  f2:7 |
}
---
\key bes \major
\time 4/4
\numericTimeSignature

d'8 ees'8 e'8 f'8~ f'2 |
g'8 gis'8 a'8 bes'8~ bes'2 |
f'8 g'8 f'8 e'8
  ees'8 f8 cis'8 d'8~ |
d'8 des'4 c'8~ c'2 | \endLine

g'8 gis'8 a'8 bes'8~ bes'2 |
bes'8 b'8 c''8 des''8~ des''2 |
f'8 g'8 f'8 e'8
  ees'8 f8 cis'8 d'8~ |
d'2.
  \tuplet 3/2 { f'8 f'8 f'8 } | \endLine

f'8 f4.~ f2 |
f'8 g'8 f'8 e'8
  ees'8 f8 cis'8 d'8~ |
d'4 f'8 g'8
  f'8 e'8 ees'8 f8 |
cis'8 d'4. d'2 |

\songEndBar
