title: Days of Wine and Roses
composer: Henry Mancini
poet: Johnny Mercer
subsubtitle: From Days of Wine and Roses (1962)
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \partial 4 s4

  %% A
  f1:maj7 | ees1:7 | d2:7.5-.9- d2:7 | d1:7 |
  g1:m7 | g1:m7 | bes1:m | ees1:7 |

  %% B
  a1:m7 | d1:m7 | g1:m7 | c1:7 |
  e2:m7.5- a2:7.9- | d2:m7 g2:7 | g1:m7 | c1:7 |

  %% A
  f1:maj7 | ees1:7 | d2:7.5-.9- d2:7 | d1:7 |
  g1:m7 | g1:m7 | bes1:m | ees1:7 |

  %% C
  a1:m7 | d1:m7 | b1:m7.5- | bes1:7 |
  a2:m7 d2:7 | g2:m7 c2:7 | f1:6 | \LPC g2:m7 \RPC c2:7 |
}
---
\key f \major
\time 4/4
\numericTimeSignature

\partial 4 c'4

\boxMark "A"
a'1 |
r4 g'4 a'4 c''4 |
d''2 c''2~ |
c''2 c''4 a'4 | \endLine

a'4 d'4 d'2~ |
d'2 c''4 a'4 |
a'4 des'4 des'2~ |
des'2 a'4 g'4 | \partBar \endLine

\boxMark "B"
g'4 c'4 d'4. e'8 |
g'4 f'4 a'4 d''4 |
c''2. bes'4 |
c''4 bes'4 a'4 g'4 | \endLine

a'2. e'4 |
g'4 f'4 e'4. d'8 |
g'1~ |
g'2. c'4 | \partBar \endLine

\boxMark "A"
a'1 |
r4 g'4 a'4 c''4 |
d''2 c''2~ |
c''2 c''4 a'4 | \endLine

a'4 d'4 d'2~ |
d'2 c''4 a'4 |
a'4 des'4 des'2~ |
des'2 a'4 g'4 | \partBar \endLine

\boxMark "C"

g'4 c'4 d'4 e'4 |
f'4 g'4 a'4 c''4 |
e''1~ |
e''2. d''4 | \endLine

c''4 a'4 g'4 f'4 |
a'4 a'2 d'4 |
f'1~_\markup{"FINE"} |
f'2. r4

\songEndBar
