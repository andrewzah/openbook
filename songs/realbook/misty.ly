\header {
  title = "Misty"
  composer = "Music by Errol Garner"
  poet = "Lyrics by Johnny Burke"
  meter = "Ballad"
  tagline = ""
  footer = ""
}

% copyright: 1955. Renewed 1983 Marke Music, Limerick Music, Reganesque

\score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
      \transpose c c {
        \set chordChanges = ##f
        \set chordNameExceptions = #jazzChordExceptions
        \set Score.currentBarNumber = #4

        \chordmode {
          \partial 4 s4

          \boxMark "A"
          \repeat volta 2 {
            ees1:maj7 | bes2:m7 ees:7 | aes1:maj7 | aes2:m7 des:7
            ees:maj7 c:m7 | f:m7 bes:7
          }
          \alternative {
            {
              g:m7 c:7 | f:m7 bes:7
            }
            {
              ees2:6 des2:9 | ees1:maj7
            }
          }

          \boxMark "B"
          bes1:m7 | ees:7.9- | aes1*2:maj7
          a1:m7 | d2:7 f:7 | g2:m7.5- c:7.9- | f:m7 bes:7

          \boxMark "A"
          ees1:maj7 | bes2:m7 ees:7 | aes1:maj7 | aes2:m7 des:7
          ees:maj7 c:m7 | f:m7 bes:7 | ees2:6 \LPC c2:m7 | f2:m7 \RPC bes2:7
        }
      }
    }

  %\new Voice="Voice" \with { \consists #(custom-line-breaks-engraver '(4 4 4)) } {
  \new Voice="Voice" {
    % for bb instruments, -> \tranpose c d
    \transpose c c {
      \relative c' {
        \key ees \major
        \time 4/4
        \numericTimeSignature
        %\tempo 4 = 88

        \partial 4 bes'8 g

        %% A Section
        \repeat volta 2 {
          \bar "[|:"

          d2. bes8 c
          des c' c c c bes g ees
          c2 \tuplet 3/2 { r8 g aes } \tuplet 3/2 { c ees g } | \endLine

          bes bes bes aes bes4. aes8
          g4~ \tuplet 3/2 { g8 aes bes } ees,4~ \tuplet 3/2 { ees8 f g }
          aes8 c,4 c8 \tuplet 3/2 { d4 ees f } | \endLine
        } \alternative {
          {
            g1~ | g2. bes8 g8 \bar ":|]"
          }
          {
            ees1 | \tuplet 3/2 { r4 ees f } \tuplet 3/2 { g bes c } | \endLine
          }
        }

        %% B Section
        des8 des des des~ des2~
        des4 des8 ees \tuplet 3/2 { fes4 ees des }
        c8 c c c~ c2
        \tuplet 3/2 { r4 ees, f } \tuplet 3/2 {aes bes c } | \endLine

        d8 d d c d2~
        d8 d d c \tuplet 3/2 { f4 d c }
        bes1~
        bes2. bes8 g | \endLine

        %% A Section
        d2. bes8 c
        des c' c c c bes g ees
        c2 \tuplet 3/2 { r8 g aes } \tuplet 3/2 { c ees g }
        bes bes bes aes bes4. aes8 | \endLine

        g4~ \tuplet 3/2 { g8 aes bes } ees,4~ \tuplet 3/2 { ees8 f g }
        aes8 c,4 c8 \tuplet 3/2 { d4 ees f }
        ees1
        r \bar "|."
      }
    }
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
      %% 1st time
      Look at me, I'm as help -- less as a kit -- ten up a tree.
      And I feel like I'm cling -- ing to a cloud, I can't __ un -- der- -- stand, __
      I get mist -- y just hold -- ing your hand. __ Walk my

      %% 2nd time
      near. You can say that you're lead -- ing me on, __ but it's just what I want you to do. __ 
      Don't you no -- tice how hope -- less -- ly I'm lost? __ 
      That's why I'm foll -- low -- ing you. __

      On my own, would I wan -- der through this won -- der -- land a -- lone,
      nev -- er know -- ing my right foot from my left, my hat __ from my glove,
      __ I'm too mist -- y and too much in love.
    }
  }
  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
      Walk my way and a thou -- sand vi -- o -- lins be -- gin to play,
      or it might be the sound of your hel -- lo, that mu -- sic I hear,
      __ I get mist -- y the mo -- ment you're near.
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
