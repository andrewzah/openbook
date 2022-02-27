\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "D Natural Blues"
  subsubtitle = ""
  composer = "John L. (Wes) Montgomery"
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

          \boxMark "Head"
          s2 s8 d8:7 s4 | s2 s8 g8:7 s4 | g1:7 | s2 s8 d8:7 s4 |
          g1:7 | g1:7 | d1:7 | d1:7 |
          e1:m7 | a1:7 | d1:7 | e2:m7 a2:m7 |

          \boxMark "Solos"
          d1:7 | g1:7 | d1:7 | d1:7 |
          g1:7 | g1:7 | d1:7 | d1:7 |
          e1:m7 | a1:7 | d2:7 g2:7 | d2:7 a2:7 |
        }
      }
    }

  \new RhythmicStaff \with {
    \remove "Staff_symbol_engraver"
    \omit TimeSignature
    \override VerticalAxisGroup.staff-staff-spacing = #'(
                            (basic-distance . 0)
                            (minimum-distance . 0.1)
                            (padding . 0.1))
  } {
      \partial 8 s8

      r2 r8 c8 r4 |
      r2 r8 c8 r4 |
      r1 |
      r2 r8 c4.
  }

  \new Staff {
    \new Voice="Voice" {
      \transpose c c {
        \key d \major
        \time 4/4
        \numericTimeSignature
        \tempo 4=95

        \partial 8 a'8 |

        d''8 d''8 \tuplet 3/2 { d''8 a'8 c''8 } r4 \tuplet 3/2 { r8 d'8 f'8 } |
        g'8 g'8 \tuplet 3/2 { g'8 d'8 f'8 } r4 a'8 c''8 |
        d''8 f''4. d''8 c''8 a'8 d'8 | \endLine

        aes'8 g'8 \tuplet 3/2 { fis'8 d'8 fis'8 } r4 d'8 f'8 |
        g'8 a'4.~ a'8 d'8 aes'8 g'8 |
        f'8 d'4.~ d'8 a'4 g'8 | \endLine

        eis'16 fis'16 d'4.~ d'8 c''8 a'8 g'8 |
        eis'16 fis'16 d'4.~ d'8 b8 d'8 fis'8 |
        g'4 a'4-. r4 \tuplet 3/2 { r8 d'8 f'8 } | \endLine

        g'8 g'8 g'8 f'8 \tuplet 3/2 { g'16 aes'16 g'16 } f'8 \tuplet 3/2 { d'8 a8 cis'8 } |
        d'4. d''8~ \tuplet 3/2 { d''8 c''8 a'8 } \tuplet 3/2 { g'8 d'8 fis'8~ } |
        fis'8 d'8 a8 g8~ g4 r4 | \endLine

        \voltaStartBar
        \new ImproVoice {
          \repeat unfold 4 { d4 d4 d4 d4 } \endLine
          \repeat unfold 4 { d4 d4 d4 d4 } \endLine
          \repeat unfold 4 { d4 d4 d4 d4 } \endLine
        }
        \voltaEndBar
      }
    }
  }
 >>
}
