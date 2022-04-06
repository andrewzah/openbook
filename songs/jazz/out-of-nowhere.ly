title: Out of Nowhere
composer: Johnny Green
poet: Edward Haynes
subsubtitle: 1931
meter: Medium
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 2 {
    g1:maj7 | g1:maj7 | bes1:m7 | ees1:7 |
    g1:maj7 | g1:maj7 | b1:m7 | e1:7 |
  } \alternative {
    {
      a1:m7 | b2:m7.5- e2:7 | a1:m7 | a1:m7 |
      ees1:7 | ees1:7 | a1:m7 | d1:7 |
    }
    {
      a1:m7 | b2:m7.5- e2:7 | a1:m7 | f1:7.11+ |
      b2:m7 bes2:dim7 | a2:m7 d2:7 | g1:6 | \LPC a2:m7 \RPC d2:7 |
    }
  }
}
---
\key g \major
\time 4/4
\numericTimeSignature

\repeat volta 2 {
  \voltaStartBar
  d'8 e'8 fis'8 a'8~ a'2~ |
  a'8 g'4. d'4 e'4 |
  f'4. f'8~ f'2~ |
  f'2. r4 | \endLine

  d'8 e'8 fis'8 a'8~ a'2~ |
  a'4 g'4 d'4 e'4 |
  fis'1 |
  e'1 | \endLine

} \alternative {
  {
    e'8 f'8 e'8 c''8~ c''2 |
    e'8 f'8 e'8 b'8~ b'4 e'4 |
    b'1 |
    a'1 | \endLine

    \tuplet 3/2 { bes'4 a'4 g'4 } g'2 |
    \tuplet 3/2 { g'4 a'4 bes'4 }
      \tuplet 3/2 { bes'4 g'4 bes'4 } |
    d''1~ |
    d''1 | \endLine
  }
  {
    e'8 f'8 e'8 c''8~ c''2 |
    \tuplet 3/2 { e'4 f'4 e'4 }
      \tuplet 3/2 { b'4 c''4 d''4 } |
    e''1 |
    b'1 | \endLine

    a'8 fis'4 g'8 e'4 fis'4 |
    d'2 b'2 |
    g'1~ |
    g'2 r2 |
  }
}

\songEndBar
---
\lyricmode {
  You came to me __ from out of no -- where. __
  You took my heart __ and found it free. __ \skip 1
  Won -- der -- ful dreams, __
  won -- der -- ful schemes __ from no -- where,
  made ev -- 'ry hour sweet as a flow  -- er for me. __

  I'll al -- ways wait __ for your re -- turn out of no -- where,
  hop -- ing you'll bring your love to me. __
}
---
\lyricmode {
  If you should go __ back to your no -- where, __
  leav -- in gme with __ a mem -- o -- ry, __ \skip 1
}
