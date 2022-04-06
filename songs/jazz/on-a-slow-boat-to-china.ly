title: (I'd Like to Get You on a) Slow Boat to China
composer: Frank Loesser
poet: Frank Loesser
subsubtitle: 1948
meter: Medium Swing
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 2 { 
    bes1:maj7 | b1:dim7 | c1:m7 | cis1:dim7 |
    bes1:maj7 | d1:7 | ees1:maj7 | d2:m7.5- g2:7 |

  } \alternative {
    {
      c1:m7 | e2:m7 a2:7 | bes2:maj7 aes2:7.5- | g1:7 |
      c1:7 | c1:7 | c2.:m7 ges4:7 | f1:7 |
    }
    {
      c2:m7 c2:m7/bes | aes1:7.5- | bes2:maj7 aes2:7 | g1:7 |
      c1:7 | c2:m7 f2:7 | bes1:6 | \LPC c2:m7 \RPC f2:7 |
    }
  }
}
---
\key bes \major
\time 4/4
\numericTimeSignature

\repeat volta 2 {
  \voltaStartBar

  d'2 f'4 a'4 |
  g'8 d'4.~ d'8 g'4 d'8 |
  ees'2 g'4 bes'4 |
  a'8 e'4.~ e'2 | \endLine

  f'2 bes'4 d''4 |
  a'2~ a'8 c''4. |
  g'1~ |
  g'2 r2 | \endLine
} \alternative {
  {
    ees'2 g'4 bes'4 |
    a'8 e'4.~ e'8 a'4 e'8 |
    f'2 d''8 d''4 d''8~ |
    d''1 | \endLine

    c''2 c''4 c''4 |
    a'8 a'4.~ a'2 |
    g'8 f'8 g'8 f'8
      g'8 f'8 aes'8 g'8~ |
    g'2 r2 | \endLine
  }
  {
    c''2 d''4 c''4 |
    d''8 c''4.~ c''4 bes'8 c''8 |
    d''2 ees''4 f''4 |
    ees''8 d''4.~ d''2 | \endLine

    c''2 fis'4 g'4 |
    d''2 d''2 |
    bes'1~ |
    bes'2 r2
  }
}

\songEndBar
---
\lyricmode {
  I'd love to get you __ on a slow boat to Chi -- na,
  all to my -- self, __ a -- lone. __

  Get you and keep you __ in my arms ev -- er -- more, __
  leave all your lov -- ers __ weep -- ing on the far -- a -- way shore. __

  I'd love to get you __ on a slow boat to Chi -- na, __
  all to my -- self a -- lone. __
}
---
\lyricmode {
  Out on the brin -- y with a moon big and shin -- y,
  melt -- ing your heart __ of stone. __
}
