\header {
  title = "Old Devil Moon"
  composer = "Music by Burton Lane & E.Y. Harburg"
  meter = "Medium"
}

\score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
      \set chordChanges = ##f
      \set chordNameExceptions = #jazzChordExceptions
      \set Score.currentBarNumber = #4

      \transpose c c {
        \chordmode {
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \relative c'' {
        \key f \major
        \time 4/4
        \numericTimeSignature

        \songEndBar
      }
    }
  }
  >>
}
