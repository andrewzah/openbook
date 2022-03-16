\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "(Meet) The Flintstones"
  composer = "Hoyt Curtin, Joseph Barbera, William Hanna"
  subsubtitle = "1961"
  meter = "Up"
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions
          \set chordChanges = ##t

          \repeat volta 2 {
            f1:maj7 | g1:m7 | a1:m7 | bes1:maj7 |
            f1:maj7 | g2:m7 c2:7
          } \alternative {
            {
              f1:maj7 | g2:m7 c2:7 |
            }
            {
              f1:maj7 | bes1:maj7 | a1:7 |
              a1:7 | d1:7 | d1:7 |
              g1:7 | g1:7 | c1:7 | c1:7 |
              f1:maj7 | g1:m7 | a1:m7 | bes1:maj7 |
              f1:maj7 | g2:m7 c2:7 | f1:maj7 | g2:m7 c2:7 |
              f1:maj7 | g2:m7 c2:7.9- | f1:6 | \LPC g2:m7 \RPC c2:7 |
            }
          }
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \key f \major
      \time 4/4
      \numericTimeSignature

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
