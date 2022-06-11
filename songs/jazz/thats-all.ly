title: That's All
composer: Alan Brandt
poet: Bob Haymes
subsubtitle: 1952
meter: Ballad
%book: "Great American Songbook"
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \partial 4 s4

  \repeat volta 2 {
    bes2 f2:7 | bes2:maj7 bes4:6 f4:7 | d2:m7 g2:9 |
    c2:m7 f2:7 | g2:m7 c2:9 | c2:m7 cis2:dim7 | d2 d4:m7 g4:7 |
  } \alternative {
    {
      fis2:7.5- f2:7 |
    }
    {
      ees4 ges4:7 bes2 |
    }
  }

  f2:m7 bes2:9 | ees1:maj7 | f2:m7 bes2:9 | ees1:maj7 |
  g2:m7 c2:7 | f1:maj7 | g2:m7 c2:7 | c2:m7 f2:7 |

  bes2 f2:7 | bes2:maj7 f2:7 | d2:m7 g2:9 |
  c2:m7 f2:7 | g2:m7 c2:7 | c2:m7 cis2:dim7 |
  d4:m des4:7 c4:m7 f4:7 | ees4 ges4:7 bes4
    \once \set chordNameFunction = #parenthesis-ignatzek-chord-names f4:7 |
}
---
\key bes \major
\time 4/4
\numericTimeSignature

\partial 4 d'8 ees'8 |

\boxMark "A1-2"
\repeat volta 2 {
  f'8 a'8 f'8 d'8 f'8 a'8 f'8 d'8 |
  f'8 f'4.~ f'4 d'8 ees'8 |
  f'8 a'8 f'8 d'8 f'8 a'8 f'8 d'8 | \endLine

  f'2. g'8 a'8 | 
  bes'8 d''8 bes'8 g'8
    bes'4. g'8 |
  bes'8 d''8 bes'8 g'8
    bes'4. g'8 | \endLine

  f'2. d'4 |
} \alternative {
  {
    c'2. d'8 ees'8
  }
  {
    bes2. bes8 bes'8 | \partBar \endLine
  }
}

\boxMark "B"
g'4 bes8 bes'8 g'4 bes8 bes'8 |
g'4 g'2 bes8 bes'8 |
g'4 bes8 bes'8 g'4 bes8 bes'8 |
g'2. c'8 c''8 | \endLine

a'4 c'8 c''8 a'4 c'8 c''8 |
a'4 a'2 c'8 c''8 |
a'4 c'8 c''8 a'4 c'8 c''8 | 
f'2. d'8 ees'8 | \partBar \endLine

\boxMark "A"
f'8 a'8 f'8 d'8
  f'8 a'8 f'8 d'8 |
f'8 f'4.~ f'4 d'8 ees'8 |
f'8 a'8 f'8 d'8
  f'8 a'8 f'8 d'8 | \endLine

f'2. g'8 a'8 |
bes'8 d''8 bes'8 g'8
  bes'4. g'8 |
bes'8 d''8 bes'8 g'8
  bes'4. g'8 |
f'2. d'4 |
bes2.
  \startParenthesis \parenthesize d'8
  \endParenthesis \parenthesize ees'8

\voltaEndBar
---
\new Lyrics="Lyrics" \lyricsto "Voice" {
  I can on -- ly give you love that lasts for -- ev -- er,
  and the pro -- mise to be near each time you call,
  and the on -- ly heart I own, for you and you a -- lone, that's all, that's all.

  I can \skip 1
  There are those I am sure who have told you they would give you the world for a toy.
  All I have are these arms to en -- fold you and a love time can nev -- er de -- destroy,
  If you're won -- d'ring what I'm ask -- ing in re -- turn dear, you'll be
  glad to know that my de -- mands are small, say it's me that you a -- dore, for
  now and ev -- er -- more, that's all, that's all.
}
---
\new Lyrics="Lyrics" \lyricsto "Voice" {
  \skip 1 \skip 1
  on -- ly give you count -- try walks in spring time, and a hand to hold when leaves
  be -- gin to fall, and a love whose burn -- ing light will warm the
  win -- ter night, that's all, that's \skip 1 \skip 1 \skip 1 all.
}
