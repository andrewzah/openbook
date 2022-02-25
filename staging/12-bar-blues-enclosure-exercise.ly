\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "12 Bar Blues Enclosure"
  subsubtitle = "Exercise"
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions

          \partial 2 s2

          bes1:7 | ees1:7 | bes1:7 | f2:m7 bes2:7 |
          ees1:7 | e1:dim7 | bes1:7 | g1:7 |
          c1:m7 | f1:7 | bes1:7 | bes1:7
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \relative c'' {
        \key bes \major
        \time 4/4
        \numericTimeSignature

        \partial 2 r8 ees8 c8 des8

        d8 f8 ees8 des8 d8 bes8 aes'8 ges8 |
        g8 bes8 aes8 ges8 g8 ees8 c8 des8 |
        d8 f8 ees8 des8 d8 bes8 a8 aes8~ |
        aes2 r8 aes8 f8 ges8 | \endLine

        g8 bes8 c8 bes8 des8 bes8 \tuplet 3/2 { r8 aes8 ges8 } |
        g8 bes8 \tuplet 3/2 { c8 bes8 des8~ } des8 ees8 c8 des8 |
        d8 f8 ees8 des8 d8 c8 bes8 b8~ |
        b2 r4 f'8 d8 | \endLine

        ees8 c8 bes8 ges8 g8 ees8 bes'8 aes8 |
        a8 c8 bes8 aes8 a8 f8 ees8 d8~ |
        d2 r2 |
        r1

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
