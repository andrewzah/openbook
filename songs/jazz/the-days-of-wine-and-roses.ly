title: The Days Of Wine And Roses
composer: Henry Mancini
subsubtitle: From Days of Wine and Roses (1962)
meter: Medium Swing
poet: Johnny Mercer
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \partial 4 s4

  \repeat volta 2 {
    g1:maj7 | f1:7.11+ | b1:m7 | e1:7.9- |
    a1:m7 | a1:m7 | f1:7.11+ | f1:7.11+ |
  } \alternative {
    {
      g1:maj7 | e1:m7 | a1:m7 | a1:m7/g |
      fis2.:m7.5- b4:7.9- | e2:m7 a2:7 | a1:m7 | d1:7 |
    }
    {
      g1:maj7 | e2:m7 e2:m7/d | cis1:m7.5- | fis1:7.9- |
      b2:m7 e2:m7 | a2:m7 d2:7 | g1:6 | \LPC a2:m7 \RPC d2:7 |
    }
  }
}
---
\key g \major
\time 4/4
\numericTimeSignature

\partial 4 d'4

\repeat volta 2 {
  b'1~ |
  b'4 a'4 b'4 d''4 |
  e''2 d''2~ |
  d''2 d''4 b'4 | \endLine

  b'4 e'4 e'2~ |
  e'2 d''4 b'4 |
  b'4 ees'4 ees'2~ |
  ees'2 b'4 a'4 | \endLine

} \alternative {
  {
    a'4 d'4 e'4. fis'8 |
    a'4 g'4 b'4 e''4 |
    d''2. c''4 |
    d''4 c''4 b'4 a'4 | \endLine

    b'2. fis'4 |
    a'4 g'4 fis'4. e'8 |
    a'1~ |
    a'2 r4 d'4 | \endLine
  }
  {
    a'4 d'4 e'4 fis'4 |
    g'4 a'4 b'4 d''4 |
    fis''1~ |
    fis''2. e''4 | \endLine

    d''4 b'4 a'4 g'4 |
    b'4 b'2 e'4 |
    g'1_\markup{"Fine"} |
    r1
  }
}

\songEndBar
