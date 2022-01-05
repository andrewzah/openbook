\header {
  title = "I Got Rhythm"
  composer = "Music by George Gershwin"
  poet = "Lyrics by Ira Gershwin"
  meter = "Medium Up Swing"
  tagline = ""
  footer = ""
}

\score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
      \set chordChanges = ##f
      \set chordNameExceptions = #jazzChordExceptions
      \set Score.currentBarNumber = #4

      \transpose c c {
        \chordmode {

          \boxMark "A1"
          bes2:6 g2:7.9- | c2:m7 f2:7 | bes2:6 g2:7.9- | c2:m7 f2:7 \endLine
          bes2 bes2:7 | ees2 ees2:m6 | bes2:6 g2:7.9- | c2:m7 f2:7 \endLine

          \boxMark "A2"
          bes2:6 g2:7.9- | c2:m7 f2:7 | bes2:6 g2:7.9- | c2:m7 f2:7 \endLine
          bes2 bes2:7 | ees2 ees2:m6 | bes2:6 f2:7 | bes1:6 \endLine

          \boxMark "B"
          d1:7 | d1:7 | g1:7 | g1:7 \endLine
          c1:7 | c1:7 | f1:7 | f1:7 \endLine

          \boxMark "A2"
          bes2:6 g2:7.9- | c2:m7 f2:7 | bes2:6 g2:7.9- | c2:m7 f2:7 \endLine
          bes2 bes2:7 | ees2 ees2:m6 | bes2:6 f2:7 | bes1:6 \endLine
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \relative c'' {
        \key bes \major
        \time 4/4
        \numericTimeSignature

        \repeat unfold 32 { r1 }

        \songEndBar
      }
    }
  }
  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
      I __ got rhy -- thm, __
      I __ got mu -- sic.

      I __ got my man.
      Who could ask for a -- ny -- thing more?

      Old __ Man Troub -- le __
      I __ don't mind him,
      You won't find him
      Round my door.

      I __ got star -- light,
      I __ got sweet dreams,

      I __ got my man.
      Who could ask for a -- ny -- thing more,
      Who could ask for a -- ny -- thing more?
    }
  }
  >>
}
