\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "Emily"
  subsubtitle = ""
  composer = ""
  poet = ""
  meter = ""
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions

          \boxMark "A"
          g2.:maj7 | e2.:m7 | a2.:m9 | d4:9 d2:7.9- | g2.:maj7 |
          g2.:13.9- | c2.:maj7 | f2.:13 | e2.:maj7 | cis2.:m7 | fis2.:m7.11 |
          b2.:7.9- | e2.:m7 | a2.:13 | a2.:m7 | d2.:9+.5+

          \boxMark "B"
          g2.:maj7 | e2.:m7 | a2.:m9 | d4:9.7.11 d2:7 | g2.:7 | g4:13 g2:9.5+ |
          c2.:maj7 | b2.:7 | e2.:m7 | fis2.:9+.5+ | b2.:m7 | e2.:13
          a2.:m7 | d2.:13 | b2.:7.5- | f4:7 e2:7 | a2.:m7 | c4.:m6 c4.:m7 |

          b2.:m7 | e2.:7.9-.5- | a2.:m9 | d2.:13 | g2.:maj9 | d2.:7.9+.5+
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \relative c'' {
        \key g \major
        \time 3/4
        \numericTimeSignature

        b8 fis'8 d2~ |
        \tuplet 3/2 { d8 b8 fis'8 } d2 |
        b8 fis'8 d4 d4~ |
        d2 \tuplet 3/2 { r8 b8 a8 } |
        g2~ \tuplet 3/2 { g8 a8 b8 } | \endLine

        e2~ \tuplet 3/2 { e8 d8 b8 } |
        g2. |
        r8 a8~ a2 |
        \tuplet 4/3 { b2 e,4 e4 } |
        \tuplet 4/3 { b'2 e,4 e4 } |
        b'4. e,8 e4 | \endLine

        r8 b'4. a4 |
        g4 a4 b4 |
        a'4. g4. |
        a,2. |
        r8 bes8~ bes2 | \endLine

        b8 f'8 d2~ |
        \tuplet 3/2 { d8 b8 fis'8 } d2 |
        b8 fis'8 d4 d4~ |
        d4 d4 c4 |
        b4 c4 d4 |
        \tuplet 4/3 { b'2 a4 g4 } | \endLine

        e2. |
        fis2. |
        r8 g8~ g4~ \tuplet 3/2 { g8 fis8 e8 } |
        d2~ d8 cis8 |
        d4 e4 fis4~ |
        fis2~ \tuplet 3/2 { fis8 e8 d8 } \endLine

        c4. d8 e4~ |
        e2~ \tuplet 3/2 { e8 d8 c8 } |
        b8 c8 d2~ |
        d2 r8 g8~ |
        g4 fis4 e4 |
        d2 c4 | \endLine

        \songEndBar
      }
    }
  }
 >>
}
