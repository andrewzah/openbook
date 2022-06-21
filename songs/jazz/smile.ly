title: Smile
composer: Charlie Chaplin
subsubtitle: From Modern Times (1936)
meter: Samba
arranger: 이미영
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat unfold 5 { f1 f4 | }
  aes1:dim7 aes4:dim7 | g1:m7 g4:m7 | d1:7.9- d4:7.9- |

  \repeat unfold 2 { g1:m g4:m | }
  bes1:m7 bes4:m7 | ees1:7 ees4:7 |
  f1 f4 | d1:7 d4:7 | g1:m7 g4:m7 | c1:7.9- c4:7.9- |

  f1 f4 | f1 f4 | f1/a f4/a | f1/a f4/a | 
  bes1 bes4 | bes1 bes4 | g1:m7 g4:m7 | c1:7 c4:7 |
}
---
\key f \major
\time 5/4
\numericTimeSignature

\voltaStartBar

\boxMark "A"
f'2. g'4 a'4 |
g'4. f'4. e'4 d'4 |
e'2. f'4 g'4 |
f'4. e'4. d'4 c'4 | \endLine

d'2. e'4 f'4 |
d'2. e'4 f'4 |
g'2. a'4 bes'4 |
fis'2. g'4 a'4 | \endLine

\boxMark "B"
bes'2. c''4 d''4 |
c''4. bes'4. a'4 g'4 |
bes'2. c''4 des''4 |
c''4. bes'4. a'4 g'4 | \endLine

a'2. bes'4 a'4 |
bes'4. a'4. g'4 f'4 |
g'2. d'2 |
a'2. a'2 | \voltaEndBar \endLine

\boxMark "In, Out"

\new ImproVoice {
  \repeat unfold 4 { c4 c4 c4 c4 c4 } \endLine
  \repeat unfold 4 { c4 c4 c4 c4 c4 } \endLine
}
