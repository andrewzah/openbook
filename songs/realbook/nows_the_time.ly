\header {
  title = "Now's The Time"
  subtitle = "(Realbook)"
  composer = "Music by Charlie Parker "
  poet = ""
  meter = "Fast Blues"
  tagline = ""
  footer = ""
}
% copyright:
% Copyright (c) 1945 (Renewed 1973) Atlantic Music Corp.
% All Rights for the World excluding the U.S. Controlled and Administered by Screen Gems-EMI Music Inc.

\score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
      \set chordChanges = ##f
      \set chordNameExceptions = #jazzChordExceptions
      \set Score.currentBarNumber = #4

      \chordmode {
        \partial 4 s4

        \repeat volta 2 {
          g1:7 g1:7 g1:7 g1:7
          c1:7 c2:7 cis2:dim7
          g1:7 g1:7
          a1:m7 d1:7
          g1:7 d1:7
        }

        g1:7 g1:7
      }
    }

  %\new Voice="Voice" \with { \consists #(custom-line-breaks-engraver '(4 4 4)) } {
  \new Voice="Voice" {
    \transpose c c {
      \relative c' {
        \key g \major
        \time 4/4
        \numericTimeSignature

        \partial 4 r8 d8

        \repeat volta 2 {
          \bar "[|:"
          g8 g8 a8 d,8 g4 r8 d8
          g8 g8 a8 d,8 g4 r8 d8 | \endLine

          g8 g8 a8 d,8 g8 g8 a8 d,8
          g8 g8 a8 d,8 g4 r8 d8 | \endLine

          g8 g8 a8 d,8 g8 c,4.
          g'8 g8 a8 d,8 g8 cis,4. | \endLine

          g'8 g8 a8 d,8 g8 g8 a8 d,8
          g8 g8 a8 d,8 g4 r8 bes8~ | \endLine

          \tuplet 3/2 { bes16 c16 bes16 } g8 e8 cis8 e4 r4
          r8 a4. g8 a8 g8 f8

          \once \override Score.RehearsalMark.font-size = #4
          \mark \markup { \musicglyph "scripts.coda" }

          \endLine

          r8 d8 r4 d4 r4

          r2 r4 r8 d8
          \bar ":|]" | \endLine
        }

        \once \override Score.RehearsalMark.font-size = #4
        \mark \markup { \musicglyph "scripts.coda" }

        r8 d8 r4 d4 r8 f8
        r8 d8 r4 d4 r4^\markup {
          \center-column {
            \line { \caps { Repeat Head In/Out } }
            \line { \caps { After solos, D.S. al \musicglyph "scripts.coda" } }
          }} \bar "|."
      }
    }
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
      %% 1st time
      I nev -- er thought you'd be,
      so aw -- f'lly close to me
      un -- til I heard the mes - sage that af -- ter set me free.

      That made me want to lin -- ger,
      want to hang a - round. __ 

      Bet -- ter un -- der -- stand -- ing of these dif -- f'rent kind of sounds.

      Back __ in __ for - ty two, Bird came to New York and he blew. Come

      %% 2nd time
      his time. Now's the time.
    }
  }
  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
      Come rem -- i -- nisce with me, and think a -- bout the Bird.
      Re -- mem -- ber ev -- 'ry -- thing he did and all the things you heard.
      Oh, don't it just a -- maze ya, gets ya down in - side, __
      to think of how he had to live, then the way he died.

      Life __ was - so un -- kind, , __ 'cause now would have been 
    }
  }

  >>
  \layout {
    % make only the first clef visible
    \override Score.Clef #'break-visibility = #'#(#f #f #f) 

    % make only the first time signature visible
    \override Score.KeySignature #'break-visibility = #'#(#f #f #f) 

    % allow single-staff system bars
    \override Score.SystemStartBar #'collapse-height = #1 
  }
}
