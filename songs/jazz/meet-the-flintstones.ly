title: (Meet) The Flintstones
composer: Hoyt Curtin, Joseph Barbera, William Hanna
subsubtitle: 1961
meter: Up
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 2 {
    f1:maj7 | g1:m7 | a1:m7 | bes1:maj7 |
    f1:maj7 | g2:m7 c2:7
  } \alternative {
    {
      f1:maj7 | g2:m7 c2:7 |
    }
    {
      f1:maj7 | bes1:maj7 | a1:7 |
      a1:7 | d1:7 | d1:7 |
      g1:7 | g1:7 | c1:7 | c1:7 |
      f1:maj7 | g1:m7 | a1:m7 | bes1:maj7 |
      f1:maj7 | g2:m7 c2:7 | f1:maj7 | g2:m7 c2:7 |
      f1:maj7 | g2:m7 c2:7.9- | f1:6 | \LPC g2:m7 \RPC c2:7 |
    }
  }
}
---
\key f \major
\time 4/4
\numericTimeSignature

\boxMark "A"
\repeat volta 2 {
  c''2 f'4 r4 |
  r4 f''2 d''4 |
  c''2 f'4 r4 |
  r4 c''2 bes'4 | \endLine

  a'4 a'4 bes'4 c''4 |
  f'2 g'2
} \alternative {
  {
    a'2 r2 |
    r1 |
  }
  {
    f'2 r2 |
    r1 | \endLine
  }
}

\boxMark "B"
e''2 a'2 |
r4 f''2 e''4 |
e''4 d''4 d''4 e''4 |
d''4 r4 r2 | \endLine

d''2 g'2 |
r4 e''2 d''4 |
d''4 c''4 c''4 d''4 |
c''4 r4 r2 | \endLine

\boxMark "A"
c''2 f'4 r4 |
r4 f''2 d''4 |
c''2 f'2 |
r4 c''2 bes'4 | \endLine

a'4 a'4 bes'4 c''4 |
f'2 g'2 |
r8 a'4. bes'4 c''4 |
f'2 g'2 | \endLine

r4 a'4 bes'4 c''4 |
f''2 g''2 |
f''1~ |
f''4 r4 r2 |

\songEndBar
