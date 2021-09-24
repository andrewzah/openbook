% jazz conventions/styling example https://lists.gnu.org/archive/html/lilypond-user/2008-04/msg00304.html
% 4 bars per line https://lists.gnu.org/archive/html/lilypond-user/2012-05/msg00366.html

\header {
  title = "Naima"
  composer = "Music by John Coltrane"
  poet = "Ballad"
  tagline = ""
  footer = ""
}
% todo: copyright?

\score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } { 
      \set chordChanges = ##f
      \set chordNameExceptions = #jazzChordExceptions

      \chordmode {
        \repeat volta 2 {
          \voltaStartBar
          bes1:m7 | ees1:m7 | b2:7.5- a2:7.5- | aes1:maj7
          \voltaEndBar
        }

        b1:maj7 | bes1:7.9- | b1:maj7 | bes1:7.9-
        e1:7.9.11+ | b1:maj7 | f1:m7 | ges1:7.9.13
        bes1:m7 | ees1:m7 | b2:7.5- a2:7.5- | aes1:maj7
        bes1:m7 | ees1:m7 | b2:7.5- a2:7.5- | aes1:maj7
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \relative c' {
        \key aes \major
        \time 4/4
        \numericTimeSignature

        \repeat volta 2 {
          c'2.~ \tuplet 3/2 { c8 bes8 ees8 }
          f,1
          aes2 ges4~ \tuplet 3/2 { ges8 ees8 ges8 }
          ees1 | \endLine
        }

        \repeat volta 2 {
          bes'2.~ \tuplet 3/2 { bes8 bes8 bes8 }
          g2.~ \tuplet 3/2 { g8 ees8 f8 }
          bes2.~ \tuplet 3/2 { bes8 bes8 bes8 }
          g2.~ \tuplet 3/2 { g8 f8 ees8 } \endLine

          des'2.~ \tuplet 3/2 { des8 bes8 des8 }
          bes2.~ \tuplet 3/2 { bes8 ees8 bes8 }
          g2.~ \tuplet 3/2 { g8 ees8 g8 }
          ees1 \endLine

          c'2.~ \tuplet 3/2 { c8 bes8 ees8 }
          f,1
          aes2 ges4~ \tuplet 3/2 { ges8 ees8 ges8 }
          ees1^\markup { \caps { D.S. al Coda } } \voltaEndBar \endLine
        }

        %% coda
        \once \override Score.RehearsalMark #'font-size = #4
        \mark \markup { \musicglyph "scripts.coda" }
        ees2 f2
        g2 aes2
        bes2 c2
        ees2^\fermata \songEndBar
      }
    }
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
    }
  }

  >>
  \layout {
    \override Score.Clef #'break-visibility = #'#(#f #f #f)  % make only the first clef visible
    \override Score.KeySignature #'break-visibility = #'#(#f #f #f)  % make only the first time signature visible
    \override Score.SystemStartBar #'collapse-height = #1  % allow single-staff system bars
  }
}
