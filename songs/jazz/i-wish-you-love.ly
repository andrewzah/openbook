title: I Wish You Love
composer: Léo Chauliac & Charles Trenet
subsubtitle: Originally 'Que reste-t-il de nos amours?' (1942)
meter: Ballad / Med. Swing
poet: Charles Trenet & Albert Askew Beach
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \partial 2 c2:7.9- |

  \repeat volta 2 {
    f1:m7 | bes1:7 | g1:m7 | ges1:dim7 | f1:m7 
  } \alternative {
    {
      bes1:7 | ees2:6 aes2:maj7 | g2:m7.5- c2:7.9- |
    }
    {
      bes1:7 | bes1:m7 | ees1:7 |
      aes1:maj7 | aes2:m7 des2:7 | ees2:maj7 aes2:maj7 | g2:m7.5- c2:7.5+ |
    }
  }

  f1:m7 | c2:m7 f2:7 | f2:m7 bes2:7 | g2:m7.5- c2:7.9- |
  f1:m7 | bes1:7 | g1:m7 | ges1:dim7 |
  f1:m7 | bes1:7 | ees1:6 | \LPC g2:m7.5- \RPC c2:7.9- |
}
---
\key ees \major
\time 4/4
\numericTimeSignature

\boxMark "A"
\partial 2 \tuplet 3/2 { g'4 aes'4 bes'4 }
\repeat volta 2 {
  g'2 \tuplet 3/2 { f'4 g'4 f'4 } |
  g'2 \tuplet 3/2 { f'4 f'4 bes'4 } |
  f'2 \tuplet 3/2 { ees'4 f'4 ees'4 } | \endLine

  f'2 \tuplet 3/2 { ees'4 ees'4 aes'4 } |
  ees'2 \tuplet 3/2 { c'4 ees'4 c'4 }
} \alternative {
  {
    d'2 \tuplet 3/2 { g'4 f'4 ees'4 } |
    c'1~ | \endLine

    c'2 \tuplet 3/2 { g'4 aes'4 bes'4 }
  }
  {
    d'2 \tuplet 3/2 { g'4 f'4 g'4 } |
    f'1 |
    \boxMark "B"
    r2 \tuplet 3/2 { ees'4 f'4 aes'4 } | \endLine
  }
}

c''2 \tuplet 3/2 { c''4 c''4 c''4 } |
b'2 \tuplet 3/2 { ees'4 f'4 g'4 } |
bes'2 \tuplet 3/2 { bes'4 bes'4 bes'4 } |
bes'2 \tuplet 3/2 { c'4 des'4 c'4 } | \endLine

aes'2 \tuplet 3/2 { aes'4 aes'4 aes'4 } |
g'2 \tuplet 3/2 { c''4 c''4 b'4 } |
bes'1 |

\boxMark "A"
r2 \tuplet 3/2 { g'4 aes'4 bes'4 } | \endLine

g'2 \tuplet 3/2 { f'4 g'4 f'4 } |
g'2 \tuplet 3/2 { f'4 f'4 bes'4 } |
f'2 \tuplet 3/2 { ees'4 f'4 ees'4 } |
f'2 \tuplet 3/2 { ees'4 ees'4 aes'4 } | \endLine

ees'2 \tuplet 3/2 { c'4 ees'4 c'4 } |
d'2 \tuplet 3/2 { g'4 g'4 g'4 } |
ees'1 |
r1
---
\lyricmode {
  I wish you

  blue -- birds in the spring to give your heart a song to sing,
  and then a kiss, but more than this I wish you love. __

  And in Ju
  wealth, I wish you love.

  My break -- ing heart and I a -- gree that you and I
  could nev -- er be, so with my best, my ver -- y best, I set you free.

  I wish you shel -- ter from the storm, a co -- zy fire to keep you warm,
  but most of all, when snow -- flakes fall, I wish you love.
}
---
\lyricmode {
  And in Ju -- ly, a lem -- on -- ade to cool you in some leaf -- y glade,
  I wish you health, and more than
}
