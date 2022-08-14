\version "2.23.9"

\markup "The chord symbols used in this book."

whiteTriangle = \markup { \triangle ##f }
halfDiminished = \markup { "ø" }
jazzChordDefinitions={
  <c e g b>-\markup {
    \super {
      \override #'(thickness . 0.3)
      \whiteTriangle
      "7"
    }
  }
  
  %% power chords
  <c g>-\markup {\super {"5"} }
  <c g c'>-\markup {\super {"5"} }
  
  %% major
  <c e g b>-\markup {\super { \whiteTriangle "7" } }
  <c e g b f'>-\markup {\super { \whiteTriangle "7(11)" } }
  <c e g b a'>-\markup {\super { \whiteTriangle "7(13)" } }
  <c e g b f' aes'>-\markup {\super { \whiteTriangle "7(11," \flat "13)" } }
  <c e g b f' a'>-\markup {\super { \whiteTriangle "13(omit 9)" } }
  <c e g b d' f' a'>-\markup {\super { \whiteTriangle "13" } }

  %% dom
  <c e g bes des'>-\markup { \super { "7" \flat "9" } }
  <c e g bes d' a'>-\markup { \super { "13" } }
  <c e g bes des' a'>-\markup { \super { "13 " \flat "9" } }
  <c e ges bes des'>-\markup { "7" \super { " (" \flat "9 " \flat "5)" } }
  <c e gis bes d'>-\markup { \super { "9(" \super { \sharp } "5)" } }
  <c e gis bes dis'>-\markup { \super { "7(" \super { \sharp } " 9 " \super { \sharp } " 5)" } }
  <c e g bes f'>-\markup { \super { "7(11)" } }
  <c e g bes a'>-\markup { \super { "7(13)" } }

  %% minor
  <c ees g>-\markup { "-" }
  <c ees g a>-\markup { "-" \super { "6" } }
  <c ees g bes>-\markup { "-" \super { "7" } }
  <c ees g bes d'>-\markup { "-" \super { "9" } }
  <c ees g bes d' f'>-\markup { "-" \super { "11" } }
  <c ees g bes d' f' a'>-\markup { "-" \super { "13" } }
  <c ees g bes f'>-\markup { "-" \super { "7(11)" } }
  <c ees g bes a'>-\markup { "-" \super { "7(13)" } }
  <c ees g bes d' f'>-\markup { "-" \super { "9(11)" } }
  <c ees g bes d' a'>-\markup { "-" \super { "9(13)" } }
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


chordmusic = \relative {
  \chordmode {
    c4 c4:5 c4:5.8 c4:6 |
    c4:m c4:aug c2:dim |
    
    \break
    
    c2:maj7 c2:7 |
    c2:m7 c2:m9 |
    c2:m11 c2:m13
    
    \break
    
    c4:7.11
    c4:maj7.13
    c4:maj7.11.13-
    c4:m9.13
    
    \break
    
    c4:maj7
    c'4:maj7/e
    c'4:maj7/g
    c'4:maj7/b
    
    \break
    
    c2:sus2
    c2:sus4
    c2:7sus4
    
    <c' ees' ges' bes' des'' fes'' aes''>
  }
}
<<
  \new ChordNames {
    \set chordNameExceptions = #jazzChordExceptions

    \chordmusic
  }
  {
    \chordmusic
  }
>>