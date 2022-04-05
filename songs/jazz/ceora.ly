title: Ceora
composer: Lee Morgan
subsubtitle: 1967
meter: Medium Bossa
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  aes1:maj7 | bes2:m7 ees2:7 | aes1:maj7 | ees2:m7 aes2:7 |
  des1:maj | d2:m7 g2:7 | c1:m7 | f1:7.9+ |
  bes1:m7 | ees1:7 | c1:m7 | f1:7 |
  d1:m7 | g1:7 | c2:m7 f2:7 | bes2:m7 ees2:7 |

  aes1:maj7 | bes2:m7 ees2:7 | aes1:maj7 | ees2:m7 aes2:7 |
  des1:maj7 | d2:m7 g2:7 | c1:m7 | f1:7.9+ |
  bes1:m7 | ees1:7 | c1:m7.5- | f1:7.9+ |
  bes1:m7 | ees2:7sus4 ees2:7 | aes1:maj7 | bes2:m7 ees2:7 |

  aes1:maj7 | bes2:m7 ees2:7 | aes1:maj7
}
---
\key aes \major
\time 4/4
\numericTimeSignature

\voltaStartBar
\boxMark "A"
<<
  r8_\markup{"Play cue 2nd time only"}
  \\ {
  \parenthesize ees'2*1/4
  }
>>
ees'8 d''8 ees''8 r8 ees'8 r8 ees''16 d''16 |

des''2. r4 |
r8 ees'8 b'8 c''8 r8 ees'8 r8 bes'8~ |
bes'2. r4 | \endLine

r8 aes8 g'8 aes'8 r8 aes8 r8 aes'8 |
g'2. r8 g'16 aes'16 |
ees'2 r4 r8 c'16 ees'16 |
aes'4. ges'8
  \tuplet 3/2 { b'16 c''16 b'16 } a'8
  aes'8 ges'8 | \endLine

f'8 aes'8 r8 c''8 r8 des''8 r8 ees''16 c''16 |
bes'2 r4
  bes'16 aes'16 g'16 f'16 |
g'8 bes'8 r8 d''8 r8 ees''8 r8 f''16 d''16 |
c''2 r4
  c''16 d''16 bes'16 c''16 | \endLine

a'8 c''8 r8 e''8 r8 f''8
  e''16 d''16 c''16 aes'16 |
d''4. e''8 r8 d''8
  \tuplet 3/2 { c''16 d''16 c''16 } b'8 |
c''4. f''8
  \tuplet 3/2 { des''16 ees''16 des''16 } f'8
  a'8 c''8 |
bes'4. des''8 r8 e''16 ges''16 ees''8 des''8 | \partBar \endLine

\boxMark "B"

c''8 ees'8 d''8 ees''8
  r8 ees'8 r8 ees''16 d''16 |
des''2. r4 |
r8 ees'8 b'8 c''8 r8 ees'8 r8 bes'8~ |
bes'2. r4 | \endLine

r8 aes8 g'8 aes'8 r8 aes8 r8 aes'8 |
g'2. r8 g'16 aes'16 |
ees'2 r4 r8 c'16 ees'16 |
aes'4. ges'8
  \tuplet 3/2 { b'16 c''16 b'16 } a'8
  aes'8 ges'8 | \endLine

f'8 aes'8 r8 c''8 r8 des''8 r8 ees''16 f''16 |
bes'2 r4 bes'16 aes'16 g'16 f'16 |
ges'2
  \tuplet 3/2 { ges'16 aes'16 ges'16 } f'8
  e'8 f'8 |
f''4. c''8
  \tuplet 3/2 { r8 f'8 aes'8 }
  des''8 c''8 | \endLine

aes'2 r8 f'8 aes'16 bes'16 aes'8~ |
aes'2 r8 aes'16 g'16
  bes'16 aes'16 ees'16 f'16 |
\codaMark
g'2 r4
  c'16 ees'16 g'16 ges'16 |
f'4. e'8 r8 e'8
  \tuplet 3/2 { fis'16 g'16 fis'16 } e'8 | \endLine

\doubleVoltaBar

\once \override Score.RehearsalMark.font-size = #5
\mark \markup { \musicglyph #"scripts.coda" }
g'2 r4
  c'16 ees'16 g'16 ges'16 |
f'4. e'8 r8 e'8
\tuplet 3/2 { fis'16_\markup{"Rit. (Last Time)"} g'16 fis'16^\markup{"(3x's)"} } e'8
\voltaEndBar

g'1\fermata |
\songEndBar

s1^\markup{\center-column{"Solo on AB" "After solos, D.C. Al Coda"}}
