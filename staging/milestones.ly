\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "Milestones"
  composer = "Miles Davis"
  subsubtitle = "1958"
  meter = "Fast Bop"
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions
          \set chordChanges = ##t

          c1:11 | c1:7 | c1:11 | c1:7 |
          c1:11 | c1:7 | c1:7 | c1:7 |
          \repeat unfold 8 { a1:m7 | }
          c1:11 | c1:7 | c1:11 | c1:7 |
          c1:11 | c1:7 | c1:7 | c1:7 |
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \key c \major
      \time 4/4
      \numericTimeSignature

      \boxMark "A"
      \voltaStartBar
      f'4 r4 g'4 r4 |
      a'4 r8 g'8 r2 |
      f'4 r4 g'4 r4 |
      a'4 r8 g'8 r2 | \endLine

      f'4 r4 g'4 r4 |
      a'4 r8 g'8 r4 r8 g'8~ |
      g'1~ |
      g'2 r2 | \voltaEndBar \endLine

      \boxMark "B"
      \voltaStartBar
      b'2 c''2 |
      d''2 c''2 |
      b'2 c''2 |
      d''2 c''2 | \endLine

      b'2 c''2 |
      e''2 b'2 |
      c''1~ |
      c''2 r2 |
      \voltaEndBar

      \boxMark "A"
      \partBar
      f'4 r4 g'4 r4 |
      a'4 r8 g'8 r2 |
      f'4 r4 g'4 r4 |
      a'4 r8 g'8 r2 | \endLine

      f'4 r4 g'4 r4 |
      a'4 r8 g'8 r4 r8 g'8~ |
      g'1~ |
      g'2 r2 | \voltaEndBar \endLine


      \songEndBar
    }
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
    }
  }

 >>
}
