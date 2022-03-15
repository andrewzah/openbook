title: Bernie's Tune
composer: Bernie Miller
subsubtitle: 1953
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 2 {
      d1:m7 | d1:m7 | bes1:7.5- | bes1:7.5- |
      e1:7.5- | a1:7 | d1:m7 |
  } \alternative {
    {
      e2:m7.5- a2:7.5+ |
    }
    {
      \once \set chordNameFunction = #parenthesis-ignatzek-chord-names
      d1:m7 |
    }
  }

  \repeat unfold 3 { bes2:6 g2:m7 | c2:m7 f2:7 | }
  bes1:6 | e2:m7.5- a2:7.5+ |

  d1:m7 | d1:m7 | bes1:m7.5- | bes1:m7.5- |
  e1:m7.5- | a1:7 | d1:m7 | \LPC e2:m7.5- \RPC a2:7.5+ |
}
---
\key d \minor
\time 4/4
\numericTimeSignature

\voltaStartBar
\repeat volta 2 {
  r8 a'8 r8 gis'8 a'4-. r8 a'8 |
  r8 gis'8 a'4-.
    a8 d'8 f'8 a'8 |
  aes'2~ aes'4. e'8~ |
  e'2 r2 | \endLine

  r8 g'8 r8 fis'8 g'4-. r8 g'8 |
  r8 fis'8 g'4-.
    a8 cis'8 e'8 g'8 |
  f'2~ f'4. d'8~
} \alternative {
  {
    d'2 r2 | \voltaEndBar
  }
  {
    d'2 r2 | \bar "||" \endLine
  }
}

bes4-. r4 g'8 f'8 r8 d'8 |
c'4. d'8~ d'2 |
bes4-. bes4-. g'8 f'8 r8 d'8 |
c'2. r4 | \endLine

bes4-. r4 g'8 f'8 r8 d'8 |
c'4. d'8~ d'2 |
bes4-. bes4-. a'2~ |
a'8 g'8 f'8 e'8 cis'2 | \endLine

r8 a'8 r8 gis'8 a'4-. r8 a'8 |
r8 gis'8 a'4-. a8 d'8 f'8 a'8 |
aes'2~ aes'4. e'8~ |
e'2 r2 | \endLine

r8 g'8 r8 fis'8 g'4-. r8 g'8 |
r8 fis'8 g'4-. a8 cis'8 e'8 g'8 |
f'2~ f'4. d'8~ |
d'2 r2 |

\songEndBar
