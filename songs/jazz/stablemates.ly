title: Stablemates
subsubtitle: 1955
composer: Benny Golson
meter: Medium Swing
---
\chordmode {
  \partial 2 s2

  \boxMark "A"
  e2:m7 a2:7 | ees2:m7 aes2:7 | des1:maj7 | c1:7.5+ |
  aes1:m7 | des1:7 | ges1:maj7 | g2:m7.5- c2:7.5+ | f1:m7
  bes1:7 | ees1:m7 | aes1:7.5+ | des1:maj7 | des1:maj7 |

  \boxMark "B"
  f1:m7 | ges1:7 | g1:7.5+ | c1:7 |
  b1:7 | bes1:7 | a1:7 | aes1:7 |

  \boxMark "A"
  e2:m7 a2:7 | ees2:m7 aes2:7 | des1:maj7 | c1:7.5+ |
  aes1:m7 | des1:7 | ges1:maj7 | g2:m7.5- c2:7.5+ |
  f1:m7 | bes1:7 | ees1:m7 | aes1:7.5+
}
---
\relative c' {
  \key des \major
  \time 4/4
  \numericTimeSignature

  \partial 2 r8^\markup { "FORMAT: 14-8-14" } d8 f8 ges8~

  ges2. d8 f8 |
  r8 ees4. b'4 des8 aes8~ |
  aes2. b8 aes8~ |
  aes2. b8 aes8~ | \endLine

  aes2~ \tuplet 3/2 { aes4 g4 aes4 } |
  bes2 aes4. des8~ |
  des2 \tuplet 3/2 { r4 bes4 b4 } |
  c4 f,8 e8~ e4 bes'8 aes8~ |
  aes1 | \endLine

  r2 bes4 ges8 f8~ |
  f2~^\markup{"(LATIN)"} \tuplet 3/2 { f4 d4 ees4 } |
  e2 c2 |
  ees1~ |
  ees2 r2 | \bar "||" \endLine

  aes4.^\markup{"(SWING)"} c8 r8 aes8 r8 f8 |
  aes2. aes4 |
  ees'4. b8 r8 g8 r8 b8 |
  c2. aes4 \endLine

  b2~ b4. aes8 |
  r2 r4 aes4 |
  cis4. a8~ a4 cis8 c8 |
  r2 r8 d,8 f8 ges8~ | \bar "||" \endLine

  ges2. d8 f8 |
  r8 ees4. b'4 des8 aes8~ |
  aes2. b8 aes8~ |
  aes2. b8 aes8~ | \endLine

  aes2~ \tuplet 3/2 { aes4 g4 aes4 } |
  bes2 aes4. d8~ |
  d2 \tuplet 3/2 { r4 bes4 b4 } |
  c4 f,8 e8~ e4 bes'8 aes8~ | \endLine

  aes1 |
  r2 bes4 ges8 f8~ |
  f2~^\markup{ "(LATIN)" } \tuplet 3/2 { f4 d4 ees4 }  |
  e2 c2 | \endLine

  ees1~ |
  ees2 r2 \songEndBar s1^\markup"[SOLOS SWING THROUGHOUT]" s1
}
