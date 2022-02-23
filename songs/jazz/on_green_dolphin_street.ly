title: On Green Dolphin Street
subsubtitle: From Green Dolphin Street (1947)
composer: Bronisław Kaper
poet: Ned Washington
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions

  \boxMark "Intro"
  c1:maj7 | c1:maj7 | ees1:maj7/f ees1:maj7/f |
  d1:maj7/f | des1:maj7/f | c1:maj7 | c1:maj7 |

  \boxMark "A"
  \repeat volta 2 {
    c1:maj7 | c1:maj7 | c1:m7 | c1:m7 |
    d1:7/c | d2:7/c des2:/c | c1:maj7 | c1:maj7
  } \alternative {
    {
      d1:m7 | g2:7 g2:7.5+.9- | c1:maj7 | c1:maj7
      f1:m7 | bes2:7 bes2:7.5+.9- | ees1:maj7 | ees2:maj7 g2:7 |
    }
    {
      d2:m7 d2:m7/c | b2:m7.5- e2:7.9- | a2:m7 a2:m7/g |
      fis2:m7.5- b2:7 | e2:m7 a2:7 | d2:m7 g2:7 | c1:maj7 | \LPC d2:m7 \RPC g2:7
    }
  }
}
---
\relative c' {
  \key c \major
  \time 4/4
  \numericTimeSignature

  \clef "bass"

  r8^\markup{ \caps { "LATIN" }}_\markup{ \caps { "Only bass & piano" }}  d8 r4 d4 r4
  | d4. d4. d4
  | r8 d8 r4 d4 r4
  | d4. d4. d4 \endLine

  | r8 d8 r4 d4 r4
  | d4. d4. d4
  | r8 d8 r4 d4 r4
  | d4. d4. d4 \endLine

  \clef "treble"

  \repeat volta 2 {
    \voltaStartBar

    c'2_\markup{ \caps{ "Continue bass pedal for 8 bars"}} c2~
    | c2 \tuplet 3/2 { b4 g4 e4 }
    | bes'1~
    | bes1 \endLine

    | a2 a2~
    | a2 \tuplet 3/2 { aes4 f4 des4 }
    | g1~
    | g1 \endLine
  } \alternative {
    {
      | g2^\markup{ \caps{ "Swing" }} d4 e4
      | f4 g4 aes4 bes4
      | g2 g2~
      | g2. g4 \endLine

      | bes4 f2 g4
      | aes4 bes4 ces4. des8
      | bes2 bes2~
      | bes2 b2

      \voltaEndBar
      \endLine
    }
    {
      | g2^\markup{ \caps{ "Swing" }} d4 e4
      | f4 g4 gis4 e'4
      | d2 c2
      | c,4 d4 ees4 b'4 \endLine

      | a2 g2~
      | g4 g4 g4 g4
      | g1~
      | g2. r4

      \songEndBar
    }
  }

  \songEndBar
}
