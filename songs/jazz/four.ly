title: Four
subsubtitle: 1954
composer: Miles Davis (... or Eddie 'Cleanhead' Vinson)
poet: Jon Hendricks
meter: Medium Swing
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions

  \partial 2 s2
  \repeat volta 2 {
    ees1:maj7 | ees1:maj7 |
    ees1:m7 | aes1:7 | f1:m7 |
    f1:m7 | aes1:7 | des1:7 |
    g1:m7 | fis2:m7 b2:7 | f1:m7 |
    bes1:7 |
  } \alternative {
    {
      g1:m7 | fis2:m7 b2:7 |
      f1:m7 | bes1:7 |
    }
    {
      g2:m7 fis2:m7 |
      f2:m7 bes2:7 | ees1:maj7 | \LPC f2:m7 \RPC bes2:7 |
    }
  }
}
---
\relative c' {
  \key ees \major
  \time 4/4
  \numericTimeSignature

  \partial 2 r8 bes8 c8 d8

  \repeat volta 2 {
    \voltaStartBar

    r8 bes8 c8 d8 r8 bes8 c8 d8 |
    r8 f8 ees8 d8 r8 bes8 c8 des8~ | \endLine

    des1~ |
    des2 r8 ees8 f8 g8 |
    r8 ees8 f8 g8 r8 ees8 f8 g8 | \endLine

    r8 bes8 aes8 g8 r8 ees8 f8 ges8~
    ges1 |
    r2 f8 g8 aes8 a8 | \endLine

    bes2 ees,8 g8 bes8 b8 |
    r8 e,4. dis2 |
    r8 c'4. bes4 a8 g8~ | \endLine

    g2 f8 g8 a8 aes8 |
  } \alternative {
    {
      bes4 r4 ees,8 g8 bes8 b8~
      b4 e,8 ees8~ dis4 r4 | \endLine

      r8 c'4. bes4 aes8 g8~ |
      g2 r8 bes,8 c8 d8 | \voltaEndBar
    }
    {
      bes'4 g8 bes8 b8 e,8 dis4 | \endLine

      c'4 aes8 f8 d'4 bes8 ees8 |
      r1^\markup { "(SOLO BREAK) - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ┤ " } |
      r1 |
      \songEndBar
    }
  }
}
---
\lyricmode {
  Of the won -- der -- ful things that you get out of life there are four. __
  Ba -- by, and they may not be many but no -- bo -- dy needs any more. __

  Of the ma -- ny facts ma -- king the list of life,
  truth takes the lead. __

  And __ \skip 1 to re -- lax know -- ing the gist of life __ it's truth you need. __

  %% verse 2
  Then the sec

  %% verse 2, ending 2
  won -- der -- ful, won -- der -- ful love that will make it four.
}
---
\lyricmode {
  Then the sec -- ond is ho -- nor and hap -- pi -- ness makes num -- ber three. __
  When you put them to -- ge -- ther you know what the last one must be. __

  Ba -- by so the truth, hon -- or, and hap -- pi -- ness and one thing more, __
  mean -- ing on -- ly
}
