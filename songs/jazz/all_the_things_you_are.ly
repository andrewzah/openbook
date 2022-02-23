title: All The Things You Are
composer: Jerome Kern
poet: Oscar Hammerstein II
---
% subtitle: From Very Warm for May (1939)
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions

  \partial 8 s8

  \boxMark "Intro"
  des1:7.9+ | des1:7.9+ | c1:7.9+ | c1:7.9+ |

  \boxMark "A1"
  f1:m7 | bes1:m7 | ees1:7 | aes1:maj7 |
  des1:maj7 | g1:7 | c1:maj7 | c1:maj7 |

  \boxMark "A2"
  c1:m7 | f1:m7 | bes1:7 | ees1:maj7 |
  aes1:maj7 | d1:7 | g1:maj7 | g1:maj7 |

  \boxMark "B"
  a1:m7 | d1:7 | g1:maj7 | g1:maj7 |
  fis1:m7.5- | b1:7 | e1:maj7 | c1:aug |

  \boxMark "A3"
  f1:m7 | bes1:m7 | ees1:7 | aes1:maj7 |
  des1:maj7 | des1:m7 | c1:min7 | b1:dim7 |
  bes1:7 | ees1:7 | aes1:maj7 | \LPC g2:m7.5- \RPC c2:7.9-
}
---
\relative c'' {
  \key aes \major
  \time 4/4
  \numericTimeSignature

  \partial 8 a8

  \repeat volta 2 {
    \voltaStartBar
      aes8 des,4.~ des4. a'8
      | aes8 des,4 a'8 aes8 des,4 aes'8
      | g8 c,4.~ c4. aes'8
      | g8 c,4 aes'8 g8 c,4 a'8
  } \voltaEndBar \endLine

  | aes1
  | des2. aes4
  | g4 g4 g4 g4
  | g4 c2 g4 \endLine

  | f4 f4 f4 f4
  | f4 b2 f4
  | e1~
  | e1 \endLine

  | ees1
  | aes2. ees4
  | d4 d4 d4 d4
  | d4 g2 d4 \endLine

  | c4 c4 c4 c4
  | c4 d8 es8 d4 c4
  | b1~
  | b4 d4 g4 d'4 \endLine

  | d4. c8 c2~
  | c4 ees,4 e4 c'4
  | b1~
  | b4 d,4 g4 b4 \endLine

  | b4. a8 a2~
  | a4 bes,4 b4 a'4
  | aes1~
  | aes1 \endLine

  | aes1
  | des2. aes4
  | g4 g4 g4 g4
  | g4 c2 g4 \endLine

  | f1
  | ees'2. des4
  | ees,4 ees4 \tuplet 3/2 { ees4 ees4 ees4 }
  | g2. f4 \endLine

  | aes,4 des4 f4 aes4
  | f'2 g,2
  | aes1
  | r1

  \songEndBar
}
