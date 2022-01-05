\header {
  title = "Full House"
  subtitle = ""
  composer = "Music by John Leslie (Wes) Montgomery"
  poet = ""
  meter = ""
  tagline = ""
  footer = ""
}
% copyright:

\score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
      \set chordChanges = ##f
      \set chordNameExceptions = #jazzChordExceptions
      \set Score.currentBarNumber = #4

      \chordmode {
        \partial 2 s2

        \boxMark "Intro"
        g1*10:m9
      }
    }

  %\new Voice="Voice" \with { \consists #(custom-line-breaks-engraver '(4 4 4)) } {
  \new Voice="Voice" {
    \transpose c c {
      \relative c' {
        \key bes \major
        \time 3/4
        \numericTimeSignature

        \partial 2 r8 bes'8 r8 f'8

        \repeat volta 2 {
          \voltaStartBar

          g8 d8 f8 g8 r4
          r8 a4.~ a8 d,8
          f8 f8 d8 f8 r4
          r8 d8 r8 f8 r8 d8 \endLine

          g8 d8 f8 g8 r8 a8
          r8 g8 r8 f8 d8 c8
          d8 c8 bes8 g8 r4
          %\songEndBar
        }
        \alternative {
          {
            r8 d'8 r8 f8 r8 d8
            \voltaEndBar
          }
          {
            r4 r4 r8 d8
          }
        }

        \boxMark "A"
        \repeat volta 2 {
          \voltaStartBar
        }
        \alternative {
        }
      }
    }
  }
  >>
}
