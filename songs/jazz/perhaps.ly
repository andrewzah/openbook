title: Perhaps
composer: Charlie Parker
meter: Up
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t
  c1:7 | c1:7 | c1:7 | c1:7 |
  f1:7 | f1:7 | c1:7 | e2:m7 a2:7.9- |
  d1:m7 | g1:7 | c1:7 | d2:m7 g2:7 |
  d2:m7 g2:7 | c1:7 |
}
---
\key c \major
\time 4/4
\numericTimeSignature

g'4 e'8 f'8
  g'8 a'8 b'8 c''8~ |
c''8 g'4 a'8
  b'8 a'8 e'8 f'8 |
g'8 a'8 g'8 e'8
  f'8 g'8 e'8 d'8 |
r2 r8 c''8~ c''8 a'8 | \endLine

c''4 r8 e'8
  f'8 g'8 f'8 e'8 |
ees'8 g'8 a'8 b'8~
  b'4. a'8 |
g'4 r8 aes'8~ aes'8 e''4 d''8 |
b'8 g'8 e'8 bes'8~ bes'4. aes'8 | \endLine

a'4 r8 c''8
  e''8 d''8 c''8 a'8 |
aes'8 f'8 g'8 f'8~ f'4. g'8 |
e'4 r8 g'8 f'4 r8 a'8 |
\codaMark
g'8 d'16 c'16
  b8 c'8
  d'8 c'8 b8 c'8 | \partBar \endLine

\once \override Score.RehearsalMark.font-size = #5
\codaMark

g'8 d'16 c'16
  b8 c'8
  d'8 c'8 b8 c'8 |
e'4 g'2.\fermata
\songEndBar

s1^\markup{ \caps { "After Solos, D.C. Al" \raise #1 \coda } } |
s1
