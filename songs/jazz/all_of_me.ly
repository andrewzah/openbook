title: All Of Me
composer: Seymour Simons & Gerald Marks
meter: Medium Swing
---
\chordmode {
  \boxMark "A"
  c1:maj | c1:maj | e1:7 | e:7 |
  a1:7 | a1:7 | d1:m7 | d1:m7 |
  e1:7 | e1:7 | a1:m7 | a1:m7 |
  d1:7 | d1:7 | d1:m7 | g1:7 |

  \boxMark "B"
  c1:maj | c1:maj | e1:7 | e1:7 |
  a1:7 | a1:7 | d1:m7 | d1:m7 |
  f1:7 | f1:m7 | c2:maj e2:m7 | a1:7 |
  d1:m7 | g:7 | c2:6 \LPC ees2:dim | d2:m7 \RPC g2:7 |
}
---
\relative c' {
  \key c \major
  \time 4/4
  \numericTimeSignature
    %\tempo 4 = 130

    c'4 g8 e8~ e2~
    | e2 \tuplet 3/2 { c'4 d c }
    | b4 gis8  e ~ e2 ~
    | e1 \endLine

    | a4. g8 e2 ~
    | e4 dis4 \tuplet 3/2 { e4 bes'4 a4 }
    | g2 f2 ~
    | f1 \endLine

    | e4. ees8 d2 ~
    | d2 \tuplet 3/2 { e4 gis4 c4 }
    | d2 c2 ~
    | c1 \endLine

    | b4. bes8 a2 ~
    | a2 \tuplet 3/2 { a4 d4 b4 }
    | a1
    | b1 \endLine

    | c4 g8 e ~ e2 ~
    | e2 \tuplet 3/2 { c'4 d4 c4 }
    | b4 gis8  e ~e2 ~
    | e1 \endLine

    | a4. g8 e2 ~
    | e4 dis \tuplet 3/2 { e4 bes'4 a4 }
    | g2 f2 ~
    | f1 \endLine

    | d'2 c4 b4
    | d2. c4
    | b2 e,4  g4
    | b2. a4 \endLine

    | c2 a4 c4
    | e2 e2
    | c1 ~
    | c1

    \songEndBar
}
---
\lyricmode {
  All of me __
  why not take all of me, __
  can't you see __
  I'm no good with -- out you? __

  Take my lips __
  I want to lose them, __
  take my arms
  I ne -- ver use them.

  Your good -- bye __
  left me with eyes that cry, __
  how can I go on dear, with -- out you?

  % first repeat
  You took the part
  that once was my heart,
  so why not take all of me?

  % second repeat
  You took the best
  So why not take the rest
  Ba -- by take all of me. __
}
