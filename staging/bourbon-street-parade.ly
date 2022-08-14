\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  %% TODO: metadata
  title = "Bourbon Street Parade"
  composer = "Paul Barbarin"
  meter = "Fast"
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions
          \set chordChanges = ##t

          %% intro
          r1 r1 r1 r2. ees4:7

          %% head
          \repeat unfold 6 { aes1 }
          \repeat unfold 10 { ees1:7 }
          \repeat unfold 6 { aes1 }
          \repeat unfold 3 { des }
          d1:dim7 | aes1 | f1:7 |
          bes1:7 | ees1:7 | aes1 | aes2. ees4:7
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \key aes \major
      \time 4/4
      \numericTimeSignature

      \boxMark "Intro"
      \tuplet 3/2 { aes'4 ees'4 aes'4 }
        \tuplet 3/2 { c''4 aes'4 c''4 } |
      ees''2. r4 |
      \tuplet 3/2 { c''4 ees''4 c''4 }
        \tuplet 3/2 { aes'4 c''4 aes'4 } |
      ees'2. r4 | \endLine

      \boxMark "Head"

      r2 c''2 |
      g'4. aes'8~ aes'2 |
      r2 c''2 |
      g'4. aes'8~aes'2 |
      r2 c''2 | 
      g'4. aes'8~aes'2 |\endLine

      des''1~ |
      des''1 |
      r2 des''2 |
      a'4. bes'8~ bes'2 |
      r2 des''2 | \endLine

      a'4. bes'8~ bes'2 |
      r2 ees''2 |
      ees''2 b'4. c''8~ |
      c''1~ | 
      c''1 | \endLine

      r2 c''2 |
      g'4. aes'8~ aes'2 |
      r2 c''2 |
      g'4. aes'8~ aes'2 | \endLine

      r2 c''2 |
      des''2 ees''2 |
      f''1~ |
      f''1 | \endLine

      bes'4. bes'8 aes'4 bes'4 |
      b'4. bes'8~ bes'2 |
      c''4. c''8 b'4 c''4 |
      des''4. c''8~ c''2 | \endLine

      ees'2 c''2 |
      g'2 c''4. aes'8~ |
      aes'1~ |
      aes'2 r2

      \songEndBar
    }
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
    }
  }

 >>
}
