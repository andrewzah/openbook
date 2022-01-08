title: Lover
subsubtitle: From Love Me Tonight (1932)
composer: Richard Rodgers
poet: Lorenz Hart
meter: Medium Up Swing
---
\chordmode {
  \boxMark "A"
  \repeat volta 2 {
    c2.:maj7 | c2.:maj7 | fis2.:m7 | b2.:7
    f2.:m7 | bes2.:7 | e2.:m7 | a2.:7
    ees2.:7 | aes2.:7 d2.:m7 | g2.:7
  } \alternative {
    { e2.:m7 | a2.:7 | d2.:m7 | g2.:7 }
    { c2.:maj7 | c2.:maj7 | fis2.:m7 | b2.:7 }
  }

  \boxMark "B"
  e2.:maj7 | f2.:dim7 | fis2.:m7 | b2.:7
  e2.:maj7 | f2.:dim7 | fis2.:m7 | b2.:7
  g2.:maj7 | gis2.:dim7 | a2.:m7 | d2.:7
  e2.:m7 | a2.:7 | d2.:m7 | g2.:7
}
---
\relative c'' {
  \key c \major
  \time 3/4
  \numericTimeSignature

  \repeat volta 2 {
    \voltaStartBar

    c4 r4 c4~ |
    c4 b4. c8 |
    b4 r4 b4~ |
    b4 bes4. b8 \endLine |

    bes4 r4 bes4~ |
    bes4 a4. bes8 |
    a2.~ |
    a2 r4 \endLine |

    aes4 r4 aes4~ |
    aes4 g4. aes8 |
    g4 r4 g4~ |
    g4 a4 b4 \endLine |
  } \alternative {
    { g2.~ | g2. | r2. | r2. \voltaEndBar |}
    { g2.~ | g2. | r2. | r2. | \endLine }
  }

  fis4 g4 fis4 |
  a4 gis4 a4 |
  b4 r4 b4~ |
  b2. | \endLine

  fis4 g4 fis4 |
  a4 gis4 a4 |
  b2.~ |
  b2 r4 | \endLine

  b4 c4 b4 |
  c4 b4 c4 |
  d4 r4 d4~ |
  d4 dis4 e4 | \endLine

  g,2.~ |
  g2. |
  r2. |
  r2.

  \songEndBar
}
---
\lyricmode {
  Lov -- er, __ when I'm near you __ and I
  hear you __ speak my name __
  soft -- ly __ in my ear you __ breathe a flame. __ 

  \skip 4

  I say The De -- vil is in you,__
  and to re -- sist you I try; __
  but if you did -- n't cont -- tin -- ue __
  I would die! __
}
---
\lyricmode {
  Lov -- er, __ it's im -- mor -- al, __ but why
  quar -- rel __ with our bliss __
  when two __ lips of cor - al __ want to kiss? __
}
