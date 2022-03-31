title: Tea for Two
composer: Vincent Youmans
poet: Irving Caesar
subsubtitle: From No, No, Nanette (1925)
meter: Medium
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  % "A1"
  bes2:m7 ees2:7 | bes2:m7 ees2:7 | aes2:maj7 des2:7 | c2:m7 b2:dim7 |
  bes2:m7 ees2:7 | bes2:m7 ees2:7 | aes1:maj7 | aes1:6 |

  % "B"
  d2:m7 g2:7 | d2:m7 g2:7 | c2:maj7 f2:7 | e2:m7 ees2:dim7 |
  d2:m7 g2:7 | d2:m7 g2:7 | c1:maj7 | ees1:7 |

  % "A2"
  bes2:m7 ees2:7 | bes2:m7 ees2:7 | aes2:maj7 des2:7 | c2:m7 b2:dim7 |
  bes2:m7 ees2:7 | bes2:m7 ees2:7 | c1:m7.5- | f1:7.9- |

  % "C"
  bes2:m7 c2:m7.5- | f2:9.5+ f2:9 | bes1:m7 | des2:m7+ des2:m6 |
  f2:m7/c b2:dim7 | bes2:m7 ees2:7 | aes1:6 | \LPC c2:m7 \RPC f2:7.9-
}
---
\key aes \major
\time 4/4
\numericTimeSignature

\boxMark "A1"
aes'4. f'8 g'4. f'8 |
aes'4. f'8 g'4. ees'8 |
g'4. ees'8 f'4. ees'8 |
g'4. ees'8 f'4. ees'8 | \endLine

aes'4. f'8 g'4. f'8 |
aes'4. f'8 g'4. ees'8 |
c''1~ |
c''2 r2 | \partBar \endLine

\boxMark "B"
c''4 c''8 a'8 b'4 b'8 a'8 |
c''4 c''8 a'8 b'4 b'8 g'8 |
b'4 b'8 g'8 a'4 a'8 g'8 |
b'4 b'8 g'8 a'4 a'8 g'8 | \endLine

c''4 c''8 a'8 b'4 b'8 a'8 |
c''4 c''8 a'8 b'4 b'4 |
e''1 |
ees''2 r2 | \partBar \endLine

\boxMark "A2"
aes'4. f'8 g'4. f'8 |
aes'4. f'8 g'4. ees'8 |
g'4. ees'8 f'4. ees'8 |
g'4. ees'8 f'4. ees'8 | \endLine

aes'4. f'8 g'4. f'8 |
aes'4. f'8 g'4. ees'8 |
ees''1~ |
ees''2 r2 | \endLine

\boxMark "C"
f''4. f''8 ees''4. ees''8 |
des''4. des''8 c''4. c''8 |
ees''4. ees''8 des''4. des''8 |
c''4. c''8 bes'4. bes'8 | \endLine

aes'4. f'8 g'4. f'8 |
aes'4. f'8 g'4. c''8 |
aes'1 |
r1

\songEndBar
