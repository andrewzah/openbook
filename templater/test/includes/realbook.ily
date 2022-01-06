% https://leighverlag.blogspot.com/2015/12/mimicking-real-book-look.html

realBookTitle = \markup {
  \score {
    {
      \override TextScript.extra-offset = #'(0 . -4.5)
      s4
      s^\markup {
        \fill-line {
          \fontsize #1 \lower #1 \rotate #7 \concat { " " #meter }
          \fontsize #8
           \override #'(offset . 7)
           \override #'(thickness . 6)
           \underline \larger \larger #title
          \fontsize #1 \lower #1 \rotate #-7 \concat { #composer " " }
        }
      }
      s
    }
    \layout {
      \omit Staff.Clef
      \omit Staff.TimeSignature
      \omit Staff.KeySignature
      ragged-right = ##f
      %\override TextScript.font-name = "JazzText"
    }
  }
}
