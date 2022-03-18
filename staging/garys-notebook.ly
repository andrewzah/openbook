\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "Gary's Notebook"
  composer = "Lee Morgan"
  subsubtitle = "1963"
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions
          \set chordChanges = ##t

          \repeat unfold 2 { c2.:m | des2.:7.5- | }
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \key ees \major
      \time 3/4
      \numericTimeSignature

      \voltaStartBar
      <bes c'>8. <bes c'>16 <bes' c''>4 r4 |
      r8 <>
      \voltaEndBar

      \repeat volta 2 {

      } \alternative {
        {}
        {}
      }

      \songEndBar
    }
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
    }
  }

 >>
}
