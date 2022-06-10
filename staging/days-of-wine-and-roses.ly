\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "Days of Wine and Roses"
  composer = "Henry Mancini"
  poet = "Johnny Mercer"
  subsubtitle = "From Days of Wine and Roses (1962)"
  meter = ""
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions
          \set chordChanges = ##t

          \partial 4 s4

          f1:maj7 | ees1:7 | d2:7.5-.9- d2:7 | d1:7 |
          g1:m7 | g1:m7 | bes1:m | ees1:7 |
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \key f \major
      \time 4/4
      \numericTimeSignature

      \partial 4 c'4

      a'1 |
      r4 g'4 a'4 c''4 |
      d''2 c''2~ |
      c''2 c''4 a'4 | \endLine

      a'4 d'4 d'2~ |
      d'2 c''4 a'4 |
      a'4 des'4 des'2~ |
      des'2 a'4 g'4 | \endLine

      g'4 c'4 d'4. e'8 |
      g'4 f'4 a'4 d''4 |
      c''2. bes'4 |
      c''4 bes'4 a'4 g'4 | \endLine

      \songEndBar
    }
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
    }
  }

 >>
}
