\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/symbols.ily"
\include "../includes/functions.ily"
\include "../includes/chords.ily"

buildtime = #(strftime "%c" (localtime (current-time)))

\book {
  \bookpart {
    \markup { \fill-line { \center-column {
      \null
      \null
      \null
      \null
      % \epsfile #X #20 #"logo.eps"
      \null
      \null
      \null
      \null
      \null
      \null
      \null
      \line{ \abs-fontsize #36 \bold "The Openbook" }
      \null
      \line{ \abs-fontsize #12 "An open-source, libre songbook." }
      \null
      \null
      \line{ \abs-fontsize #20 "Volume I" }
      \null
      \null
      \null
      \line{ \abs-fontsize #20 "For Concert Instruments" }
      \null
      \null
      \null
    }}}

    \score {
      <<
        \new Staff="Melody" \with {
          \remove "Clef_engraver"
        }{
          \new Voice="Voice"
          \time 4/4
          \key c \major
          \set fontSize = #-3
          \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment
1/128)

          c''4 bes'8 a'8 c''4 bes'8 a'8 |
          c''8 g'4.~ g'2 |
        }
      >>
      \layout {
        #(layout-set-staff-size 55)
        indent = 2\cm
      }
    }
  }

  \bookpart {
    \markup { \fill-line { \center-column {
      \null
      \null
      \line{ \abs-fontsize #20 "Meta Information" }
      \null
      \null
      \line{ \abs-fontsize #14 "Version 0.7.5" }
      \null
      \line{ \abs-fontsize #14 "Containing 53 Tunes" }
      \null
      \line{ \abs-fontsize #14 "Website:" }
      \line{ \abs-fontsize #14
        \with-url #"https://andrewzah.com/openbook" https://andrewzah.com/openbook
      }
      \null
      \null
      \line{ \abs-fontsize #14 "Compiled on:" }
      \line{ \abs-fontsize #13 \buildtime }
    }}}
  }


  \markuplist \table-of-contents
  \pageBreak
}

