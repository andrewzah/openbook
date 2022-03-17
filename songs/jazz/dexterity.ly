title: Dexterity
composer: Charlie Parker
subsubtitle: 1949
meter: Bop
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 2 {
    bes1 | c2:m7 f2:7.9- | bes2 g2:7 | c2:m7 f2:7 |
    bes2 bes2:7 | ees2 aes2:7 |
  } \alternative {
    {
      d2:m7 des2:7 | c2:m7 f2:7 |
    }
    {
      c2:m7 f2:7 |
    }
  }

  bes1 | a2:m7 d2:7 | a2:m7 d2:7 |
  d1:m7 | g1:7 | g1:m7 | c1:7 |
  c1:m7 | f1:7 | bes1 | c2:m7 f2:7.9- |
  bes2 g2:7 | c2:m7 f2:7 | bes2 bes2:7 | ees2 aes2:7 |
  c2:m7 f2:7 | bes1 |
}
---
\key bes \major
\time 4/4
\numericTimeSignature

\repeat volta 2 {
  \voltaStartBar
  r8 f'8 bes'8 d''8
    c''8 bes'8 a'8 bes'8 |
  c''8 bes'8 d''8 ges'8~ ges'8
    a'4 c''8 |
  bes'8 f'4 bes'8
    ees''8 d''8 b'8 g'8 |
  d''4 r8 a'8 c''8 b'8 d''8 c''8 | \endLine

  r4 r8 f'8~ f'8 bes'4 fis'8 |
  g'8 bes'8 c''8 d''8
    ees''8 f''16 ees''16 d''8 a'8~ |
} \alternative {
  {
    a'8 bes'16 c''16
      a'8 bes'16 c''16
      aes'4 r8 g'8~ |
    g'8 c''8 bes'8 g'8
      d''8 c''8 r4 | \voltaEndBar \endLine
  }
  {
    a'8 bes'16 c''16
      a'8 bes'16 c''16
      aes'4 r8 g'8 |
    bes'8 c''8 bes'8 bes'8 r2 | \partBar
  }
}

g'4 r8 e'8 b'8 a'8 fis'8 d'8 |
ees'8 e'8 g'16 b'16 fis'8~ fis'4 r8 d'8 | \endLine

g'8 c''8
\tuplet 3/2 { b'16 c''16 b'16 } g'8
  c''8 b'8 g'8 f'8~ |
f'4 r4 r8 g'4 d'8 |
a'4 r8 g'8 c''8 bes'8 g'8 d'8 |
f'8 ees'8 e'8 a'8~ a'4. c'8 | \endLine

g'4 r8 f'8
  c''8 bes'8 g'8 ees'8 |
ges'8 a'8 c''8 d''8
  ees''16 f''16 d''8 r4 | \partBar
r8 f'8 bes'8 d''8
  c''8 bes'8 a'8 bes'8 |
c''8 bes'8 d''8 ges'8~ ges'8
  a'4 c''8 | \endLine

bes'8 f'4 bes'8
  ees''8 d''8 b'8 g'8 |
d''4 r8 a'8
  c''8 b'8 d''8 c''8 |
r4 r8 f'8~ f'8 bes'4 fis'8 |
g'8 bes'8 c''8 d''8
  ees''8 f''16 ees''16 d''8 a'8~ | \endLine

a'8 bes'16 c''16
  a'8 bes'16 c''16
  aes'4 r8 g'8 |
bes'8 c''8 bes'8 bes'8 r2 |
\songEndBar

s1 | s1
