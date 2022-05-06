\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "This I Dig Of You"
  subsubtitle = "From 'Soul Station'"
  composer = "Hank Mobley"
  meter = "Medium"
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions
          \set chordChanges = ##t

          \partial 8 s8

          %% A
          bes1:maj7 | c1:m7 | bes1:maj7 | c1:m7 |
          bes1:maj7 | c1:m7 | bes1:maj7 | f2:m7 bes2:7 |

          %% B
          ees1:maj7 | e2:m7.5- a2:7 | d1:m7 | g1:7 |
          des1:m7 | ges1:7 | c1:m7 | f1:7 |

          %% A
          bes1:maj7 | c1:m7 | bes1:maj7 | c1:m7 |
          bes1:maj7 | c1:m7 | bes1:maj7 | f2:m7 bes2:7 |

          %% C
          ees1:maj7 | e2:m7.5- a2:7 | d1:m7 | g1:7 |
          c1:maj7 | f1:7 | bes1:maj7 | bes1:maj7 |

          %% CODA
          c1:maj7 | f1:7 | bes1:maj7 | bes1:7.9- |
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \key bes \major
      \time 4/4
      \numericTimeSignature

      \partial 8 f'8

      \boxMark "A"
      d''2. r8 f''8 |
      ees''2.~ ees''8 g''8 |
      f''2. r8 a''8 |
      g''2~ g''8 ees''8 r8 g''8 | \endLine

      f''2~ f''8 d''8 r8 f''8 |
      ees''2~ ees''8 c''8 r8 ees''8 |
      d''2. bes'8 aes'8~ |
      aes'4 r4 r4 bes'4 | \endLine

      \boxMark "B"
      g''2. r4 |
      a''4. g''8 r8 a''8~ a''8 g''8 |
      f''2 r8 d''8 f''8 g''8~ |
      g''4 r4 r2 | \endLine

      r8 aes'8 r8 ees''8 r8 des''8 r8 ges''8 |
      ees''4. des''8 ees''8 des''8 r4 |
      r8 g'8 r8 d''8 r8 c''8 r8 f''8 |
      d''4_\markup{"Break!"} r4 r4 f'4 | \endLine

      \boxMark "A"
      d''2. r8 f''8 |
      ees''2.~ ees''8 g''8 |
      f''2. r8 a''8 |
      g''2~ g''8 ees''8 r8 g''8 | \endLine

      f''2~ f''8 d''8 r8 f''8 |
      ees''2~ ees''8 c''8 r8 ees''8 |
      d''2. bes'8 aes'8~ |
      aes'4 r4 r4 bes'4 | \endLine

      \boxMark "C"
      g''1 |
      a''4. g''8 a''4 g''8 f''8~ |
      f''2~ f''8 d''8 f''8 g''8~ |
      g''4 r4 r4 r8_\markup{"To Coda"} d''8 | \endLine

      r8 bes'8 r8 g'8 bes'4
        \tuplet 3/2 { g'8 bes'8 d''8 } |
      ees''4 d''4 bes'8 f'8 a'8 bes'8 |
      r1_\markup{"Break and Pick-up solo"} |
      r1 | \endLine

      \once \override Score.RehearsalMark.font-size = #5
      \codaMark

      r8 bes'8 r8 g'8 bes'4
        \tuplet 3/2 { g'8 bes'8 d''8 } |
      ees''4 d''4 bes'8 f'8 a'8 bes'8 |
      r1_\markup{"Break!"} |
      des''1

      \songEndBar
    }
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
    }
  }

 >>
}
