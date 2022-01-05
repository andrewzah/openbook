% jazz conventions/styling example https://lists.gnu.org/archive/html/lilypond-user/2008-04/msg00304.html
% 4 bars per line https://lists.gnu.org/archive/html/lilypond-user/2012-05/msg00366.html

\header {
  title = "All Of Me"
  composer = "Music by Simons & Marks"
  poet = "Medium Swing"
  tagline = ""
  footer = "Lyrics & Music by Seymour Simons & Gerald Marks"
}

% copyright: Copyright © 1931 by Marlong Music. All rights outside of the U.S. Controlled by Bourne Co.

\score {
  <<
    \new ChordNames="Chords" \with { \consists Percent_repeat_engraver } {
      %\set chordChanges = ##f
      %\set chordNameExceptions = #jazzChordExceptions

      \chordmode {
        \boxMark "A"
        c1:maj c1:maj
        e:7 e:7
        a:7 a:7 d:m7 d:m7
        e:7 e:7 a:m7 a:m7
        d:7 d:7 d:m7 g:7

        \boxMark "B"
        c1:maj c1:maj e:7 e:7
        a:7 a:7 d:m7 d:m7

        f1:7 f:m7 c2:maj e:m7 a1:7
        d:m7 g:7 c2:6 \LPC ees:dim d2:m7 \RPC g:7
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \relative c' {
        %\set Staff.midiInstrument = "flute"
        %\bar "[|:"
        %\showStartRepeatBar \bar "[|:"

        \key c \major
        \time 4/4
        \numericTimeSignature
          %\tempo 4 = 130

          c'4 g8 e8~ e2~
          e2 \times 2/3 { c'4 d c }
          b4 gis8  e ~ e2 ~
          e1 \break
          a4. g8 e2 ~
          e4 dis e8 bes' a4
          g2 f2 ~
          f1 \break
          e4. ees8 d2 ~
          d2  e8 gis c4
          d2 c2 ~
          c1 \break
          b4. bes8 a2 ~
          a2 a8 d b4
          a1
          b1 \break

          c4 g8 e ~ e2 ~
          e2 \times 2/3 { c'4 d c }
          b4 gis8  e ~e2 ~
          e1 \break
          a4. g8 e2 ~
          e4 dis e8 bes' a4
          g2 f2 ~
          f1 \break

          d'2 c4 b
            d2. c4
            b2 e,4  g4
            b2. a4 \break
            c2 a4 c
            e2 e2
            c1 ~
            c1 | \songEndBar
            }
    }
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
  All of me
  why not take all of me,
  can't you see
  I'm no good with -- out you?

  Take my lips
  I want to lose them,
  take my arms
  I ne -- ver use them.

  Your good -- bye
  left me with eyes that cry,
  how can I go on dear, with -- out you?

  % first repeat
  You took the part
  that once was my heart,
  so why not take all of me?

  % second repeat
  You took the best
  So why not take the rest
  Ba -- by take all of me.
    }
  }
  >>
}
