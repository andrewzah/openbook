title: Lester Leaps In
composer: Lester Young
subsubtitle: 1939
meter: Upswing
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \partial 4. s4.


  \repeat volta 2 {
    \voltaStartBar

    bes2:6 g2:m7 | c2:m7 f2:7 | bes2:6 g2:m7 |
    c2:m7 f2:7 | bes2:6 g2:m7 | c2:m7 f2:7 |

  } \alternative {
    {
      bes2:6 g2:m7 | c2:m7 f2:7 |
    }
    {
      bes1:6 | bes1:6 |
    }
  }

  d1:7 | d1:7 | g1:7 | g1:7 |
  c1:7 | c1:7 | f1:7 | f1:7 |

  bes1:6 | \LPC c2:m7 \RPC f2:7
}
---
\key ees \major
\time 4/4
\numericTimeSignature

\partial 4. f'8 g'4

\mark \markup {
  \segno
  \box "A"
}
\repeat volta 2 {
  \voltaStartBar

  bes'2 bes'2 |
  bes'4 bes'8 bes'8 d''4 f''4 |
  bes'4. g'8~ g'2 | \endLine

  r2 r8 f'8 g'4 |
  bes'2 bes'2 |
  bes'4 bes'8 bes'8 d''4
    f''4^\markup{"              " \coda} | \endLine

} \alternative {
  {
    bes'2. r4 |
    r2 r8 f'8 g'4 |
  }
  {
    bes'2. r4 |
    r1 | \partBar \endLine
  }
}

\boxMark "B"
\new ImproVoice {
  \repeat unfold 4 { c4 c4 c4 c4 } \endLine
  \repeat unfold 3 { c4 c4 c4 c4 }
  c4 c4
}
r8_\markup{"D.S. Al " \coda } f'8 g'4 | \endLine

\once \override Score.RehearsalMark.font-size = #5
\mark \markup { \musicglyph #"scripts.coda" }

\partBar
bes'4 r4 r2_\markup{"Solo on entire form"} |
r1 | \songEndBar
s1 s1
