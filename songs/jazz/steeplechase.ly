title: Steeplechase
composer: Charlie Parker
subtitle: 1948
subsubtitle: (Rhythm Changes)
meter: Medium Swing
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  bes1:6 | c2:m7 f2:7.5- | bes2:7 g2:7 | c2:m7 f2:7 |
  bes1:6 | c2:m7 f2:7.5- | bes2:7 g2:7 | c4:m7 f4:7 bes2:6 |

  d1:7 | d1:7 | g1:7 | g1:7 |
  c1:7 | c1:7 | f1:7 | f1:7 |

  bes1:6 | c2:m7 f2:7.5- | bes2:7 g2:7 | c2:m7 f2:7 |
  bes1:6 | c2:m7 f2:7.5- | bes2:7 g2:7 | c4:m7 f4:7 bes2:6 |
}
---
\key bes \major
\time 4/4
\numericTimeSignature

\boxMark "A"
\voltaStartBar
r8 bes8 d'4-. f'4-. c'8 g8 |
ees'8 g'8 bes'8 b'8~ b'4. a'8 |
bes'8 f'8 r8 aes'8 r8 g'8 r8 ges'8 |
f'8 e'8 ees'8 d'8 r8 c'8 r4 | \endLine

r8 bes8 d'4-. f'4-. c'8 g8 |
ees'8 g'8 bes'8 b'8~ b'4. a'8 |
bes'8 f'8 r8 aes'8 r8 g'8 r8 ges'8 |
f'8 ees'8 d'8 bes8 r2 |
\voltaEndBar \endLine

\boxMark "B"
\new ImproVoice {
  \repeat unfold 4 { c4 c4 c4 c4 } \endLine
  \repeat unfold 4 { c4 c4 c4 c4 } \partBar \endLine
}

\boxMark "A"
r8 bes8 d'4-. f'4-. c'8 g8 |
ees'8 g'8 bes'8 b'8~ b'4. a'8 |
bes'8 f'8 r8 aes'8 r8 g'8 r8 ges'8 |
f'8 e'8 ees'8 d'8 r8 c'8 r4 | \endLine

r8 bes8 d'4-. f'4-. c'8 g8 |
ees'8 g'8 bes'8 b'8~ b'4. a'8 |
bes'8 f'8 r8 aes'8 r8 g'8 r8 ges'8 |
f'8 ees'8 d'8 bes8 r2 |

\songEndBar
