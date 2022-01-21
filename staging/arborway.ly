\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "Arborway"
  subsubtitle = "From Chet Baker (In Tokyo)"
  composer = "Rique Pantoja"
  poet = ""
  meter = ""
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions

          \boxMark "A"
          ees1:maj7 | ees1:maj7 | aes1:m7.9- | aes1:m7.9- |
          a1:maj7 | a1:maj7 | a1:m6 | a1:m6 |
          g1:maj7 | g1:maj7 | bes1:/c | a1:7.13-
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \relative c' {
        \key ees \major
        \time 4/4
        \numericTimeSignature

        \voltaStartBar

        f'8 d8 bes8 g8~ g2 |
        r8 bes8 c8 ees8 r8 bes'8 r8 bes8~ |
        bes2~ bes8 b8 bes8 ges8~ |
        ges8 ees8~ ees4~ ees8 ges8 r8 ges8~ | \endLine

        ges8 aes8~ aes4~ aes4. aes8~ |
        aes8 ges8 e8 ees8~ ees8 des4 e8~ |
        e4. fis8~ fis2~ |
        fis1 | \endLine

        \songEndBar
      }
    }
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
    }
  }

 >>
}
