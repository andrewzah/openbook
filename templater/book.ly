\version "2.22.1"

\include "./test/includes/globals.ily"
\include "./test/includes/symbols.ily"
\include "./test/includes/functions.ily"
\include "./test/includes/chords.ily"

buildtime = #(strftime "%c" (localtime (current-time)))

\book {
  \bookpart {
    \markup {
      \column {
        \null
        \fill-line { \fontsize #11 \bold "OpenBook (C Instruments)" }
        \null
        \null
        \fill-line { \larger \larger \bold "An open source music book." }
        \null
        \null
        \null
        \null
        \fill-line {
          \huge \bold \concat {
            "Website: "
            \with-url #"https://andrewzah.com/openbook" https://andrewzah.com/openbook
          }
        }
        \null
        \fill-line { \huge \bold "Tune copyright: © belong to their respective holders." }
        \null
        \null
        \null
        \fill-line { \small \buildtime }
      }
    }
  }

\bookpart {
  \tocItem \markup "Crazeology - 'Little' Benny Harris"

  \header {
  arranger = ""
  composer = "Music by 'Little' Benny Harris"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = ""
  poet = ""
  subsubtitle = ""
  subtitle = ""
  tagline = ""
  title = "Crazeology"
}


  \score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
  %\set chordChanges = ##f
  %\set chordNameExceptions = #jazzChordExceptions
  %\set Score.currentBarNumber = #4

  \transpose c c {
    \chordmode {
  \boxMark "A1"
  bes2:6 g2:m7 | c2:m7 f2:7 | d2:m7 g2:m7 | c2:m7 f2:7
  aes2:m7 des2:7 | ges1:maj7 | f1:7 | bes1:6

  \boxMark "B"
  d1:7 | d1:7 | d1:m7 | g1:7
  c1:7 | c1:7 | c1:m7 | f1:7

  \boxMark "A2"
  bes2:6 g2:m7 | c2:m7 f2:7 | d2:m7 g2:m7 | c2:m7 f2:7
  aes2:m7 des2:7 | ges1:maj7 | f1:7 | bes1:6
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c'' {
  \key bes \major
  \time 4/4
  \numericTimeSignature

  \repeat volta 1 {
    \voltaStartBar

    d8 c8 bes8 a8 c8 bes8 r4
    a8 g8 f8 ees8 d8 f8 a8 c8~

    c4 bes8 d,8 a'8 g8 r8 f8~
    f4 ees8 g,8 d'8 c8 r4 \endLine

    r8 des'8 ces8 ees,8 bes'8 aes8 r8 aes8~
    aes4 ges8 e8 f8 ees8 r8 des8
    d8 f8 a8 b8~4 a8 bes8
    r1 \voltaEndBar \endLine
  }

  r4 \tuplet 3/2 { fis8 g8 gis8 } a8 g8 f8 e8
  d8 fis8 a8 d8 r2
  r8 f,8 a8 d8 des8 a8 f8 d8
  c'8 a8 b8 g'8 r2 \endLine

  r4 \tuplet 3/2 { e,8 f8 fis8 } g8 f8 e8 d8
  c8 e8 g8 c8 r2
  r8 ees,8 g8 c8 b8 g8 ees8 c8
  bes'8 g8 a8 f'8 r2 \endLine

  d8 c8 bes8 a8 c8 bes8 r4
  a8 g8 f8 ees8 d8 f8 a8 c8~

  c4 bes8 d,8 a'8 g8 r8 f8~
  f4 ees8 g,8 d'8 c8 r4 \endLine

  r8 des'8 ces8 ees,8 bes'8 aes8 r8 aes8~
  aes4 ges8 e8 f8 ees8 r8 des8
  d8 f8 a8 b8~4 a8 bes8
  r1

  \songEndBar
}

  }
}


    \new Lyrics="Lyrics" \lyricsto "Voice" {
  
}

  >>
}

}
\bookpart {
  \tocItem \markup "Emily - Johnny Mandel"

  \header {
  arranger = ""
  composer = "Music by Johnny Mandel"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Waltz"
  poet = "Johnny Mercer"
  subsubtitle = ""
  subtitle = ""
  tagline = ""
  title = "Emily"
}


  \score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
  %\set chordChanges = ##f
  %\set chordNameExceptions = #jazzChordExceptions
  %\set Score.currentBarNumber = #4

  \transpose c c {
    \chordmode {
  c2.:maj7 | a2.:m7 | d2.:m7 | g2.:7
  c2. | g4.:m7/c c4.:7.9- | f2.:maj7 | f2.:m6
  a2./cis | fis2.:m7 | b2.:m7 | b4.:m7/e e4.:7.9-
  a2.:m7 | d2.:9 | d2.:m7/g | g2.:7.5+.9-
  c2.:maj7 | a2.:m7 | d2.:m7 | g2.:7
  c2.:maj9 | c2.:7 | f2.:maj7 | b4.:m7/e e4.:7.9-
  a2.:m | b4.:7.5+.9- b4.:7.9- | e2.:m7 | a4.:9 cis4.:dim7
  d2.:m7 | g2.:7 | e2.:m7 | a2.:9
  fis2.:m7.5- | f2.:m7 | e2.:m7 | a2.:9
  d2.:m7 | g2.:9 | c2.:6 | \LPC d4.:m7 \RPC g4.:7
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c'' {
  \key c \major
  \time 3/4
  \numericTimeSignature

  e,8 b'8 g2
  e8 b'8 g2
  e8 b'8 g2~
  g4 e4. d8 \endLine

  c4. d8 e4
  a2 g4
  c,2.~
  c2 d4 \endLine

  e8 a,8 a2
  e'8 a,8 a2
  e'8 a,8 a2~
  a4 a4 b4 \endLine

  c4 d4 e4
  d'4 c4 a4
  d,2.
  dis2. \endLine

  e8 b'8 g2
  e8 b'8 g2
  e8 b'8 g2~
  g4 g4 f4 \endLine

  e4. f8 g4
  e'4. d8 c4
  a2.
  b2. \endLine

  c4 b4 a4
  g2 fis4
  g8 a8 b2~
  b4 a4 g4 \endLine

  f8 g8 a2~
  a4 g4. f8
  e8 f8 g2~
  g4 a4 b4 \endLine

  c4 b4 a4
  g2 f4
  e8 b'8 g2~
  g4 g4 f4 \endLine

  e8 b'8 g2
  e8 b'8 g2
  c2.~
  c2 r4

  \songEndBar
}

  }
}


    \new Lyrics="Lyrics" \lyricsto "Voice" {
  
}

  >>
}

}
\bookpart {
  \tocItem \markup "Misty - Errol Garner"

  \header {
  arranger = ""
  composer = "Music by Errol Garner"
  copyright = "1955. Renewed 1983 Marke Music, Limerick Music, Reganesque"
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Ballad"
  poet = "Johnny Burke"
  subsubtitle = ""
  subtitle = ""
  tagline = ""
  title = "Misty"
}


  \score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
  %\set chordChanges = ##f
  %\set chordNameExceptions = #jazzChordExceptions
  %\set Score.currentBarNumber = #4

  \transpose c c {
    \chordmode {
  \partial 4 s4

  \boxMark "A"
  \repeat volta 2 {
    ees1:maj7 | bes2:m7 ees:7 | aes1:maj7 | aes2:m7 des:7
    ees:maj7 c:m7 | f:m7 bes:7
  }
  \alternative {
    {
      g:m7 c:7 | f:m7 bes:7
    }
    {
      ees2:6 des2:9 | ees1:maj7
    }
  }

  \boxMark "B"
  bes1:m7 | ees:7.9- | aes1*2:maj7
  a1:m7 | d2:7 f:7 | g2:m7.5- c:7.9- | f:m7 bes:7

  \boxMark "A"
  ees1:maj7 | bes2:m7 ees:7 | aes1:maj7 | aes2:m7 des:7
  ees:maj7 c:m7 | f:m7 bes:7 | ees2:6 \LPC c2:m7 | f2:m7 \RPC bes2:7
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c' {
  \key ees \major
  \time 4/4
  \numericTimeSignature
  %\tempo 4 = 88

  \partial 4 bes'8 g

  %% A Section
  \repeat volta 2 {
    \bar "[|:"

    d2. bes8 c
    des c' c c c bes g ees
    c2 \tuplet 3/2 { r8 g aes } \tuplet 3/2 { c ees g } | \endLine

    bes bes bes aes bes4. aes8
    g4~ \tuplet 3/2 { g8 aes bes } ees,4~ \tuplet 3/2 { ees8 f g }
    aes8 c,4 c8 \tuplet 3/2 { d4 ees f } | \endLine
  } \alternative {
    {
      g1~ | g2. bes8 g8 \bar ":|]"
    }
    {
      ees1 | \tuplet 3/2 { r4 ees f } \tuplet 3/2 { g bes c } | \endLine
    }
  }

  %% B Section
  des8 des des des~ des2~
  des4 des8 ees \tuplet 3/2 { fes4 ees des }
  c8 c c c~ c2
  \tuplet 3/2 { r4 ees, f } \tuplet 3/2 {aes bes c } | \endLine

  d8 d d c d2~
  d8 d d c \tuplet 3/2 { f4 d c }
  bes1~
  bes2. bes8 g | \endLine

  %% A Section
  d2. bes8 c
  des c' c c c bes g ees
  c2 \tuplet 3/2 { r8 g aes } \tuplet 3/2 { c ees g }
  bes bes bes aes bes4. aes8 | \endLine

  g4~ \tuplet 3/2 { g8 aes bes } ees,4~ \tuplet 3/2 { ees8 f g }
  aes8 c,4 c8 \tuplet 3/2 { d4 ees f }
  ees1
  r \bar "|."
}

  }
}


    \new Lyrics="Lyrics" \lyricsto "Voice" {
  
\lyricmode {
  %% 1st time
  Look at me, I'm as help -- less as a kit -- ten up a tree.
  And I feel like I'm cling -- ing to a cloud, I can't __ un -- der- -- stand, __
  I get mist -- y just hold -- ing your hand. __ Walk my

  %% 2nd time
  near. You can say that you're lead -- ing me on, __ but it's just what I want you to do. __ 
  Don't you no -- tice how hope -- less -- ly I'm lost? __ 
  That's why I'm foll -- low -- ing you. __

  On my own, would I wan -- der through this won -- der -- land a -- lone,
  nev -- er know -- ing my right foot from my left, my hat __ from my glove,
  __ I'm too mist -- y and too much in love.
}

\lyricmode {
  Walk my way and a thou -- sand vi -- o -- lins be -- gin to play,
  or it might be the sound of your hel -- lo, that mu -- sic I hear,
  __ I get mist -- y the mo -- ment you're near.
}

}

  >>
}

}
\bookpart {
  \tocItem \markup "Nardis - Miles Davis"

  \header {
  arranger = ""
  composer = "Music by Miles Davis"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Med. Fast Jazz"
  poet = ""
  subsubtitle = ""
  subtitle = ""
  tagline = ""
  title = "Nardis"
}


  \score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
  %\set chordChanges = ##f
  %\set chordNameExceptions = #jazzChordExceptions
  %\set Score.currentBarNumber = #4

  \transpose c c {
    \chordmode {
  \partial 2 s2

  \boxMark "A1"
  \repeat volta 2 {
    e1 | f2:maj7 e2:maj7 | b1:7 | c1:maj7
    a1:m7 | f1:maj7 | e1:maj7
  } \alternative {
    { e1:m }
    { e1:m }
  }

  \boxMark "B"
  a1:m7 | f1:maj7 | a2:m7 f2:maj7 | f1:maj7
  d1:m7 | g1:7 | c2:maj7 f2:maj7 | f1:maj7

  \boxMark "A2"
  e1:m | f2:maj7 e2:maj7 | b1:7 | c1:maj7
  a1:m7 | f1:maj7 | e2:maj7 e2 | e1
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c'' {
  \key g \major
  \time 4/4
  \numericTimeSignature

  \partial 2 b2

  \repeat volta 2 {
    \voltaStartBar
    e1
    r8 dis,8 e8 e'8 dis4. c8

    <<
      b1~
      \\
      {
        \tuplet 3/2 {gis4 f4 gis4}
        \tuplet 3/2 {g4 fis4 g4}
      }
    >>
    <<
      b1
      \\
      {
        \tuplet 3/2 {fis4 e4 fis4}
        \tuplet 3/2 {e4 d4 d8 e8}
      }
    >>
    \endLine

    r8 b'4. a4 g4
    e4. a8~ a2
    \tuplet 3/2 {gis8 a8 gis8} f2 e4~->
  } \alternative {
    {
      e2 b'2
      \voltaEndBar
    }
    {
      e,2 e2
    }
  }
  \endLine

  b'2. b4~
  b2 b,8 c8 e8 g8
  b2. b4~
  b2. r4 \endLine

  r8 e4. d4 c4
  e2 d2
  b2. b4~
  b2 b2 \endLine

  e1
  r8 dis,8 e8 e'8 dis4. c8
  <<
    b1~
    \\
    {
      \tuplet 3/2 {gis4 f4 gis4}
      \tuplet 3/2 {g4 fis4 g4}
    }
  >>
  <<
    b1
    \\
    {
      \tuplet 3/2 {fis4 e4 fis4}
      \tuplet 3/2 {e4 d4 d8 e8}
    }
  >>
  \endLine

  r8 b'4. a4 g4
  e4. a8~ a2
  \tuplet 3/2 {gis8 a8 gis8} f2 e4~
  e1

  \songEndBar
}

  }
}


    \new Lyrics="Lyrics" \lyricsto "Voice" {
  
}

  >>
}

}
\bookpart {
  \tocItem \markup "Now's The Time - Music by Charlie Parker"

  \header {
  arranger = ""
  composer = "Music by Music by Charlie Parker"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Fast Blues"
  poet = ""
  subsubtitle = ""
  subtitle = "(Realbook)"
  tagline = ""
  title = "Now's The Time"
}


  \score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
  %\set chordChanges = ##f
  %\set chordNameExceptions = #jazzChordExceptions
  %\set Score.currentBarNumber = #4

  \transpose c c {
    \chordmode {
  \partial 4 s4

  \repeat volta 2 {
    g1:7 g1:7 g1:7 g1:7
    c1:7 c2:7 cis2:dim7
    g1:7 g1:7
    a1:m7 d1:7
    g1:7 d1:7
  }

  g1:7 g1:7
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c' {
  \key g \major
  \time 4/4
  \numericTimeSignature

  \partial 4 r8 d8

  \repeat volta 2 {
    \bar "[|:"
    g8 g8 a8 d,8 g4 r8 d8
    g8 g8 a8 d,8 g4 r8 d8 | \endLine

    g8 g8 a8 d,8 g8 g8 a8 d,8
    g8 g8 a8 d,8 g4 r8 d8 | \endLine

    g8 g8 a8 d,8 g8 c,4.
    g'8 g8 a8 d,8 g8 cis,4. | \endLine

    g'8 g8 a8 d,8 g8 g8 a8 d,8
    g8 g8 a8 d,8 g4 r8 bes8~ | \endLine

    \tuplet 3/2 { bes16 c16 bes16 } g8 e8 cis8 e4 r4
    r8 a4. g8 a8 g8 f8

    \once \override Score.RehearsalMark.font-size = #4
    \mark \markup { \musicglyph "scripts.coda" }

    \endLine

    r8 d8 r4 d4 r4

    r2 r4 r8 d8
    \bar ":|]" | \endLine
  }

  \once \override Score.RehearsalMark.font-size = #4
  \mark \markup { \musicglyph "scripts.coda" }

  r8 d8 r4 d4 r8 f8
  r8 d8 r4 d4 r4^\markup {
    \center-column {
      \line { \caps { Repeat Head In/Out } }
      \line { \caps { After solos, D.S. al \musicglyph "scripts.coda" } }
    }} \bar "|."
}

  }
}


    \new Lyrics="Lyrics" \lyricsto "Voice" {
  
\lyricmode {
  %% 1st time
  I nev -- er thought you'd be,
  so aw -- f'lly close to me
  un -- til I heard the mes - sage that af -- ter set me free.

  That made me want to lin -- ger,
  want to hang a - round. __ 

  Bet -- ter un -- der -- stand -- ing of these dif -- f'rent kind of sounds.

  Back __ in __ for - ty two, Bird came to New York and he blew. Come
}

\lyricmode {
  %% 2nd time
  his time. Now's the time.

  Come rem -- i -- nisce with me, and think a -- bout the Bird.
  Re -- mem -- ber ev -- 'ry -- thing he did and all the things you heard.
  Oh, don't it just a -- maze ya, gets ya down in - side, __
  to think of how he had to live, then the way he died.

  Life __ was - so un -- kind, , __ 'cause now would have been 
}

}

  >>
}

}
}
