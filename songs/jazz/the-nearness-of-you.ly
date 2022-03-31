title: The Nearness Of You
composer: Hoagy Carmichael
subsubtitle: From Romance In The Dark (1938)
poet: Ned Washington
meter: Ballad
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \partial 4. s4. |

  \repeat volta 2 {
    f1:maj7 | c2:m7 f2:7 | bes1:maj7 | bes1:dim7 |
    a2:m7 aes2:7 | g2:m7 c2:7 |
  } \alternative {
    {
      a2:m7 d2:7 | g2:m7 c2:7 |
    }
    {
      f2:6 bes2:maj7 | f2:/a aes2:7 |
    }
  }

  g1:m7 | c1:7 |
  f2:maj7 f2:7 | c2:m7 f2:7 | bes1:maj7 | a2:m7.5- d2:7 |
  g2:m7 ees2:7 | c1:7 | f1:maj7 | c2:m7 f2:7 |
  bes1:maj7 | b1:dim7 | a2:m7 aes2:7 | g2:m7 c2:7 |
  a1:m7.5- | d1:7 | g1:m7 | c1:7 |
  f2:6 \LPC d2:7 | g2:m7 \RPC c2:7 |
}
---
\key f \major
\time 4/4
\numericTimeSignature

\partial 4. c'8 f'8 g'8

\repeat volta 2 {
  \voltaStartBar

  a'2 c''4 bes'8 a'8 |
  g'4 bes'2 a'4 |
  f'2 a'4 g'4 | \endLine
  e'4 g'2 f'4 |
  c'1~ |
  c'8 d'8 e'8 f'8
    \tuplet 3/2 { g'4 f'4 e'4 } | \endLine
} \alternative {
  {
    c''1~ |
    c''2~ c''8
      c'8 f'8 g'8 |
  }
  {
    f'1~ |
    f'2 c'8 d'8 e'8 f'8 | \partBar \endLine
    g'1~ |
    g'4 e'8 f'8 g'8 f'4 e'8 |
  }
}

a'4. e'8 ees'2~ |
ees'2~ ees'8 f'4 f'8 | \endLine

d''2. d''4 |
c''2. bes'4 |
g'1~ |
g'2~ g'8 c'8 f'8 g'8 | \partBar \endLine

a'2 c''4 bes'8 a'8 |
g'4 bes'2 a'4 |
f'2 a'4 g'4 |
e'4 g'2 f'4 | \endLine

c'1~ |
c'8 d'8 e'8 f'8
  \tuplet 3/2 { g'4 f'4 e'4 } |
c''1~ |
c''4 a'8 bes'8
  \tuplet 3/2 { c''4 bes'4 a'4 } | \endLine

d''2. d'4 |
e'4 f'2 g'4 |
f'1 |
r1 | \songEndBar
---
\lyricmode {
  \repeat volta 2 {
    It's not the pale moon that ex -- cites me,
    that thrills and de -- lights me. Oh no, __
    it's just the near -- ness of 
  } \alternative {
    {
      you. __ It is -- n't
    }
    {
      you. __ When you're in my
    }
  }

  arms __ and I feel you so close to me, __
  all my wild -- est dreams come true. __ I need no

  soft lights to en -- chant me if
  you'll on -- ly grant me the right __ to hold you ev -- er so tight __
  and to feel in the night the near -- ness of you.
}
---
\lyricmode {
  It is -- n't your sweet con -- ver -- sa -- tion that
  brings this sen -- sa -- tion. Oh no, __ it's just the near -- ness of
}
