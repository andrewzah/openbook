\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "There Is No Greater Love"
  subsubtitle = "1936"
  meter = "Medium"
  composer = "Isham Jones"
  poet = "Marty Symes"
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions
          \set chordChanges = ##t

          \partial 2. s2.

          bes1:maj7 ees1:7 | aes1:7.5- | g1:7 |
          c1:7 | c1:7 | c1:m7 | f1:7 |
          bes1:maj7 | ees1:7 | aes1:7.5- | g1:7 |
          c1:7 | c2:m7 f2:7 | bes1:6 | bes1:6 |
          a2:m7.5- d2:7 | g1:m | a2:m7.5- d2:7 | g1:m |
          a2:m7.5- d2:7 | g1:m | c1:7 | f1:7 |
          bes1:maj7 | ees:7 | aes:7.5- | g1:7 |
          c1:7 | c2:m7 f2:7 | bes1:6 | \LPC c2:m7 \RPC f2:7
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \key bes \major
      \time 4/4
      \numericTimeSignature

      \partial 2. a'4 bes'4 c''4

      bes'4 a'4 g'4. d'8 |
      f'4 e'4 ees'4 bes4 |
      d'1~ |
      d'4 d'4 a'4 aes'4 | \endLine

      g'1~ |
      g'4 g'4 d''4 des''4 |
      c''1 |
      r4 a'4 bes'4 c''4 | \endLine

      bes'4 a'4 g'4. d'8

      \songEndBar
    }
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
    }
  }

 >>
}
