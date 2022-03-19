title: Totem Pole
composer: Lee Morgan
subsubtitle: 
meter: Medium Latin / Swing
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  ees1:m6 | ees1:m6 | f1:7 | f1:7 |
  e1:7 | e1:7 | ees1:m6 | bes1:7.5+.9+

  ees1:m6 | ees1:m6 | f1:7 | f1:7 | e1:7 | bes1:7.5+.9+ |
  ees1:m6 | bes1:7.5+.9+ | ees1:m6 | r1 | f1:7 |
  f1:7 | e1:7 | e1:7 | ees1:m6 | ees1:m7+ |
  bes1:m7 | ees1:7 | aes1:maj7 | aes1:maj7 | aes1:m7 |
  des1:7 | ges1:maj7 | bes1:7.9+ | ees1:m6 | ees1:m6 |
  f1:7 | f1:7 | e1:7 | e1:7 | ees1:m6 | bes1:7.9+ |
  ees1:m6 | bes1:7.9+ | ees1:m6 | bes1:7.9+ | ees1:m6 | bes1:7.5+.9+ |
  ees1:m6 | ees1:m6 |
}
---
\key ges \major
\time 4/4
\numericTimeSignature

\clef "bass"
ees4 ges8 bes8~
  bes8 c'8 bes8 ges8 |
ees4 ges8 bes8~
  bes8 c'8 bes8 ees8 |
f4 a8 c'8~
  c'8 d'8 c'8 a8 |
f4 a8 c'8~
  c'8 d'8 c'8 f8 | \endLine

e4 gis8 b8~
  b8 cis'8 b8 gis8 |
e4 gis8 b8~
  b8 cis'8 b8 e8 |

ees4 ges8 bes8~
  bes8 c'8 bes8 ges8 |
bes,4 bes,8 bes8 e4 bes8 bes8 | \partBar \endLine

\segnoMark
\clef "treble"

bes'1~ |
bes'2~
  \tuplet 3/2 { bes'8 a'8 bes'8 }
  \tuplet 3/2 { ces''8 bes'8 ges'8 } |
a'1~ |
a'2. a'4 |
gis'1~ |
gis'2~ 
  \tuplet 3/2 { gis'8 bes'8 ces''8 }
  \tuplet 3/2 { aes'8 ees'8 ces'8 } | \endLine

bes1 |
\tuplet 3/2 { fes'4 ges'4 aes'8 a'8 }
  bes'8 des''4. | \partBar
bes'1~ |
\tuplet 3/2 { bes'4 ces''4 bes'4 }
  \tuplet 3/2 { a'4 ges'4 ees'4 } |
a'4 f'2.~ | \endLine

f'2~_\markup{"Swing"} f'8 f'8 g'8 a'8 |
gis'4 e'2. |
aes'16 f'8.~ f'4
  fes'16 des'8.~ des'8 a'8 |
bes'4 ges'8 a'16 bes'16 d''2~ |
d''1 | \partBar \endLine

ees''2.~ ees''8 ees''8 |
r8 des''8 ees''8 a''8 r8 f''8 
  \tuplet 3/2 { r8 ees''8 des''8 } |
c''4. des''16 d''16 ees''2~ |
ees''2_\markup{"Latin"} r8 ees'8 ees''8 d''8 |
des''2.~ des''8 des''8 | \endLine

r8 ces''8 des''8 f''8 r8 ees''8
  \tuplet 3/2 { r8 des''8 ces''8 } |
bes'1 |
aes'16 f'8.~ f'4
  ees'16 des'8.~ des'8 a'8 |
bes'1~ |
bes'2~
  \tuplet 3/2 { bes'8 a'8 bes'8 }
  \tuplet 3/2 { ces''8 bes'8 ges'8 } | \endLine

a'1~ |
a'2. a'4 |
gis'1~ |
gis'2
  \tuplet 3/2 { gis'8 bes'8 ces'8 }
  \tuplet 3/2 { aes'8 ees'8 ces'8 } |
\codaMark
bes1 | 
f'1_\markup{\center-column{"D.S. For Solo" "Then D.S. Al Coda"}} | \partBar \endLine

\once \override Score.RehearsalMark.font-size = #5
\codaMark

bes1 | f'1 | bes1 | aes'1 | bes1 | ges'1 |
f'1~ | f'1^\fermata

\songEndBar
