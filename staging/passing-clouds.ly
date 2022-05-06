\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "Passing Clouds"
  composer = "Erena Terakubo"
  meter = "Latin"
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions
          \set chordChanges = ##t
        }
      }
    }

  \new Voice="Voice" {
    \transpose f c {
      \key c \major
      \time 4/4
      \numericTimeSignature

      \partial 2. g'4 aes'4 g''4 |


      \repeat volta 2 {
        e''2 f''8 e''8 d''8 c''8 |
        e''4 g'4 a'4 g''4 |
        e''2 f''8 e''8 d''8 c''8 \endLine |
      } \alternative {
        {
          c''4 g''4 c'''4 a''4 |
          g''8 a'8 c''8 e''8
            g''8 aes'8 c''8 ees''8 |
          e''8 f''8 g''8 a''8
            b''8. a''16~ a''8 g''8 | \endLine

          e''8 a'8 c''2. |
          a'16 c''16 d''16 e''16
            a'8 c''8-. d''8-. e''8-. r4 |
          r4 g'4 aes'4 g''4 \endLine
        }
        {
          c''4 e''4 g''4 c'''4 |
          d'''4. c'''8 b''8 c'''8 b''8 a''8 |
          g''4 bes''8 aes''8 ees''8 f''8 g''4~ | \endLine

          g''4 g''8 a''8 c''8 d''8 c''4~ |
          c''2 r2 r1
        }
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
