title: 64 Bars On Wilshire
composer: Barney Kessel
subsubtitle: 1954
meter: Bright
footer: From Kessel Plays Standards, Volume 2
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \partial 2 s2

  %% "A"
  b1:m7 | e1:7.9- | cis1:m7.5- |
  fis1:7 | b1:m7 | e1:7.9- | a1:maj7 |
  a1:maj7 | gis1:m7 | cis1:7 | fis1:maj7 |
  fis1:6 | fis1:m7 | b1:7 | b1:m7 |
  cis2:m7.5- fis2:7 |

  %% "B"
  b1:m7 | e1:7.9- | cis1:m7.5- |
  fis1:7 | b1:m7 | e1:7.9- |
  cis1:m7.5- | fis1:7 | b1:m7
  d2:m7 g2:7 | c1:maj7 | c1:dim7 | b1:m7 |
  e1:7 | a1:maj7 | a1:maj7 |

  %% "C"
  g1:m7 | c1:7 | f1:maj7 | f1:maj7 |
  e1:7.9-.5+ | e1:7.9-.5+ | a1:maj7 | a1:maj7 |
  f1:7 | f1:7 | bes1:maj7 |
  bes1:maj7 | cis1:7 | cis1:7 |
  c1:9sus | e1:7 |

  %% Coda
  e1:7 | a1:maj7 | a1:maj7
}
---
\key a \major
\time 4/4
\numericTimeSignature

\partial 2 r8 ais'8 b'8 cis''8

\boxMark "A"
\partBar
d''4. eis'8~ eis'4 cis''4~ |
cis''8 d''16 cis''16 ais'8 b'8
  \tuplet 3/2 { d''8 cis''8 b'8 }
  ais'8 b'8 |
e''4. g'8~ g'4 d''4~ | \endLine

d''8 e''16 d''16 cis''8 b'8
  a'8 ais'8 fis''8 e''8 |
cis''4. d''8~ d''4 cis'''4~ |
cis'''4
  \tuplet 3/2 { cis'''8 b''8 a''8 }
  gis''8 a''8 b''8 e''8 |
r8 e''8 r8 cis''8 e''4 r4 | \endLine

r2 r8 d''8
  \tuplet 3/2 { dis''8 fis''8 ais''8 } |
cis'''4. dis''8~ dis''4 ais''4~ |
ais''8 g'8
  \tuplet 3/2 { gis'8 b'8 cis''8 }
  ais''8 g''8 d''8 b'8 |
cis'''4. cis''8~ cis''4 gis''4 | \endLine

r8 a'8
  \tuplet 3/2 { ais'8 cis''8 eis''8 }
  gis''8 eis''8 cis''8 ais'8 |
cis'''4. cis''8~ cis''4 gis''4 |
r8 gis'8
  \tuplet 3/2 { a'8 cis''8 e''8 }
  gis''8 b''8 g''8 dis''8 |
f''8 b'8 cis''8 d''8 r2 | \endLine

r2 r8 ais'8 b'8 cis''8 |
\mark \markup {
  \segno
  \box "B"
}
\partBar
d''4. eis'8~ eis'4 cis''4~ |
cis''8 d''16 cis''16 ais'8 b'8 
  \tuplet 3/2 { d''8 cis''8 b'8 }
  ais'8 b'8 |
e''4. g'8~ g'4 d''4~ | \endLine

d''8 e''16 d''16
  cis''8 b'8
  a'8 ais'8 fis''8 e''8 |
cis''4. d''8~ d''4 cis'''4~ |
cis'''4
  \tuplet 3/2 { cis'''8 b''8 a''8 }
  gis''8 a''8 b''8 cis'''8~ | \endLine

cis'''1~ |
cis'''4 r4 r8 eis'8
  \tuplet 3/2 { fis'8 a'8 cis''8 } |
d''8 cis''8
  \tuplet 3/2 { d''8 fis''8 a''8 }
  cis'''8 gis'8
  \tuplet 3/2 { a'8 c''8 e''8 } | \endLine

g''8 e''8
  \tuplet 3/2 { f''8 a''8 c'''8 }
  e'''4
  d'''8 g''8 |
r8 g''8 r8 e''8 g''4 r4 |
r4 d'''2 c'''8 e''8 |
r8 e''8 r8 d''8 e''4 r4 |
\codaMark | \endLine

b'8 d''8 fis''8 a''8
  cis'''8 e'''8 cis'''8 b''8 |
r8 b''8 r8 a''8 b''4 r4 |
r1 | \partBar \endLine

\boxMark "C"
a''1~ |
a''4. g''8 a''8 c'''8 a''8 g''8 |
e''1~ |
e''4. d''8 e''8 g''8 e''8 d''8 | \endLine

e''1~ |
e''4. d''8 e''8 gis''8 e''8 d''8 |
e''1~ |
e''4 r4 gis'8 a'8 cis''8 e''8 | \endLine

a''4. a''8~ a''2~ |
a''4. g''8 a''8 d'''8 a''8 g''8 |
f''4 f''4 f''2~ | \endLine

f''4. d''8 f''8 g''8 f''8 d''8 |
eis''4. cis''8 eis''2~ |
eis''4. dis''8 eis''8 gis''8 eis''8 dis''8 | \endLine

f''2~ f''8 g''8 f''8 e''8 |
r2 r8 ais'8 b'8_\markup{ "D.S. al Coda" } cis''8 | \partBar \endLine

\overrideCodaSize
\codaMark

b'8 d''8 fis''8 a''8
  cis'''8 e'''8 cis'''8 b''8 |
r8 b''8 r8 a''8 b''4 r4 |
r1 |

\songEndBar
