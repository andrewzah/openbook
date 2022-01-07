title: Nardis
composer: Miles Davis
meter: Med. Fast Jazz
---
\chordmode {
  \partial 2 s2

  \boxMark "A1"
  \repeat volta 2 {
    e1 | f2:maj7 e2:maj7 | b1:7 | c1:maj7
    a1:m7 | f1:maj7 | e1:maj7
  } \alternative {
    { e1:m }
    { e1:m }
  }

  \boxMark "B"
  a1:m7 | f1:maj7 | a2:m7 f2:maj7 | f1:maj7
  d1:m7 | g1:7 | c2:maj7 f2:maj7 | f1:maj7

  \boxMark "A2"
  e1:m | f2:maj7 e2:maj7 | b1:7 | c1:maj7
  a1:m7 | f1:maj7 | e2:maj7 e2 | e1
}
---
\relative c'' {
  \key g \major
  \time 4/4
  \numericTimeSignature

  \partial 2 b2

  \repeat volta 2 {
    \voltaStartBar
    e1
    r8 dis,8 e8 e'8 dis4. c8

    <<
      b1~
      \\
      {
        \tuplet 3/2 {gis4 f4 gis4}
        \tuplet 3/2 {g4 fis4 g4}
      }
    >>
    <<
      b1
      \\
      {
        \tuplet 3/2 {fis4 e4 fis4}
        \tuplet 3/2 {e4 d4 d8 e8}
      }
    >>
    \endLine

    r8 b'4. a4 g4
    e4. a8~ a2
    \tuplet 3/2 {gis8 a8 gis8} f2 e4~->
  } \alternative {
    {
      e2 b'2
      \voltaEndBar
    }
    {
      e,2 e2
    }
  }
  \endLine

  b'2. b4~
  b2 b,8 c8 e8 g8
  b2. b4~
  b2. r4 \endLine

  r8 e4. d4 c4
  e2 d2
  b2. b4~
  b2 b2 \endLine

  e1
  r8 dis,8 e8 e'8 dis4. c8
  <<
    b1~
    \\
    {
      \tuplet 3/2 {gis4 f4 gis4}
      \tuplet 3/2 {g4 fis4 g4}
    }
  >>
  <<
    b1
    \\
    {
      \tuplet 3/2 {fis4 e4 fis4}
      \tuplet 3/2 {e4 d4 d8 e8}
    }
  >>
  \endLine

  r8 b'4. a4 g4
  e4. a8~ a2
  \tuplet 3/2 {gis8 a8 gis8} f2 e4~
  e1

  \songEndBar
}
