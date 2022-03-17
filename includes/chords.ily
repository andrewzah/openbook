#(define (chordNamer pitch)
    (let* ((alt (ly:pitch-alteration pitch)))
  (make-line-markup
    (list (make-simple-markup
            (vector-ref #("C" "D" "E" "F" "G" "A" "B") 
              (ly:pitch-notename pitch)))
          (if (= alt 0)
            (markup "")
            (if (= alt FLAT)
              (markup ">")
              (markup "<")))))))

whiteTriangle = \markup { \triangle ##f }
halfDiminished = \markup { "ø" }
jazzChordDefinitions={
  %<c e g a>-\markup { \super { "6" } }
  <c e g b>-\markup {
    \super {
      \override #'(thickness . 0.3)
      \whiteTriangle
      "7"
    }
  }

  %% dom
  <c e g bes des'>-\markup { \super { "7" \flat "9" } }
  <c e g bes d' a'>-\markup { \super { "13" } }
  <c e g bes des' a'>-\markup { \super { "13 " \flat "9" } }
  <c e ges bes des'>-\markup { "7" \super { " (" \flat "9 " \flat "5)" } }
  <c e gis bes d'>-\markup { \super { "9(" \super { \sharp } "5)" } }
  <c e gis bes dis'>-\markup { \super { "7(" \super { \sharp } " 9 " \super { \sharp } " 5)" } }
  <c e g bes f'>-\markup { \super { "7  (11)" } }

  %% minor
  <c ees g>-\markup { "-" }
  <c ees g a>-\markup { "-" \super { "6" } }
  <c ees g bes>-\markup { "-" \super { "7" } }
  <c ees g bes d'>-\markup { "-" \super { "9" } }
  <c ees g bes f'>-\markup { "-" \super { "7(11)" } }
  <c ees ges bes>-\markup { "ø" \super { "7" } }

  %% minor-major7
  <c ees g b>-\markup { "-" \super { \whiteTriangle "7" } }

  %% dim
  <c ees ges>-\markup { \super "dim" }
  <c ees ges beses>-\markup { \super "dim7" }
  < c e ges> -\markup \super "5-"
  < c e gis> -\markup \super "+"
  % technically a hack, lilypond thinks it's a m6b5 chord with the natural 7th
  <c ees ges a b>-\markup { \super "dim7(△7)" }
  %<c ees ges beses b>-\markup { \super "o" \super { "7(△7)" } }

  %% alt/sus
  <c ees ges bes des' fes' aes'>-\markup \super {7alt}
  <c e g d f'>-\markup \super {9sus}
  %<c e g bes f'>-\markup \super {7sus}
  %<c e g f'>-\markup \super {sus}
  %<c e g bes d' fis'>-\markup { \super { "9 " \sharp "11" } }
}

jazzChordExceptions=#(append
    (sequential-music-to-chord-exceptions jazzChordDefinitions #t)
    ;ignatzekExceptions
)

% show parens around chord name
% usage: \once \set chordNameFunction = #parenthesis-ignatzek-chord-names
#(define (parenthesis-ignatzek-chord-names in-pitches bass inversion context) (markup #:line ("(" (ignatzek-chord-names in-pitches bass inversion context) ")")))

% usage: chordNameExceptions = #jazzChordExceptions
