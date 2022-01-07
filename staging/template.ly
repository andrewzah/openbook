\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/symbols.ily"

\header {
  title = "Subito"
  composer = "Music by Sonny Stitt"
  poet = ""
  meter = "Med Swing"
  tagline = ""
  footer = ""
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {

        \chordmode {
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \relative c' {
        \key aes \major
        \time 4/4
        \tempo 4 = 160
        \numericTimeSignature     

        \songEndBar
      }
    }
  }
 >>
}
