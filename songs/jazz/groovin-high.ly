title: Groovin' High
composer: John 'Dizzy' Gillespie
subtitle: Contrafact of Whispering
subsubtitle: 1945
meter: Bop
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 2 {
    ees1:6 | ees1:6 | a1:m7 |
    d1:7 | ees1:6 | ees1:6 |
    g1:m7 | c1:7 | f1:7 |
    f1:7 |
  } \alternative {
    {
      f1:m7 | bes1:7 |
      g1:m7 | fis1:m7 | f1:m7 |
      bes1:7.9- |
    }
    {
      f1:m7 | bes1:7 |
      f1:m7 | des1:7 | ees1:6 | \LPC f2:m7 \RPC bes2:7 |
    }
  }
}
---
\key ees \major
\time 4/4
\numericTimeSignature

\repeat volta 2 {
  bes'8 g'8 r4 r2 |
  bes'8 g'8 r4 r2 |
  r8 e'8 a'8 c''8
    b'8 a'8 gis'8 e'8 | \endLine

  g'8 f'8 fis'8 d''8~ d''4
    c''8 a'8 |
  bes'8 g'8 r4 r2 |
  bes'8 g'8 r4 r2 | \endLine

  r8 d'8 g'8 bes'8
    a'8 g'8 fis'8 d'8 |
  f'8 ees'8 e'8 c''8~ c''4
    bes'8 gis'8 |
  a'8 f'8 r4 r2 | \endLine

  \tuplet 3/2 { a'16 bes'16 a'16 } f'8 r4 r2 |
} \alternative {
  {
    r8 c'8 f'8 aes'8
      g'8 f'8 e'8 c'8 |
    ees'8 cis'8 d'8 bes'8~ bes'4
      aes'8 fis'8 | \endLine

    g'8 bes'8 d''8 f''8~ f''4
      d''8 bes'8 |
    e''8 cis''8 r4 r4 r8 ees'8 |
    f'8 aes'8 c''8 ees''8~ ees''4
      c''8 aes'8 | \endLine

    d''8 b'8 r4 r4 b'8 a'8 |
    \voltaEndBar
  }
  {
    r8 c'8 f'8 aes'8
      g'8 f'8 e'8 c'8 |
    ees'8 cis'8 d'8 bes'8~ bes'4 aes'4 | \endLine

    f'4-. f'8 g'8 aes'8 g'8 f'4-. |
    aes'4-. aes'8 bes'8 ces''8 bes'8 aes'4-. |
    ees''4-._\markup{\caps{"Fine"}} r4 r2 |
    r1
  }
}
\songEndBar
