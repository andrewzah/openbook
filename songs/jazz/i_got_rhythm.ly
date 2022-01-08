title: I Got Rhythm
subsubtitle: From An American In Paris (1928) and Girl Crazy (1930)
composer: George Gershwin
poet: Ira Gershwin
meter: Medium Swing
---
\chordmode {
  \boxMark "A"
  \repeat volta 2 {
    bes2:6 g2:m7 | c2:m7 f2:7 | d2:m7 g2:m7 | c2:m7 f2:7
    bes2:7 bes2:7/d | ees2:7 e2:dim7 | bes2:6/f f2:7
  } \alternative {
    { bes2:6 f2:7 }
    { bes1:6 }
  }

  \boxMark "B"
  d1:7 | d1:7 | g1:7 | g1:7
  c1:7 | c1:7 | f1:7 | f1:7

  \boxMark "A"
  bes2:6 g2:m7 | c2:7 f2:7 | d2:m7 g2:m7 | c2:m7 f2:7
  bes2:7 bes2:7/d | ees2:7 e2:dim7 | bes2:6/f f2:7 | bes1:6
}
---
\relative c' {
  \key bes \major
  \time 4/4
  \numericTimeSignature

  \repeat volta 2 {
    r4 f4~ f8 g4.
    | bes4. c8~ c2
    | r4 c4~ c8 bes4.
    | g4. f8~ f2 \endLine

    | r4 f4~ f8 g4.
    | bes4. c8 ~c8 ees4 c8
    | d4 d4 c8 d8 c4

  } \alternative {
    { bes2 r2 \voltaEndBar }
    { bes1 \endLine }
  }

  | r4 d4~ d8 d4.
  | d4. e8~ e2
  | r4 d4~ d8 d4.
  | d4. g,8~ g2 \endLine

  | r4 c4~ c8 c4.
  | c4. d8~ d2
  | r4 c4~ c8 c4.
  | c4. g8~ g2 \endLine

  | r4 f4~ f8 g4.
  | bes4. c8~ c2
  | r4 c4~ c8 bes4.
  | g4. f8~ f2 \endLine

  | r4 f4~ f8 g4.
  | bes4. c8 ~c8 ees4 c8
  | d4 d4 c8 d8 c4
  | bes1

  \songEndBar
}
---
\lyricmode {
  I __ got rhy -- thm, __
  I __ got mu -- sic.

  I __ got my man.
  Who could ask for a -- ny -- thing more? more?

  Old __ Man Troub -- le __
  I __ don't mind him, __
  You won't find him __
  'round my door. __ \skip 1

  I've __ got star -- light,
  I've __ got sweet dreams,

  I've __ got my man __
  Who could ask for a -- ny -- thing more?
}
