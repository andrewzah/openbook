title: Ice Climber Theme
subtitle: Ice Climber
composer: Akito Nakatsuka
---
\chordmode {
  c1:7 |
  s s s f:7 s |
  c:7 s g:7 |
  f:7 c:7 g:7 
}
---
\relative c' {
  \numericTimeSignature
  \key c \major
  \time 4/4
  \repeat volta 2 {
    r8 c' r4 c16 b c b c8 c |
    ees4~ees8 c~c g bes16 g bes8 |
    r c r4 c c8 c |
    ees4~ees8 c~c g bes16 g bes8 |
    r4 c~c8 a~a4 |
    ees' d8 c bes g ges f |
    ees8 e~e4 r8 g \times 2/3 {gis a c} |
    \times 2/3 {ges' f ees} \times 2/3 {c bes g} \times 2/3 {ges f ees} \times 2/3 {c f fis} |
    \times 2/3 {fis g g} \times 2/3 {fis g g} \times 2/3 {cis d d} \times 2/3 {cis d d} |
    g4 f ees8 c4 c8 |
    c e,~e4 f fis |
    \times 2/3 {g8 fis g} \times 2/3 {aes g aes} \times 2/3 {a gis a} \times 2/3 {b a b}
  }
}
