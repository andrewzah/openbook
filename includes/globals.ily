\include "functions.ily"

% Don't have textedit:// links for every note in the pdf file.
% This reduces the size of the pdf by a lot (1m -> 330k)
\pointAndClickOff

#(set-global-staff-size 19)

\paper {
  #(set-paper-size "a4")
  system-system-spacing.padding = #3

 #(define fonts
    (set-global-fonts
      ;#:roman "SwingText"
      ;#:sans "JazzCord"
      ;#:typewriter "SwingText"
      ;#:music "lilyjazz"
      ;#:brace "lilyjazz"
      ; unnecessary if the staff size is default
      ;#:factor (/ staff-height pt 20)
  ))

  %#(define fonts
  %  (make-pango-font-tree "Marker Felt"
  %                        "Highlander ITC TT"
  %                        "JazzText"
  %                        (/ staff-height pt 20)))

  paper-height = 11\in
  paper-width = 8.5\in

  % don't indent the first line
  indent = 0\mm

  system-system-spacing=
    #'((basic-distance . 1)
       (minimum-distance . 1)
       (padding . 3.5)
       (stretchability . 1))

  %% TOC
  tocItemMarkup = \tocItemWithDotsMarkup

  %top-margin = 2.5\cm
  %between-system-space = 5\mm
  %between-system-padding = 2\mm
  %bottom-margin = 2.5\cm

  %% set to ##t if your score is less than one page:
  %% ... these cause the score to be centered vertically
  %ragged-last-bottom = ##f
  %ragged-bottom = ##f

  %system-system-spacing.padding = #-4
  %system-system-spacing.stretchability = #1
  %system-system-spacing.basic-distance = #1
  %system-system-spacing.padding = #-4

  % markup-system-spacing = #'((basic-distance . 1)
  %                           (minimum-distance . 2)
  %                          (padding . 1))

  % don't print the footer/header
  %oddFooterMarkup = \markup {}
  %scoreTitleMarkup = \markup {}
  %bookTitleMarkup = \markup {}
}

% TODO: figure out how to merge these two \Score blocks

\layout {
  \context {
    \name ImproVoice
    \type "Engraver_group"
    \consists "Note_heads_engraver"
    \consists "Text_engraver"
    \consists "Rhythmic_column_engraver"
    \consists "Pitch_squash_engraver"
    squashedPosition = #0
    \override NoteHead.style = #'slash
    \hide Stem
    \alias Voice
  }
}

\layout {
  \context {
    \name ImproVoiceTwo
    \type "Engraver_group"
    \consists "Note_heads_engraver"
    \consists "Rest_engraver"
    \consists "Script_engraver"
    \consists "Text_engraver"
    \consists "Pitch_squash_engraver"
    squashedPosition = #0
    \override NoteHead.style = #'slash
    \alias Voice
  }
}

\layout {
  \context {
    \Staff
    \accepts ImproVoice
    \accepts ImproVoiceTwo

    \override VerticalAxisGroup
              .default-staff-staff-spacing
              .basic-distance = #10
  }
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\layout {
  % make only the first clef visible
  \override Score.Clef #'break-visibility = #'#(#f #f #f)

  % make only the first time signature visible
  \override Score.KeySignature #'break-visibility = #'#(#f #f #f)  

  % allow single-staff system bars
  \override Score.SystemStartBar #'collapse-height = #1

  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 3)

  \context {
    \Score {
      % put marks at the left edge
      \override Score.RehearsalMark.break-align-symbols = #'(left-edge)

      % 
      \override Score.MetronomeMark.self-alignment-X = #RIGHT

      % chord styles
      %\override ChordNames . ChordName #'font-size = #2
      \override ChordNames . ChordName #'font-name = #"lilyjazzchord"
      %\override ChordName #'font-size = #'1

      % lyrics
      \override LyricText #'font-size = #'1

      %\override  Score.LeftEdge.break-visibility = #all-visible
    }
  }
}
