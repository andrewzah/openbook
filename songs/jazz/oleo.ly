title: Oleo
composer: Sonny Rollins
subsubtitle: 1954
meter: Up
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 2 {
    bes2:6 g2:m7 | c2:m7 f2:7 | bes2:6 g2:7 | c2:m7 f2:7 |
    f2:m7 bes2:7 | ees2:maj7 ees2:m6 | d2:m7 g2:7 |
  } \alternative {
    {
      c2:m7 f2:7 |
    }
    {
      c4:m7 f4:7 bes2:6 |
    }
  }

  d1:7 | d1:7 | g1:7 | g1:7 |
  c1:7 | c1:7 | f1:7 | f1:7 |

  bes2:6 g2:m7 | c2:m7 f2:7 | bes2:6 g2:7 | c2:m7 f2:7 |
  f2:m7 bes2:7 | ees2:maj7 ees2:m6 | d2:m7 g2:7 | c4:m7 f4:7 bes2:6 |
}
---
\key bes \major
\time 4/4
\numericTimeSignature

\boxMark "A"
\repeat volta 2 {
  r8 bes'4 g'8 c''4. bes'8~ |
  bes'8 g'8 d''2 ees''8 d''8 |
  r8 bes'4 g'8
    d''8 ees''8 d''8 c''8 |
  bes'8 g'8 gis'8 a'8
    r8 bes'4 g'8 | \endLine

  c''4. bes'8~ bes'8 g'8 bes'4 |
  r8 bes'4 g'8
    ees''8 d''8 bes'8 c''8 |
  r4 r8 g'8~ g'8 bes'4 g'8 |
} \alternative {
  {
    d''4 r8 c''8
      d''8 c''8 a'8 f'8 |
  }
  {
    des''8 bes'8 c''8 bes'8 r2 | \partBar \endLine
  }
}

\boxMark "B"
\new ImproVoice {
  \repeat unfold 4 { c4 c4 c4 c4 | } \endLine
  \repeat unfold 4 { c4 c4 c4 c4 | } \endLine
}

\boxMark "A"
r8 bes'4 g'8 c''4. bes'8~ |
bes'8 g'8 d''2 ees''8 d''8 |
r8 bes'4 g'8
  d''8 ees''8 d''8 c''8 |
bes'8 g'8 gis'8 a'8
  r8 bes'4 g'8 | \endLine

c''4. bes'8~ bes'8 g'8 bes'4 |
r8 bes'4 g'8
  ees''8 d''8 bes'8 c''8 |
r4 r8 g'8~ g'8 bes'4 g'8 |
des''8 bes'8 c''8 bes'8_\markup{"FINE"} r2 |

\songEndBar
