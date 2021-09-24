\version "2.22.1"

\include "includes/globals.ily"
\include "includes/symbols.ily"
\include "includes/functions.ily"
\include "includes/chords.ily"

\header { tagline = ##f }
buildtime = #(strftime "%c" (localtime (current-time)))

\book {
  \bookpart {
    \markup {
      \column {
        \null
        \fill-line { \fontsize #11 \bold "OpenBook (C Instruments)" }
        \null
        \null
        \fill-line { \larger \larger \bold "An open source music book." }
        \null
        \null
        \null
        \null
        \fill-line {
          \huge \bold \concat {
            "Website: "
            \with-url #"https://andrewzah.com/openbook" https://andrewzah.com/openbook
          }
        }
        \null
        \fill-line { \huge \bold "Tune copyright: © belong to their respective holders." }
        \null
        \null
        \null
        \fill-line { \small \buildtime }
      }
    }
  }

  \markuplist \table-of-contents
  \pageBreak

  \bookpart {
    \tocItem \markup "All of Me - Simons & Marks"
    \include "songs/realbook/all_of_me.ly"
  }

  \bookpart {
    \tocItem \markup "Donna Lee - Charlie Parker"
    \include "songs/realbook/donna_lee.ly"
  }

  \bookpart {
    \tocItem \markup "Misty - Erroll Garner"
    \include "songs/realbook/misty.ly"
  }

  \bookpart {
    \tocItem \markup "Naima - John Coltrane"
    \include "songs/realbook/naima.ly"
  }

  \bookpart {
    \tocItem \markup "Now's The Time - Charlie Parker"
    \include "songs/realbook/nows_the_time.ly"
  }

  \bookpart {
    \tocItem \markup "Stella by Starlight - Victor Young"
    \include "songs/realbook/stella_by_starlight.ly"
  }

  \bookpart {
    \tocItem \markup "The Song Is You - Jerome Kern & Oscar Hammerstein II"
    \include "songs/realbook/the_song_is_you.ly"
  }
}
