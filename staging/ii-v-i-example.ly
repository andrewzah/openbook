\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "Charlie Parker ii-V-Is"
  subsubtitle = "Typed up on 2022-03-11"
}

lickOne = {
  r4 \tuplet 3/2 { c''8 d''8 e''8 } g''8 f''8 e''8 d''8 |
  f''4. d''8 bes'8 a'8 aes'8 e''8~ |
  e''4 d''8 des''8 c''8 bes'8 \tuplet 3/2 { a'8 c''8 e''8 } |
  g''8 e''8 \tuplet 3/2 { f''8 g''8 a''8 } d'''8 c'''8 r4 | \endLine
}

lickThree = {
  r8 ees'8 \tuplet 5/4 { e'16 g'16 a'16 bes'16 b'16 } c''16 b'16 bes'16 r16 r8 ees'8 |
  e'16 g'16
    \tuplet 3/2 { a'16 bes'16 b'16 }
    c''16 b'16 bes'16 a'16
    g'16 f'16 e'16 g'16
    bes'16 des''16 g'16 a'16 |
  \tuplet 3/2 { bes'16 c''16 bes'16 } a'16 g'16 f'4 r2 |
  r1 | \endLine
}

lickFour = {
  r4 r8
    g''16 ges''16
    f''8 e''8 d''8 c''8 |
  bes'8 d'8 f'8 a'8
    g'8 f'8 \tuplet 3/2 { g'8 bes'8 des''8 } |
  c''8 bes'8
    \tuplet 3/2 { a'8 c''8 e''8 }
    g''8 f''8 e''8 d''8 |
    f''4 r4 r2 | \endLine
}

lickSix = {
  d'8 a8 \tuplet 3/2 { bes8 d'8 f'8 } \tuplet 3/2 { g'8 aes'8 a'8 } c''8 a'8 |
  bes'8 f'8 des'8 bes8 c'8 bes8 a16 c'16 e'16 g'16 |
  \tuplet 3/2 { f'4 c'4 c'4 } c'2 |
  r1 | \endLine
}

lickEight = {
  r8 g'16 bes'16 \tuplet 3/2 { d''8 f''8 a''8 } c'''8 b''8 bes''8 a''8 |
  g''8 fis''8 f''8 e''8 ees''8 d''8 c''8 bes'8 |
  c''8 g'8 \tuplet 3/2 { a'8 c''8 e''8 } g''8 e''8 c''8 g'8 |
  bes'8 g'8 a'8 c''8 r2 | \endLine
}

lickNine = {
  r8 g'16 b'16 d''16 e''16 f''16 g''16 aes''8 f''8 r4 |
  r8 g'16 bes'16 \tuplet 3/2 { des''8 e''8 aes''8 } ees'''4. des'''8 |
  c'''8 b''16 bes''16 a''8 bes''8~ bes''8 a''16 aes''16 g''8 a''8~ |
  a''4 r4 r2 | \endLine
}

lickTen = {
  r8 e'8 \tuplet 3/2 { g'8 bes'8 d''8 } g''8 ges''8 f''8 e''8 |
  d''8 des''8 c''8 a'8 bes'8 c''16 bes'16 a'8 f'8 |
  g'8 f'8 des'8 bes8 c'8 a8~ a4 |
  r1 | \endLine
}

lickEleven = {
  r4 fis'16 g'16 bes'16 d''16
    f''16 d''16 dis''16 e''16
    c''16 cis''16 d''16 c''16 |
  bes'16 a'16 g'16 f'16
    e'16 g'16 bes'16 des''16
    c''16 a'16 \tuplet 3/2 { bes'16 c''16 bes'16 }
    a'16 f'16 d'16 c'16 |
  f'4 r8 e'8 d'8 c'8~ c'4 |
  r1 | \endLine
}

lickTwenty = {
  r4 r16 fis'16 g'16 a'16
    bes'16 c''16 d''16 f''16
    a''16 g''16 fis''16 a''16 |
  g''8 a''16 bes''16
    c'''16 ces'''16 bes''16 a''16
    aes''16 g''16 ges''16 f''16
    ees''16 d''16 des''16 bes'16 |
  g'16 f'16 c''16 bes'16
    a'16 c'16 d'16 e'16
    g'16 f'16 e'16 f'16
    a'16 c''8. |
  r1 | \endLine
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose f c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions
          \set chordChanges = ##t

          \repeat unfold 9 { g1:m7 | c1:7 | f1:maj7 | f1:maj7 | }
        }
      }
    }

  \new Voice="Voice" {
    \transpose f c {
      \key f \major
      \time 4/4
      \numericTimeSignature

      \boxMark "1"
      \lickOne

      \boxMark "4"
      \lickFour

      \boxMark "8"
      \lickEight

      \boxMark "9"
      \lickNine

      \boxMark "20"
      \lickTwenty
    }

    \transpose c g {
      \key f \major
      \time 4/4
      \numericTimeSignature

      \boxMark "3"
      \lickThree

      \boxMark "6"
      \lickSix

      \boxMark "10"
      \lickTen

      \boxMark "11"
      \lickEleven

      \songEndBar
    }
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
    }
  }

 >>
}
