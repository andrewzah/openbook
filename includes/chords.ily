\version "2.22.1"

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
	%% basic
	%<c e g a>-\markup { "maj" \super { "6" } }
	%<c e g b>-\markup { "maj" \super { "7" } }

        %% major
	%<c e g b>-\markup { "maj" \super { "7" } }
	
	%% minor
	<c ees g>-\markup { "-" }
	<c ees g bes>-\markup { "-" \super { "7" } }
	<c ees ges bes>-\markup { "-" \super { "7 " \flat "5" } }
	
	%% dim
	<c ees ges>-\markup { \super "o" }
	<c ees ges beses>-\markup { \super "o" \super { "7" } }

	%<c ees ges bes des' fes' aes'>-\markup \super {7alt}
	%<c e g bes f'>-\markup \super {7sus}
	%<c e g bes d f'>-\markup \super {9sus}
	%<c e g f'>-\markup \super {sus}
	%
	%%<c e gis bes d'>-\markup { \super { "9 " \sharp "5" } }
	%<c e g bes d' a'>-\markup \super {13}
	%<c e g bes d' fis'>-\markup { \super { "9 " \sharp "11" } }

  < c ees ges > -\markup \super "dim."
  < c es ges beses > -\markup \super "7dim"
  < c e ges> -\markup \super "5>"
  < c e gis> -\markup \super "aug."
}

jazzChordExceptions=#(append
    (sequential-music-to-chord-exceptions jazzChordDefinitions #t)
    ;ignatzekExceptions
)

% usage: chordNameExceptions = #jazzChordExceptions
