title: Airegin
composer: Sonny Rollins
subsubtitle: 1954
meter: Bop
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 2 {
    f1:m7 | c1:7.9+ | f1:m7 | f1:7 |
    bes1:m7 | f1:7.9+ | bes1:m7 | bes1:m7 |
  } \alternative {
    {
      des1:maj7 | d2:m7 g2:7 | c1:maj7 |
      cis2:m7 fis2:7 | b1:maj7 | c2:m7 f2:7 | bes1:maj7 |
      bes1:maj7 | bes1:7 | ees1:7 | aes1:maj7 |
      g2:m7.5- c2:7.9- |
    }
    {
      des1:maj7 | d2:m7 g2:7 | c1:m7.5- |
      f1:7 | bes1:m7 | ees2:7sus4 aes2 | \LPC g2:m7.5- \RPC c2:7.9- |
    }
  }
}
---
\key aes \major
\time 4/4
\numericTimeSignature

\repeat volta 2 {
  \voltaStartBar
  r4
    \tuplet 3/2 { f'8 g'8 f'8 }
    c'8 f'8 aes'8 c''8 |
    ges'4 ees''2 des''4 |
    r1 | 
  r8 c'8 f'4 g'4 a'4 | \endLine

  r4
    \tuplet 3/2 { bes'8 c''8 bes'8 }
    f'8 bes'8 des''8 f''8 |
  b'4 aes''2 ges''4 |
  r1 |
  r8 f'8 bes'4 c''4 des''4 | \endLine

} \alternative {
  {
    r4 f''2. |
    g''4 g''2 f''4 |
    e''1 |
    fis''4 fis''2 e''4 | \endLine

    dis''1 |
    f''4 f''2 ees''4 |
    d''1~ |
    d''2. r4 | \endLine

    des''1 |
    ees''4 ees''2 des''4 |
    c''1~ |
    c''2. r4 | \endLine
  }
  {
    r4 f''2. |
    g''4 g''2 f''8 ees''8 |
    r4 r8 c''8~ c''8 ges''4 ees''8 |
    f''4 f''4 bes'4 b'4 | \endLine

    c''4 r8 aes'8 r8 f'8 bes'4 |
    r8 aes'8 r8 f'8 e'4. d'8 |
    ees'4 aes'4_\markup{"Fine"} r2 |
    r1
  }
}

\songEndBar
