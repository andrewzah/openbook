\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/symbols.ily"

\header {
  title = ""
  subsubtitle = ""
  composer = ""
  poet = ""
  meter = ""
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
        \key bes \major
        \time 4/4
        \numericTimeSignature

        \songEndBar
      }
    }
  }
 >>
}
