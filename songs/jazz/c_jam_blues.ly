title: C Jam Blues
composer: Duke Ellington
year: 1942
meter: Fast
type: blues
---
% night train - oscar peterson
% blues in orbit - duke ellington
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions

  \repeat unfold 4 { c1:7 }
  f1:7 | f1:7 | c1:7 | c1:7 |
  d1:m7 | g1:7 | c1:7 | c1:7

  \repeat unfold 3 { c1:7 }
}
---
\relative c'' {
  \key c \major
  \time 4/4
  \numericTimeSignature

  \repeat unfold 2 {
    g8-- g8-. r4 r2 |
    g8-- g8-. r4 g8-- g8-. r4 |
    g4. c8-> r2 |
    r1 | \endLine
  }

  g8-- g8-. r4 r2 |
  g8-- g8-. r4 g8-- g8-. r4 |
  g4.^\markup { \musicglyph "scripts.coda" }  c8-> r2 |
  r1_\markup{ "AFTER SOLOS, DC. AL" \raise #1 { \musicglyph "scripts.coda" }} | \endLine

  %% coda
  \once \override Score.RehearsalMark #'font-size = #4
  \mark \markup { \musicglyph "scripts.coda" }

  \new ImproVoiceTwo {
    b1 |
    b8-> r8 r8 b8-> r4 b4->~ |
    b1^\fermata \bar "|." s1
  }
}
