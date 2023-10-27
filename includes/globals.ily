\version "2.23.9"
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
      ;#:roman "lilyjazz-text"
      ;#:typewriter "SwingText"
      ;#:music "lilyjazz"
      ;#:sans "lilyjazz-chord"
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

% "jazz" todo: test
%\layout {
%  \override Score.Hairpin.thickness = #2
%  \override Score.Stem.thickness = #2
%  \override Score.TupletBracket.thickness = #2
%  \override Score.VoltaBracket.thickness = #2
%  \override Score.SystemStartBar.thickness = #4
%  \override StaffGroup.SystemStartBracket.padding = #0.25
%  \override ChoirStaff.SystemStartBracket.padding = #0.25
%  %\override Staff.Tie.thickness = #3
%  \override Staff.Tie.line-thickness = #2
%  \override Staff.Slur.thickness = #3
%  \override Staff.PhrasingSlur.thickness = #3
%  \override Staff.BarLine.hair-thickness = #4
%  \override Staff.BarLine.thick-thickness = #8
%  \override Staff.MultiMeasureRest.hair-thickness = #3
%  \override Staff.MultiMeasureRestNumber.font-size = #2
%  \override LyricHyphen.thickness = #3
%  \override LyricExtender.thickness = #3
%  \override PianoPedalBracket.thickness = #2
%}

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
    startRepeatBarType = #"[|:"
    endRepeatBarType = #":|]"
    doubleRepeatBarType = #":|][|:"
  }
}

\layout {
  % make only the first clef visible
  \override Score.Clef.break-visibility = #'#(#f #f #f)

  % make only the first time signature visible
  \override Score.KeySignature.break-visibility = #'#(#f #f #f)

  % allow single-staff system bars
  \override Score.SystemStartBar.collapse-height = #1

  % show measures
  %\override Score.BarNumber.break-visibility = ##(#t #t #t)

  \context {
    \Score {
      % put marks at the left edge
      \override Score.RehearsalMark.break-align-symbols = #'(left-edge)

      % 
      \override Score.MetronomeMark.self-alignment-X = #RIGHT

      % chord styles
      %\override ChordNames . ChordName #'font-size = #2
      \override ChordNames.ChordName.font-name = #"lilyjazzchord"
      %\override ChordName #'font-size = #'1

      % lyrics
      \override LyricText.font-size = #'1

      %\override  Score.LeftEdge.break-visibility = #all-visible
    }
  }
}
