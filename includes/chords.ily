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


jazzChordDefinitions={
  %<c e g a>-\markup { \super { "6" } }
  <c e g b>-\markup { \super { "△7" } }

  %% dom
  <c e g bes d' a'>-\markup { \super { "13" } }

  %% minor
  <c ees g>-\markup { "-" }
  <c ees g bes>-\markup { \super { "-7" } }
  <c ees g bes d'>-\markup { \super { "-9" } }
  <c ees ges bes>-\markup { "-" \super { "7 " \flat "5" } }

  %% minor-major7
  <c ees g b>-\markup { "-" \super { "△7" } }

  %% dim
  <c ees ges>-\markup { \super "o" }
  <c ees ges beses>-\markup { \super "o" \super { "7" } }
  < c e ges> -\markup \super "5-"
  < c e gis> -\markup \super "+"

  %% alt/sus
  <c ees ges bes des' fes' aes'>-\markup \super {7alt}
  %<c e g bes f'>-\markup \super {7sus}
  %<c e g bes d f'>-\markup \super {9sus}
  %<c e g f'>-\markup \super {sus}
  %%<c e gis bes d'>-\markup { \super { "9 " \sharp "5" } }
  %<c e g bes d' fis'>-\markup { \super { "9 " \sharp "11" } }
}

jazzChordExceptions=#(append
    (sequential-music-to-chord-exceptions jazzChordDefinitions #t)
    ;ignatzekExceptions
)

% usage: chordNameExceptions = #jazzChordExceptions
