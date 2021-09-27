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
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
      \transpose c c {
        \set chordChanges = ##f
        \set chordNameExceptions = #jazzChordExceptions
        \set Score.currentBarNumber = #4

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
        \set midiInstrument = #"acoustic grand"

        f8 des8 r8 ges8 r8 g8 r8 aes4~
        aes8 g8 ges8 des8 r4.

        f8 des8 r8 ges8 r8 g8 r8 aes4~
        aes8 g8 ges8 bes,8 r4. \endLine

        f'8 des8 r8 ges8 r8 g8 r8 aes4~
        aes8 g8 ges8 des8 r4.

        f8 des8 r8 ges8 r8 g8 r8 aes4~
        aes8 g8 ges8 bes,8 r4. \endLine

        \endLine


        \songEndBar
      }
    }
  }

  >>
  \layout {
    % make only the first clef visible
    \override Score.Clef #'break-visibility = #'#(#f #f #f) 

    % make only the first time signature visible
    \override Score.KeySignature #'break-visibility = #'#(#f #f #f) 

    % allow single-staff system bars
    \override Score.SystemStartBar #'collapse-height = #1 
  }

  \midi {
    %\context 
  }
}
