title: Rhythm-A-Ning
composer: Thelonious Monk
subsubtitle: 1957
meter: Medium Swing
#poet: Carmen McCrae
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \repeat volta 2 {
    bes2:6 bes2:7 | ees2:6 e2:dim7 | bes2:/f g2:7 | c2:m7 f2:7 |
    bes1:7 | bes1:7 | bes1:7
  } \alternative {
    {
      bes1:7 |
    }
    {
      bes1:7 |
    }
  }

  d1:7 | d1:7 | g1:7 | g1:7 |
  c1:7 | c1:7 | f1:7 | f1:7 |

  bes2:6 bes2:7 | ees2:6 e2:dim7 | bes2:/f g2:7 | c2:m7 f2:7 |
  bes1:7 | bes1:7 | bes1:7 | bes1:7

  \repeat volta 2 {
    bes2:7 g2:7 | c2:m7 f2:7 | bes2:7 g2:7 | c2:m7 f2:7 | bes1:7 | ees2:7 e2:dim7 |
  } \alternative {
    {
      bes2:/f f2:7 | bes2:7 f2:7 |
    }
    {
      bes2:/f f2:7 | bes1:7 |
    }
  }

  d1:7 | d1:7 | g1:7 | g1:7 | c1:7 | c1:7 | f1:7 | f1:7 |
  bes2:7 g2:7 | c2:m7 f2:7 | bes2:7 g2:7 | c2:m7 f2:7 |
  bes1:7 | ees2:7 e:dim7 | bes2:/f f2:7 | bes2:7 f2:7 |
}
---
\key ees \major
\time 4/4
\numericTimeSignature

\boxMark "A"
\repeat volta 2 {
  bes4-. d'4-. f'4-. r4 |
  ees'4-. g'8 bes'8 r4 f'4~ |
  f'4 g'4-. ees'4-. f'4-. |
  d'4-. ees'8 c'8 r4 r8 f'8 | \endLine

  g'8 aes'4 f'8 g'4-. aes'4 |
  r4 r8 f'8 g'8 aes'4 f'8 |
  g'4-. aes'4 r2 |
} \alternative {
  { r1 | }
  { r2 r4 r8 d'8 | \partBar \endLine }
}

\boxMark "B"
e'8 fis'8 r8 d'8 e'4-. fis'4 |
r4 r8 d'8 e'8 fis'8 r8 d'8 |
e'4-. f'4 r2 |
r2 r4 r8 d'8 | \endLine

e'8 fis'8 r8 d'8 e'4-. fis'4 |
r4 r8 d'8 e'8 fis'8 r8 d'8 |
e'4 fis'4 aes'4 bes'4 |
b'4 r4 r2 | \partBar \endLine

\boxMark "A'"
bes4 d'4-. f'4 r4 |
ees'4-. g'8 bes'8 r4 f'4~ |
f'4 g'4-. ees'4-. f'4-. |
d'4-. ees'8 c'8 r4 r8 f'8 | \endLine

g'8 aes'4 f'8 g'4-. a4 |
r4 r8 f'8 g'8 aes'4 f'8 |
g'4-. aes'4 r2 |
r1 | \partBar \endLine

\boxMark "Solos"
\new ImproVoice {
  \repeat volta 2 {
    c4 c4_\markup{"(Rhythm Changes)"} c4 c4 |
    \repeat unfold 5 { c4 c4 c4 c4 | } \endLine
  } \alternative {
    {
      \repeat unfold 2 { c4 c4 c4 c4 | }
    }
    {
      \repeat unfold 2 { c4 c4 c4 c4 | } \partBar \endLine
    }
  }

  \repeat unfold 8 { c4 c4 c4 c4 | } \partBar \endLine
  \repeat unfold 8 { c4 c4 c4 c4 | } \partBar
}

\songEndBar
