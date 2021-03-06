title: 2 AM
subsubtitle: From Animal Crossing - Wild World (2005)
composer: Kazumi Totaka & Asuka Ota
meter: Slow Waltz
---
%% https://thevideogamerealbook.tumblr.com/image/74008669434
\chordmode {
  \repeat unfold 4 { a2.:maj7 g2.:maj7 }
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##f

  fis2.:m7 | b2.:7 | e2.:7sus4 | e2.:7
  d2.:maj7 | cis2.:7 | cis2.:m7 | fis2.:7
  b2.:m7 | e2.:7 | a2.:dim | a2.
  fis2.:m7 | b2.:7 | e2.:maj7 | e2.:6
  cis2.:m | fis2.:7 | b2.:m9 | e2.:7sus4
}
---
\relative c'' {
  \key a \major
  \time 3/4
  \numericTimeSignature

  r4 cis2
  r4 b2
  r4 cis2
  r4 b2 \endLine

  cis8 e~e2
  d8 b~b2
  cis4 a4 cis4
  b2. \endLine

  a4 b4 cis4
  gis'2 a4
  e2.~ e2. \endLine

  fis4 gis4 a4
  gis2.
  e4 fis gis
  fis2. \endLine

  fis,4 a4 cis4
  e2 gis,4
  a2.~a2. \endLine

  a4 a4 a4
  a4 gis4 fis4
  gis2.~ gis2. \endLine

  gis4 gis4 gis4
  gis4 fis4 e4
  fis2.~
  fis2.

  \songEndBar
}
