\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "Song For My Father"
  subsubtitle = "October 26, 1964"
  composer = "Horace Silver"
  meter = "Medium Latin"
}

\score {
    \new PianoStaff <<
      \new ChordNames="Chords" {
        \transpose c c {
          \chordmode {
            \set chordNameExceptions = #jazzChordExceptions
            \set chordChanges = ##t

            \repeat unfold 4 { f1:m7 }

            %\boxMark "A1"
            f1:m7 | f1:m7 | ees1:7 | ees1:7 |
            des1:7 | c1:7sus4 | f1:m7 | f1:m7

            %\boxMark "A2"
            f1:m7 | f1:m7 | ees1:7 | ees1:7 |
            des1:7 | c1:7sus4 | f1:m7 | f1:m7

            %\boxMark "B"
            ees1:7 | ees1:7 | f1:m7 | f1:m7 |
            ees2:7 des2:7 | c1:7 | f1:m7 | f1:m7
          }
        }
      }

      \new Staff {
        \transpose c c {
          \relative c' {
            \key c \major
            \time 4/4
            \numericTimeSignature
            \clef "treble"

            r1 | r1 | r1 |
            r2 r8 c8 f8 aes8 | \endLine

            %% "A1"
            c8 \tuplet 3/2 { des16 c16 bes16 } aes8 bes8~ bes8
            \tuplet 3/2 { c16 bes16 aes16 } g8 aes8~ |
            aes8 \tuplet 3/2 { bes16 aes16 f16 } ees8 f8~ f8
            \tuplet 3/2 { g16 f16 ees16 } c8 <d ees>8~ |
            <d ees>1~ |
            <d ees>2 r4 g,8 fis8 | \endLine

            f8 <b des>8~ <b des>2. |
            r2_\markup{\caps{"break!"}} <d f>4. <ees g>8~ |
            <ees g>1~ |
            <ees g>2 r8 c8 f8 aes8 | \endLine

            %% "A2"
            c8 \tuplet 3/2 { des16 c16 bes16 } aes8 bes8~ bes8
            \tuplet 3/2 { c16 bes16 aes16 } g8 aes8~ |
            aes8 \tuplet 3/2 { bes16 aes16 f16 } ees8 f8~ f8
            \tuplet 3/2 { g16 f16 ees16 } c8 <d ees>8~ |
            <d ees>1~ |
            <d ees>2 r4 g,8 fis8 | \endLine

            f8 <b des>8~ <b des>2. |
            r2_\markup{\caps{"break!"}} <d f>4. <ees g>8~ |
            <ees g>1~ |
            <ees g>2 r8 <c ees>8 <c ees>8 <c ees>8 | \endLine

            %% "B"
            <c ees>8 <bes des>8 r8 <des f>8~ <des f>2~ |
            <des f>2 r8 <des f>8 <des f>8 <des f>8 |
            <des f>8 <c ees>8 r8 <ees g>8~ <ees g>2~ |
            <ees g>2 r8 <c ees>8 <c ees>8 <c ees>8 | \endLine

            <c ees>8 <bes des>8 r8 <des f>8~ <des f>2 |
            r2_\markup{\caps{"break!"}} <e aes>4. <g bes>8~ |
            <g bes>1~ |
            <g bes>2 r2 |

            \songEndBar
          }
        }
      }

      \new Staff {
        \transpose c c {
          \relative c' {
            \clef "bass"
            \key c \major
            \time 4/4
            \numericTimeSignature

            f,4 r8 c'8 c4. f,8 |
            f4 r8 c'8 c4. f,8 |
            f4 r8 c'8 c4. f,8 |
            f4 r8 c'8 c4. f,8 |

            %% "A1"
            f4 r8 c'8 c4. f,8 |
            f4. c'8 c4. ees,8 |
            ees4. bes'8 bes4. ees,8 |
            ees4 r8 bes'8 bes8 ees,8 ees8 d8 |

            des4. aes'8 aes8 des,8 aes'8 des,8 |
            c4 r4 c'4. f,8 |
            f4. c'8 c4. f,8 |
            f4. c'8 c4. f,8 |

            %% "A2"
            f4 r8 c'8 c4. f,8 |
            f4. c'8 c4. ees,8 |
            ees4. bes'8 bes4. ees,8 |
            ees4 r8 bes'8 bes8 ees,8 ees8 d8 |

            des4. aes'8 aes8 des,8 aes'8 des,8 |
            c4 r4 c'4. f,8 |
            f4. c'8 c4. f,8 |
            f4. c'8 c4. ees,8 |

            %% "B"
            ees4. bes'8 bes4. ees,8 |
            ees4. bes'8 bes4. f8 |
            f4. c'8 c4. f,8 |
            f4. c'8 c4. ees,8

            ees4. bes'8 bes8 ees,8 bes'8 des,8 |
            c4 r4 c4 r8 f8 |
            f4. c'8 c4. f,8 |
            f4. c'8 c4. f,8
          }
        }
      }

    >>
}
