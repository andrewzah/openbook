title: Autumn Leaves
subsubtitle: 1945
composer: Joseph Kosma
poet: Jacques Prévert & Johnny Mercer
meter: Swing
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \partial 2. s2.

  \repeat volta 2 {
    a1:m7 | d1:7 | g1:maj7 | c1:maj7 |
    fis1:m7.5- |
  } \alternative {
    {
      b1:7 | e1:m7 | e1:m |
    }
    {
      b1:7 | e1:m7 | e1:m |
      fis1:m7.5- | b1:7.9- | e1:m | e1:m |
      a1:m7 | d1:7 | g1:maj7 | g1:maj7 |
      fis1:m7.5- | b1:7.9- | e2:m7 a2:7 | d2:7 g2:7 |
      fis1:m7.5- | b1:7.9- | e1:m | e1:m |
    }
  }
}
---
\key g \major
\time 4/4
\numericTimeSignature

\partial 2. e'4 fis'4 g'4

\voltaStartBar
\repeat volta 2 {
  c''1~ |
  c''4 d'4 e'4 fis'4 |
  b'2 b'2~ |
  b'4 c'4 d'4 e'4 | \endLine

  a'1~ |
} \alternative {
  {
    a'4 b4 cis'4 dis'4 |
    g'1 |
    r4 e'4 fis'4 g'4 | \voltaEndBar \endLine
  }
  {
    a'4\repeatTie fis'4 a'4 g'4 |
    e'1~ |
    e'4 r4 dis'4 e'4 | \endLine

    fis'4 b4 fis'2~ |
    fis'4 fis'4 e'4 fis'4 |
    g'1~ |
    g'4 g'4 fis'4 g'4 | \endLine

    a'1~ |
    a'4 d'4 d''4 c''4 |
    b'1~ |
    b'4 r4 ais'4 b'4 | \endLine

    c''4 c''4 a'4 a'4 |
    fis'2. c''4 |
    b'2 b'2~ |
    b'2 e'2 | \endLine

    a'2. g'4 |
    fis'2 g'4 b4 |
    e'1 |

    \override ParenthesesItem.font-size = #5
    \startParenthesis \parenthesize r4
    e'4 fis'4
    \endParenthesis \parenthesize g'4

  }
}
---
\lyricmode {
  The fall -- ing leaves __ drift by my win -- dow, __
  the au -- tumn leaves __ of red and gold.
  I see your \skip 1 I used to hold. __

  Since you went a -- way __ the days grow long, __
  and soon I'll hear __ old win -- ter's song. __
  But I miss you most of all, my dar -- ling, __ when
  au -- tumn leaves start to fall.

  The fall -- ing
}
---
\lyricmode {
  I see your 
  lips, __ the sum -- mer kiss -- es, __
  the sun -- burned hands __
}
