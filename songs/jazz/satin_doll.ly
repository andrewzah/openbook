title: Satin Doll
subsubtitle: 1953
composer: Duke Ellington & Billy Strayhorn
poet: Johnny Mercer
meter: 
---
\chordmode {
  \boxMark "A"
  \repeat volta 2 {
    \set chordNameExceptions = #jazzChordExceptions
    d2:m7 g2:7 | d2:m7 g2:7 | e2:m7 a2:7 | e2:m7 a2:7 |
    a2:m7 d2:7 | aes2:m7 des2:7
  } \alternative {
    { c2:maj7 d2:m7 | e2:m7 a2:7 | }
    { c1:maj7 | c1:maj7 | }
  }

  \boxMark "B"
  g2:m7 c2:7 | g2:m7 c2:7 | f1:maj7 | f1:maj7 |
  a2:m7 d2:7 | a2:m7 d2:7 | g2:7 d2:m7 | g1:7 |

  \boxMark "A"
  d2:m7 g2:7 | d2:m7 g2:7 | e2:m7 a2:7 | e2:m7 a2:7 |
  a2:m7 d2:7 | aes2:m7 des2:7 | c2:maj7 \LPC d2:m7 | e2:m7 \RPC a2:7 |
}
---
\relative c'' {
  \key c \major
  \time 4/4
  \numericTimeSignature

  \repeat volta 2 {
    \voltaStartBar
    a8 g8 a8 g8~ g8 a4. |
    r8 a4. g8 a4. |
    b8 a8 b8 a8~ a8 b4. | \endLine

    r8 b4. a8 b4. |
    r8 d4. c8 d4. |
    r8 bes4. aes4 bes8 g8~ | \endLine
  } \alternative {
    { g1~ | g1 | \voltaEndBar }
    { g1 | r2 r4 r8 g8 | \bar "||" \endLine }
  }

  c8 bes8 a8 g8~ g8 a8 b8 c8~ |
  c8 bes8 a8 g8~ g8 a8 bes8 c8~ |
  c1~ |
  c2. r8 c8 | \endLine

  d8 c8 b8 a8~ a8 b8 c8 d8~ |
  d8 c8 b8 a8~ a8 b8 c8 d8~ |
  d1~ |
  d8
  \override NoteHead.style = #'cross
  b4 b8 b8 b4. | \bar "||" \endLine
  \revert NoteHead.style

  a8 g8 a8 g8~ g8 a4. |
  r8 a4. g8 a4. |
  b8 a8 b8 a8~ a8 b4. |
  r8 b4. a8 b4. | \endLine

  r8 d4. c8 d4. |
  r8 bes4. aes4 bes8 g8~ |
  g1 |
  r1

  \songEndBar
}
---
\lyricmode {
  Cig -- a -- rette hold -- er which wigs me, o -- ver her shoul -- der,
  she digs me. Out cat -- tin', that sat -- in doll. __

  \skip 1 She's no -- bod -- y's fool, __ so I'm play -- ing it cool __ as can be. __
  I'll give it a whirl, __ but I ain't __ for no girl __ catch -- ing me. __
  Switch -- er -- oo -- ney. Tel -- e -- phone num -- bers wel you know,
  do -- ing my rhum -- bas with u -- no, and that 'n', my sat -- in doll. __
}
---
\lyricmode {
  Ba -- by, shall we __ go out skip -- pin'? Care -- ful, a -- mi -- go,
  you're flip -- pin'. Speaks Lat -- in, that sat -- in doll.
}
