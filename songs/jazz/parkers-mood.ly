title: Parker's Mood
composer: Charlie Parker
subsubtitle: 1948
meter: Med. Slow Swing
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  a1:m | d1:m |
  c1:maj7 | ees1:maj7 | aes1:maj7 | des1:7.11+

  c1:6 | f1:7 |
  c1:6 | c1:7 |
  f1:7 | f1:7 |
  c1:6 | e2:m7 a2:7.9- |
  d1:m7 | g1:7 |
  c2:6 g2:7 | c2:6
  \once \set chordNameFunction = #parenthesis-ignatzek-chord-names g2:7 |
}
---
\key c \major
\time 4/4
\numericTimeSignature

c''8 a'8 e''4~
  e''8 d''16 c''16
  d''16 e''16 c''16 a'16 |
e''8. c''16 d''8 d''8~ d''2 | \endLine

\new ImproVoice {
  \repeat unfold 3 { c4 c4 c4 c4 }
  c4 c4 c4 c4\fermata_\markup{\caps{"Fine"}} \partBar \endLine
}

r8 c'8
  \tuplet 3/2 { d'8 g'8 a'8 }
  \tuplet 3/2 { c''8 c'8 e'8~ }
  e'8 c'8 |
c''16 c''16 c''16 c''16
  g'16 f'8.~ f'4 r4 | \endLine

r8 c'8
  \tuplet 3/2 { d'8 g'8 a'8 }
  \tuplet 3/2 { c''8 c'8 e'8~ }
  e'4 |
r8 c''8
  g''16 g''16 g''16 g''16
  e''16 bes'8.~ bes'4 | \endLine

r4
  \tuplet 3/2 { d''32 ees''32 d''32 }
    c''16 b'16 g'16
  fis'16 c'8.
  \tuplet 3/2 { d''32 ees''32 d''32 }
    c''16 b'16 g'16 |
r8
  \tuplet 3/2 { d''32 ees''32 d''32 } c''16
  bes'16 g'16 f'16 c'16
  r8 \tuplet 3/2 { d''32 ees''32 d''32 } c''16
  bes'16 g'16 f'16 c'16 | \endLine

e'16 g'16 g'16 a'16
  \tuplet 3/2 { e'8 c'8 e'8~ } e'4 r4 |
r16 b32 c'32 d'32 c'32 b16~
  b32 d'32 f'32 fis'32 g'8
  r8 r32
  bes'32 a'32 g'32
  fis'32 d'32 cis'32 e'32 g'32 bes'32 a'32 g'32 | \endLine

f'4 r4 r16
  \tuplet 3/2 { d'16 f'16 a'16 } c''16
  e''16 ees''16 d''16 cis''16 |
\tuplet 3/2 { c''32 d''32 c''32 }
    a'16 c''16 g'16 a'4
  r8 r16
  f'16
  \tuplet 3/2 { g'32 a'32 g'32 } e'16
  \tuplet 3/2 { f'32 g'32 f'32 } d'16 | \endLine

\tuplet 3/2 { e'32 f'32 e'32 } c'16
  \tuplet 3/2 { d'32 e'32 d'32 } b16
  c'16 <g \parenthesize g'>8.
  r4 r16
  fis'16
  \tuplet 3/2 { aes'16 bes'16 aes'16 } |
g'16 f'16 e'16 c'16~
  c'4_\markup{\center-column{\caps{"Solos on C Blues" "After Solos, D.C. Al Fine"}}} r2

\songEndBar
