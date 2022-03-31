title: Everything Happens To Me
subsubtitle: 1940
composer: Matt Dennis
poet: Tom Adair
meter: Ballad
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \partial 8 s8

  \repeat volta 2 {
    c2:m7 f2:7 | c2:m7 des2:dim7 | c2:m7 f2:7 |
    d2:m7.5- g2:7 | b2:dim7 c2:m7.5- | d2:m7 g2:7 |
  } \alternative {
    {
      c2:m7 f2:7 | bes2:maj7 g2:7.9- |
    }
    {
      c2:m7 f2:7 | bes1:6 |
    }
  }

  f2:m7 bes2:7.9+ |
  ees2:maj7 c2:7.9- | f2:m7 bes2:7 | ees1:maj7 | e2:m7 a2:7.9+ |
  d1:maj7 | g2:m7 c2:7 | c2:m7 f2:7 | c2:m7 f2:7 |
  d2:m7 des2:dim7 | c2:m7 f2:7 | d2:m7.5- g2:7 | b2:dim7 c2:m7.5- |
  d2:m7 g2:7 | c2:m7 f2:7 | bes2:6
    \once \set chordNameFunction = #parenthesis-ignatzek-chord-names
    g2:7.9-

}
---
\key bes \major
\time 4/4
\numericTimeSignature

\partial 8 g'8

\repeat volta 2 {
  d''8 d''8 d''8 ees''8
    c''8 c''8 bes'8 a'8 |
  c''8 c''8 c''8 d''8
    bes'4 r8 g'8 |
  bes'8 bes'8 bes'8 c''8
    a'8 a'8 g'8 f'8 | \endLine

  aes'8 aes'8 aes'8 bes'8
    g'4 r8 d'8 |
  f'8 f'8 f'8 g'8
    ees'8 ges'8 a'8 bes'8 |
  c''8 c''8
    \tuplet 3/2 { c''8 c''8 a'8~ } a'2 |
} \alternative {
  {
    g'8 g'8 g'8 a'8~
      a'8 a'8 a'8 f'8~ | \endLine
    f'2. r8 g'8 | 
  }
  {
    g'8 g'8 g'8 a'8~
      a'8 a'8 a'8 bes'8~ |
    bes'2. r8 bes'8 | \partBar
  }
}

bes'8 bes'8 bes'8 bes'8
  des''8 des''8 ces''8 des''8 | \endLine

bes'8 bes'8 bes'2 r8 bes'8 |
bes'8 bes'8 bes'8 bes'8
  ces''8 ges'8 f'8 ees'8 |
bes'2. r8 bes'8 |
a'8 a'8 a'8 a'8
  c''8 c''8 bes'8 c''8 | \endLine

a'8 a'8 a'2 r8 a'8 |
bes'8 bes'8 bes'8 bes'8
  bes'8 bes'8 a'8 bes'8 |
c''2. r8 g'8 | \partBar
d''8 d''8 d''8 ees''8
  c''8 c''8 bes'8 a'8 | \endLine

c''8 c''8 c''8 d''8
  bes'4 r8 g'8 |
bes'8 bes'8 bes'8 c''8
  a'8 a'8 g'8 f'8 |
aes'8 aes'8 aes'8 bes'8
  g'4 r8 d'8 |
f'8 f'8 f'8 g'8
  ees'8 ges'8 a'8 bes'8 | \endLine

c''8 c''8
  \tuplet 3/2 { c''8 c''8 a'8~ } a'2 |
g'8 g'8 g'8 d''8~
  d''8 d''8 d''8 bes'8~ |
bes'2. r4 | \songEndBar
s1
---
\lyricmode {
  I make a date for golf and you can bet your life it rains,
  I try to give a part -- ty and the guy ups -- tairs com -- plains.
  I guess I'll go thru life just catch -- in'
  colds and miss -- in' trains. __
  Ev -- 'ry -- thing hap -- pens to me. __
  I

  Ev -- 'ry -- thing hap -- pens to me. __
  At first my heart tho't you could break this jinx for me,
  that love would turn the trick to end de -- spair, but
  now I just can't fool this head that thinks for me.

  I've mort -- gaged all my cas -- tles in the air.
  I've tel -- e -- graphed and phoned, I sent an
  'Air -- mail Spe -- cial', too.

  Your an -- swer was 'good -- bye', and there was e -- ven pos -- tage due.
  I fell in love just once and then it had to be with you. __
  Ev -- 'ry -- thing hap -- pens to me. __
}
---
\lyricmode {
  I nev -- er miss a thing, I've had the mea -- sles and the mumps,
  and ev -- 'ry time I play an ace my part -- ner al -- ways trumps.
  I guess I'm just a fool who nev -- er looks be -- fore he jumps. __
}
