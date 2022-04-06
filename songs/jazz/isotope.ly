title: Isotope
composer: Joe Henderson
meter: Medium Swing
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \partial 8 s8

  c1:7 | ees2:7 d2:7 | g2:7 c2:7 | c1:7 |
  f1:7 | bes1:7 | c1:7 | e1:m7/a |
  ees:m7/aes | d2:m7 g2:7 | c2:7 a2:7 | ges2:7 ees2:7 |

  c1:7 | c1:7 | c1:7 | c1:7 |
  f1:7 | bes1:7 | c1 | a1:7 |
  aes1:7 g1:7 | c2:7 a2:7 | ges2:7 ees2:7 |

  c2:7 a2:7 | ges2:7 ees4.:7 c8:7 |
}
---
\key c \major
\time 4/4
\numericTimeSignature

\boxMark "Head"
\partial 8 c'8

\voltaStartBar

fis'8 g'4-. c''8 r8 c'8 r4 |
r4 \tuplet 3/2 { a'8 aes'8 g'8 }
  fis'8 d''4. |
b'8 g'8 b'8 c''8~ c''2~ |
c''4 r4 r8 bes'8 aes'8 f'8 | \endLine

gis'8 a'8 f'8 c'8
  bes'8 ees'8 c''8 f'8 |
ees''8 g'8 r4
  d''8 aes'8 bes'8 d'8 |
c''8 e'8 r4
  cis''8 a'16 g'16 e'8 d'8~ |
d'2. r4 | \endLine

r8 c''8
  \tuplet 3/2 { aes'8 ges'8 des'8 }
  c''8 aes'8 ges'8 des'8 |
c'8 f'8 g'8 a'8
  b'4. c''8 |
\codaMark
r2 cis''8 a'8 g'4-. |
bes'8 ges'8 e'4-.
  g'8 ees'8 des'8 c'8 | \endLine

\doubleVoltaBar

\boxMark "Solos"
\new ImproVoice {
  \repeat unfold 4 { c4 c4 c4 c4 } \endLine
  \repeat unfold 4 { c4 c4 c4 c4 } \endLine
  \repeat unfold 4 { c4 c4 c4 c4 } \endLine
}

\voltaEndBar

\once \override Score.RehearsalMark.font-size = #5
\codaMark

r2 cis''8 a'8 g'4-. |
bes'8 ges'8 e'4-.
  g'8 ees'8 des'8 c'8 |

\songEndBar
s1^\markup{\caps{\center-column{"Repeat head in/out" "After solos, D.C. Al Coda"}}}
s1
