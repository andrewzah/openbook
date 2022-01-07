\version "2.22.1"

\include "./includes/globals.ily"
\include "./includes/symbols.ily"
\include "./includes/functions.ily"
\include "./includes/chords.ily"

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
  \tocItem \markup "2 AM - Kazumi Totaka & Asuka Ota"

  \header {
  arranger = ""
  composer = "Music by Kazumi Totaka & Asuka Ota"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Slow Waltz"
  poet = ""
  subsubtitle = ""
  subtitle = "(Animal Crossing - Wild World)"
  tagline = ""
  title = "2 AM"
}


  \score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
  %\set chordChanges = ##f
  %\set chordNameExceptions = #jazzChordExceptions
  %\set Score.currentBarNumber = #4

  \transpose c c {
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

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
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

  }
}


    \new Lyrics="Lyrics" \lyricsto "Voice" {
  
}

  >>
}

}
\bookpart {
  \tocItem \markup "All Of Me - Seymour Simons & Gerald Marks"

  \header {
  arranger = ""
  composer = "Music by Seymour Simons & Gerald Marks"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Medium Swing"
  poet = ""
  subsubtitle = ""
  subtitle = ""
  tagline = ""
  title = "All Of Me"
}


  \score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
  %\set chordChanges = ##f
  %\set chordNameExceptions = #jazzChordExceptions
  %\set Score.currentBarNumber = #4

  \transpose c c {
    \chordmode {
  \boxMark "A"
  c1:maj c1:maj
  e:7 e:7
  a:7 a:7 d:m7 d:m7
  e:7 e:7 a:m7 a:m7
  d:7 d:7 d:m7 g:7

  \boxMark "B"
  c1:maj c1:maj e:7 e:7
  a:7 a:7 d:m7 d:m7

  f1:7 f:m7 c2:maj e:m7 a1:7
  d:m7 g:7 c2:6 \LPC ees:dim d2:m7 \RPC g:7
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c' {
  \key c \major
  \time 4/4
  \numericTimeSignature
    %\tempo 4 = 130

    c'4 g8 e8~ e2~
    e2 \times 2/3 { c'4 d c }
    b4 gis8  e ~ e2 ~
    e1 \endLine

    a4. g8 e2 ~
    e4 dis e8 bes' a4
    g2 f2 ~
    f1 \endLine

    e4. ees8 d2 ~
    d2  e8 gis c4
    d2 c2 ~
    c1 \endLine

    b4. bes8 a2 ~
    a2 a8 d b4
    a1
    b1 \endLine

    c4 g8 e ~ e2 ~
    e2 \times 2/3 { c'4 d c }
    b4 gis8  e ~e2 ~
    e1 \endLine

    a4. g8 e2 ~
    e4 dis e8 bes' a4
    g2 f2 ~
    f1 \endLine

    d'2 c4 b
    d2. c4
    b2 e,4  g4
    b2. a4 \endLine

    c2 a4 c
    e2 e2
    c1 ~
    c1

    \songEndBar
}

  }
}


    \new Lyrics="Lyrics" \lyricsto "Voice" {
  
\lyricmode {
  All of me
  why not take all of me,
  can't you see
  I'm no good with -- out you?

  Take my lips
  I want to lose them,
  take my arms
  I ne -- ver use them.

  Your good -- bye
  left me with eyes that cry,
  how can I go on dear, with -- out you?

  % first repeat
  You took the part
  that once was my heart,
  so why not take all of me?

  % second repeat
  You took the best
  So why not take the rest
  Ba -- by take all of me.
}

}

  >>
}

}
\bookpart {
  \tocItem \markup "April Joy - Music by Pat Metheny"

  \header {
  arranger = ""
  composer = "Music by Music by Pat Metheny"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Medium - Even 8ths"
  poet = ""
  subsubtitle = ""
  subtitle = ""
  tagline = ""
  title = "April Joy"
}


  \score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
  %\set chordChanges = ##f
  %\set chordNameExceptions = #jazzChordExceptions
  %\set Score.currentBarNumber = #4

  \transpose c c {
    \chordmode {
  \set additionalPitchPrefix = #"add"
  \partial 2 s2

  \boxMark "A"
  bes1:maj7 | bes1:maj7 | d1:9sus4 | d1:9sus4
  bes1:maj7 | bes1:maj7 | bes1:m7+.5- | bes1:m7+.5-
  bes2:maj7 a2:m7 | bes2:maj7 a2:m7 | d1:5.9 | d1:5.9

  \boxMark "B"
  d1:m7 | bes1:maj7 | a1:m7 | a1:m7
  bes1:maj7 | bes1:5.9/c | f1:maj7 | bes1:maj7
  bes2:maj7 a2:m7 | bes2:maj7 bes2:5.9/c | f1:maj7 | bes1:maj7
  e1:m7.5- | a1:7sus4 | d1:7sus4 | d1:7sus4
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c'' {
  \key c \major
  \time 4/4
  \numericTimeSignature

  \partial 2
  r16 g16 c16 d16 f16 e16 d16 c16

  \voltaStartBar

  d4. g8~ g2~
  g2 r16 g,16 c16 d16 f16 e16 d16 c16
  \tuplet 3/2 {d8 e8 a8} d2.~
  d2.~ d8 d8 \endLine

  \tuplet 3/2 {e4 c4 a4}~ a2~
  a2.~ a8 g16 c16
  a1~
  a1 \endLine

  d4 d8 f8 e8 c8 a8 d8~
  d1~
  d1
  r2 r8 d,8 f8 g8 \endLine

  a4 r4 r8 d,8 g8 e8~
  e2~ e8 d8 c8 a8~
  a8 c8 c8 a8 d8 a8 c4~
  c2.~ c8 d8~ \endLine

  d8 f8 f8 d8 g8 d8 f4~
  f2~ f8 g8 f8 e8~
  e8 d8 e8 c8~ c2~
  c1 \endLine

  a'8 g8 f8 g8~ g8 c4 d8~
  d8 e8 f8 c8~ c2
  r1
  d8 e8 f8 c8~ c4. bes8 \endLine

  a2.~ a8 bes8
  a4. bes8 a4. bes8
  a4 d,8 d'8~ d2~
  d2

  \override ParenthesesItem.font-size = #5
  \startParenthesis \parenthesize r16
  g,,16 c16 d16 f16 e16 d16
  \endParenthesis \parenthesize c16

  \voltaEndBar
}

  }
}


    \new Lyrics="Lyrics" \lyricsto "Voice" {
  
}

  >>
}

}
\bookpart {
  \tocItem \markup "Caravan - Music by Duke Ellington"

  \header {
  arranger = ""
  composer = "Music by Music by Duke Ellington"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Latin"
  poet = ""
  subsubtitle = ""
  subtitle = ""
  tagline = ""
  title = "Caravan"
}


  \score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
  %\set chordChanges = ##f
  %\set chordNameExceptions = #jazzChordExceptions
  %\set Score.currentBarNumber = #4

  \transpose c c {
    \chordmode {
  \boxMark "A"
  c1:7 | des1:7 | c1:7 | c1:7
  c1:7 | des1:7 | c1:7 | c1:7
  c1:7 | des1:7 | c1:7 | c1:7
  f1:m6 | f1:m6 | f1:m6 | f1:m6

  \boxMark "B"
  f1:7 | f1:7 | f1:7 | f1:7
  bes1:7 | bes1:7 | bes1:7 | bes1:7
  ees1:7 | ees1:7 | ees1:7 | ees1:7
  aes1:7 | aes1:7 | c1:7 | c1:7
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c'' {
  \key aes \major
  \time 2/2
  \numericTimeSignature

  \voltaStartBar

  c1~
  c1~
  c4 des4 c4 g4
  bes4 c4 e4 g,4 \endLine

  bes1~
  bes1~
  bes4 c4 des4 c4
  des4 c4 b4 g4 \endLine

  bes1~
  bes~
  bes4 c4 b4 bes4
  a4 aes4 ges4 e4 \endLine

  f1~
  f1~
  f1~
  f2. r4 \voltaEndBar \endLine

  \time 4/4

  f'1
  d2 c4. g8~
  g1~
  g4. f8 e4 f4 \endLine

  c'1
  g2 f4. c8~
  c1
  r2 bes'8 c8 des8 e8 \endLine

  ees1
  c2 bes4. f8~
  f1~
  f2 g4 ees4 \endLine

  c'4. aes8~ aes2~
  aes2 bes4 aes4
  g2 g4. g8~
  g2 r2

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
  \tocItem \markup "Donna Lee - Charlie Parker"

  \header {
  arranger = ""
  composer = "Music by Charlie Parker"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Up Tempo"
  poet = ""
  subsubtitle = ""
  subtitle = ""
  tagline = ""
  title = "Donna Lee"
}


  \score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
  %\set chordChanges = ##f
  %\set chordNameExceptions = #jazzChordExceptions
  %\set Score.currentBarNumber = #4

  \transpose c c {
    \chordmode {
  \boxMark "A"
  aes1 | f:7 | bes1:7 | bes1:7
  bes1:m7 | ees:7 | aes | ees2:m7 aes:7
  des1 | ges:7 | aes | f:7
  bes1:7 | bes1:7 | bes1:m7 | ees:7

  \boxMark "B"
  aes1 | f:7 | bes1:7 | bes1:7
  g1:7.5- | c:7 | f1:m7 | g2:m7 c2:7
  f1:m7 | g2:7.5- c2:7 | f1:m7 | b1:dim7
  c2:m7 f2:7 | bes2:m7 ees2:7 | aes1 | \LPC bes2:m7 \RPC ees:7
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c' {
  \key aes \major
  \time 4/4
  \numericTimeSignature
  \tempo 4 = 130

  %% override mark font
  %\set Score.markFormatter = #format-mark-box-alphabet
  %\override Score.RehearsalMark.font-size = #+4

  %% part "A"
  r2 \tuplet 3/2 { g''8 aes8 g8 } f8 e8
  ees! des c bes a c, ees f
  \tuplet 3/2 { ges aes ges } f ees d f aes c
  g! f r4 r e!8 d! \endLine

  ees! a, bes des! f aes c ees
  des e, f c' b g ees des
  c-1 ees g bes! aes4 ees8 f
  ges bes des f e c r4 \endLine

  ees2~ ees8 des c bes
  ees des r4 ges8 fes ees des
  c c des d ees des c bes
  a c ees f \tuplet 3/2 { ges aes ges } f ees \endLine

  d c b a bes aes r d,16 f
  \tuplet 3/2 { g8 ges f } e4 r2
  ees'!8 des f, aes c bes aes f
  g bes des ees \tuplet 3/2 { e fis e } ees des \endLine

  %% part "B"
  c4 r \tuplet 3/2 { g'8 aes g } f e
  ees! des c bes a c, ees f
  \tuplet 3/2 { ges aes ges } f ees d f aes c
  g! f r4 r g8 f \endLine

  e f g aes bes aes g f
  \tuplet 3/2 { des' ees des } c bes \tuplet 3/2 { aes bes aes } g e
  f4 r r2 | r r4 r8 b \endLine

  c b c des d cis d ees
  e dis e dis d des c bes
  \tuplet 3/2 { aes bes aes } g aes bes aes g f
  b, d f aes b g' f e \endLine

  ees! des c bes a ges f ees
  des f aes c bes aes g ees
  aes4 r r2
  r1 \songEndBar
}

  }
}


    \new Lyrics="Lyrics" \lyricsto "Voice" {
  
}

  >>
}

}
\bookpart {
  \tocItem \markup "Embraceable You - George Gershwin"

  \header {
  arranger = ""
  composer = "Music by George Gershwin"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Ballad"
  poet = "Lyrics by Ira Gershwin"
  subsubtitle = ""
  subtitle = "From Girl Crazy (1930)"
  tagline = ""
  title = "Embraceable You"
}


  \score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
  %\set chordChanges = ##f
  %\set chordNameExceptions = #jazzChordExceptions
  %\set Score.currentBarNumber = #4

  \transpose c c {
    \chordmode {
  %\boxMark "A"
  g1:6 | bes1:dim7 | a1:m7 | d1:7
  a2:m7 a2:m7/g | f2:7 d2:7 | g1:6 | fis2:dim7 a2:7

  %\boxMark "B"
  e2:m7 e2:maj7 | e2:m6 fis2:7.5- | b2:m7 bes2:aug | a2:sus a2:7
  d2:maj7 dis2:dim | e2:m7 a2:7 | a1:m7 | d1:7

  g1:6 | bes1:dim | a2:m7 d2:7 | a2:m7 d2:7
  a2:m7 a2:m7/g | f1:7 | g1 | d2:m7 g2:7

  c1:maj7 | fis2:7.5- b2:7.9- | e2:m e2:m7+ | e2:m a2:7
  g1:maj7 | a2:m7.9- d2:7.9- | g1:6 | \LPC a2:m7 \RPC d2:7 
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c'' {
  \key g \major
  \time 4/4
  \numericTimeSignature

  r4 e,4 fis4 g4
  r4 e4 fis4 g4
  a4. d,8 d4 d4~
  d1 \endLine

  r4 a'4 b4 c4
  r4 a4 b4 c4
  d4. g,8 g4 g4~
  g1 \endLine

  b4 g4 a4 g4
  b4 g4 a4 g4
  b4. fis8 fis4 fis4~
  fis1 \endLine

  a4 fis4 g4 fis4
  g4 a4 b4 cis4
  d4. d,8 d4 d4~
  d1 \endLine

  r4 e4 fis4 g4
  r4 e4 fis4 g4
  a4. d,8 d4 d4~
  d1 \endLine

  r4 a'4 b4 c4
  r4 a4 b4 c4
  d4. g,8 g4 g4~
  g1 \endLine

  r4 d'4 c4 b4
  c4 b4 a4 b4
  r4 g8 g8 g8 g8 g8 g8
  g8 g8 d'2. \endLine

  r4 b4 c4 d4 ees4.
  g,8 fis2
  g1
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
  poet = "Lyrics by Johnny Mercer"
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
  \tocItem \markup "I Got Rhythm - George Gershwin"

  \header {
  arranger = ""
  composer = "Music by George Gershwin"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Medium Up Swing"
  poet = "Lyrics by Ira Gershwin"
  subsubtitle = ""
  subtitle = "From An American In Paris (1928) & Girl Crazy (1930)"
  tagline = ""
  title = "I Got Rhythm"
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
  bes2:6 g2:7.9- | c2:m7 f2:7 | bes2:6 g2:7.9- | c2:m7 f2:7 \endLine
  bes2 bes2:7 | ees2 ees2:m6 | bes2:6 g2:7.9- | c2:m7 f2:7 \endLine

  \boxMark "A2"
  bes2:6 g2:7.9- | c2:m7 f2:7 | bes2:6 g2:7.9- | c2:m7 f2:7 \endLine
  bes2 bes2:7 | ees2 ees2:m6 | bes2:6 f2:7 | bes1:6 \endLine

  \boxMark "B"
  d1:7 | d1:7 | g1:7 | g1:7 \endLine
  c1:7 | c1:7 | f1:7 | f1:7 \endLine

  \boxMark "A2"
  bes2:6 g2:7.9- | c2:m7 f2:7 | bes2:6 g2:7.9- | c2:m7 f2:7 \endLine
  bes2 bes2:7 | ees2 ees2:m6 | bes2:6 f2:7 | bes1:6 \endLine
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c'' {
  \key bes \major
  \time 4/4
  \numericTimeSignature

  \repeat unfold 32 { r1 }

  \songEndBar
}

  }
}


    \new Lyrics="Lyrics" \lyricsto "Voice" {
  
\lyricmode {
  I __ got rhy -- thm, __
  I __ got mu -- sic.

  I __ got my man.
  Who could ask for a -- ny -- thing more?

  Old __ Man Troub -- le __
  I __ don't mind him,
  You won't find him
  Round my door.

  I __ got star -- light,
  I __ got sweet dreams,

  I __ got my man.
  Who could ask for a -- ny -- thing more,
  Who could ask for a -- ny -- thing more?
}

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
  poet = "Lyrics by Johnny Burke"
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
  \tocItem \markup "Naima - John Coltrane"

  \header {
  arranger = ""
  composer = "Music by John Coltrane"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Ballad"
  poet = ""
  subsubtitle = ""
  subtitle = ""
  tagline = ""
  title = "Naima"
}


  \score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
  %\set chordChanges = ##f
  %\set chordNameExceptions = #jazzChordExceptions
  %\set Score.currentBarNumber = #4

  \transpose c c {
    \chordmode {
  \repeat volta 2 {
    \voltaStartBar
    bes1:m7 | ees1:m7 | b2:7.5- a2:7.5- | aes1:maj7
    \voltaEndBar
  }

  b1:maj7 | bes1:7.9- | b1:maj7 | bes1:7.9-
  e1:7.9.11+ | b1:maj7 | f1:m7 | ges1:7.9.13
  bes1:m7 | ees1:m7 | b2:7.5- a2:7.5- | aes1:maj7
  bes1:m7 | ees1:m7 | b2:7.5- a2:7.5- | aes1:maj7
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c' {
  \key aes \major
  \time 4/4
  \numericTimeSignature

  \repeat volta 2 {
    c'2.~ \tuplet 3/2 { c8 bes8 ees8 }
    f,1
    aes2 ges4~ \tuplet 3/2 { ges8 ees8 ges8 }
    ees1 | \endLine
  }

  \repeat volta 2 {
    bes'2.~ \tuplet 3/2 { bes8 bes8 bes8 }
    g2.~ \tuplet 3/2 { g8 ees8 f8 }
    bes2.~ \tuplet 3/2 { bes8 bes8 bes8 }
    g2.~ \tuplet 3/2 { g8 f8 ees8 } \endLine

    des'2.~ \tuplet 3/2 { des8 bes8 des8 }
    bes2.~ \tuplet 3/2 { bes8 ees8 bes8 }
    g2.~ \tuplet 3/2 { g8 ees8 g8 }
    ees1 \endLine

    c'2.~ \tuplet 3/2 { c8 bes8 ees8 }
    f,1
    aes2 ges4~ \tuplet 3/2 { ges8 ees8 ges8 }
    ees1^\markup { \caps { D.S. al Coda } } \voltaEndBar \endLine
  }

  %% coda
  \once \override Score.RehearsalMark #'font-size = #4
  \mark \markup { \musicglyph "scripts.coda" }
  ees2 f2
  g2 aes2
  bes2 c2
  ees2^\fermata \songEndBar
}

  }
}


    \new Lyrics="Lyrics" \lyricsto "Voice" {
  
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
  \tocItem \markup "Now's The Time - Charlie Parker"

  \header {
  arranger = ""
  composer = "Music by Charlie Parker"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Fast Blues"
  poet = ""
  subsubtitle = ""
  subtitle = ""
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
\bookpart {
  \tocItem \markup "Old Devil Moon - Music by Burton Lane"

  \header {
  arranger = ""
  composer = "Music by Music by Burton Lane"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Medium"
  poet = "Lyrics by E.Y. Harburg"
  subsubtitle = ""
  subtitle = ""
  tagline = ""
  title = "Old Devil Moon"
}


  \score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
  %\set chordChanges = ##f
  %\set chordNameExceptions = #jazzChordExceptions
  %\set Score.currentBarNumber = #4

  \transpose c c {
    \chordmode {
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \repeat volta 2 {
    f1:6 | c1:m7/f | f1:6 | c1:m7/f
    f1:maj7 | c1:m7/f | f1:maj7 | c2:m7 f2:7

    bes1:maj7 | bes1:maj7 | bes1:m7 | ees1:7
    aes2:m7 des2:7 | ges2:6 c2:7 | f1:6 | c1:m7/f
  } \alternative {
    {
      f1:6 | c1:m7/f | d1:maj7 | d1:maj7
      d1:m7 | g1:7 | g1:m7 | c1:7
    }
    {
      f1:6 | c1:m7/f | f1:6 | c1:m7/f
      f2:maj7 c2:m7/f | f2:maj7 c2:m7/f | f1:maj7 | \LPC g2:m7 \RPC c2:7
    }
  }
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c' {
  \key f \major
  \time 4/4
  \numericTimeSignature

  \repeat volta 2 {
    \voltaStartBar

    f1
    ees8 ees ees8 ees8 ees4 g4
    f1
    g8 g g8 g8 g4 bes4 \endLine

    a1
    bes8 bes8 bes8 bes8 bes4 d4
    c1~
    c2 c4 c4 \endLine

    c2 bes8 a4 f8~
    f2 a4 bes4
    c2 bes8 a4 f8~
    f2 a4 bes4 \endLine

    des2 ces8 bes4 ges8~
    ges2 a8 g4 f8~
    f1
    r2 ees8 c8 ees8 f8~ \endLine
  } \alternative {
    {
      f2 ees8 c8 ees8 g8~
      g2 \tuplet 3/2 { ees4 c4 ees4 }
      a2 a2~
      a2 f8 d8 f8 a8~ \endLine

      a2 f8 d8 f8 b8~
      b2 \tuplet 3/2 { f4 d4 f4 }
      c'2 c2~
      c8 d4 aes8 g8 f8 d8 c8 \voltaEndBar \endLine
    }
    {
      f2 f2~
      f2 ees8 c8 ees4
      f1~
      f2 \tuplet 3/2 { ees'4 ees4 ees4 } \endLine

      c2 \tuplet 3/2 { bes4 c4 bes4 }
      a2 \tuplet 3/2 { f4 ees4 g4 }
      c1
      r1

      \songEndBar
    }
  }

}

  }
}


    \new Lyrics="Lyrics" \lyricsto "Voice" {
  
}

  >>
}

}
\bookpart {
  \tocItem \markup "Stella by Starlight - Victor Young"

  \header {
  arranger = ""
  composer = "Music by Victor Young"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Ballad"
  poet = "Lyrics by Ned Washington"
  subsubtitle = ""
  subtitle = ""
  tagline = ""
  title = "Stella by Starlight"
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
  e1:m7.5- | a:7.9- | c:m7 | f:7
  f:m7 | bes:7 | ees:maj7 | aes:7
  bes1:maj7 | e2:m7.5- a2:7.9- | d1:m7 | bes2:m7 ees2:7
  f1:maj7 | e2:m7.5- a2:7.9- | a1:m7.5- | d1:7.9-

  \boxMark "B"
  g1:7.5+ | g1:7.5+ | c1:m7 | c1:m7
  aes1:7.11+ | aes1:7 | bes1:maj7 | bes1:maj7
  e1:m7.5- | a1:7.9- | d1:m7.5- | g1:7.9-
  c1:m7.5- | f1:7.9- | bes1:maj7 bes1:maj7
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c'' {
  \key bes \major
  \time 4/4
  \numericTimeSignature
  \tempo 4 = 130

  \partial 4 bes4

  %% A
  a1~
  a4 g4 a4 bes4
  f1~
  f2 f2 \endLine

  g1~
  g4 f4 f4 g4
  bes,1~
  bes2 c2 \endLine

  ees4 d4 c4 bes4
  d2. e4
  g4. f8 f2~
  f2. g4 \endLine

  bes4 a4 g4 f4
  g2 a4 bes4
  d4. c8 c2~
  c2 d2 \endLine

  %% B
  ees1~
  ees4 ees ees d
  f1~
  f4 ees \tuplet 3/2 { d c bes } \endLine

  d2 d2~
  d4 c4 bes4 a4
  c1~
  c2 bes2 \endLine

  a1~
  a4 g4 a4 bes4
  f1~
  f4 f4 f4 ees4 \endLine

  ges1~
  ges4 ges4 ges4 f4
  f1~
  f1 \endLine
}

  }
}


    \new Lyrics="Lyrics" \lyricsto "Voice" {
  
\lyricmode {
  %% part "A"
  The song a rob -- in sings,
  through years of end -- less springs.
  The mur -- mur of a brook at even -- ing tides,
  that rip -- ples through a nook where two lov -- ers hide.

  A great __ sym -- phon -- ic theme, __
  that's Stel -- la by star -- light __ and not a dream. __

  \set stanza = \markup {
    \column { \vspace #.33 "Duet " }
    \leftBrace
  }

  My heart __ and I a -- agree, __ 
  she's ev -- 'ry -- thing __ on earth to me.

  %% part "B"
  %That great sym -- pho -- nic theme,
  %That's Stel -- la by star -- light,
  %And not a dream,
  %My heart and I ag -- ree,
  %She's eve -- ry -- thing on_this earth to me.
}

\lyricmode {
  \repeat unfold 49 { \skip 1 }

  She's all __ of these and more, __
  she's ev -- 'ry -- thing __ that you'd a -- dore.
}

}

  >>
}

}
\bookpart {
  \tocItem \markup "The Song Is You - Jerome Kern"

  \header {
  arranger = ""
  composer = "Music by Jerome Kern"
  copyright = ""
  dedication = ""
  footer = "%%FOOTER%%"
  instrument = ""
  meter = "Medium Up Swing"
  poet = "Lyrics by Oscar Hammerstein II"
  subsubtitle = ""
  subtitle = ""
  tagline = ""
  title = "The Song Is You"
}


  \score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
  %\set chordChanges = ##f
  %\set chordNameExceptions = #jazzChordExceptions
  %\set Score.currentBarNumber = #4

  \transpose c c {
    \chordmode {
  \boxMark "A"
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \repeat volta 2 {
    c2:maj7 c2:dim | d2:m7 g2:7 | e2:m7 a2:7 | d2:m7 g2:7
  }
  \alternative {
    {
      c2:maj7 e2:m | d2:m7 g2:7 | d2:m7.5- g2:7 | e4:m7 a4:7 d4:m7 g4:7
    }
    {
      c2:maj7 a2:7 | d2:m7 g2:7 | c1:maj6 | c1:maj6
    }
  }

  \boxMark "B"
  e1:maj7 | fis2:m7 b2:7 | e1:maj7 | ais2:m7 dis2:7
  gis1:m9 | cis1:7 | fis1:7 | b2:7 g2:7

  \boxMark "A"
  c2:maj7 c2:dim | d2:m7 g2:7 | c2:maj7 c2:7 | f2:maj7 f2:m6
  e2:m7 a2:7 | d2:m7 g2:7 | c1:maj6 | \LPC d2:m7 \RPC g2:7
}

  }
}


    \new Voice="Voice" {
  \transpose c c {
    
\relative c'' {
  \key c \major
  \time 4/4
  \numericTimeSignature
  %\tempo 4 = 88

  \repeat volta 2 {
    \bar "[|:"

    b8 c8 c8 b8 b8 c8 c8 b8
    f2~ f8 a8 \tuplet 3/2 { a8 aes8 g8 }

    g8 a8 a8 g8 g8 a8 a8 g8
    d2~ d8 f8 \tuplet 3/2 { f8 dis8 e8 } \endLine

  } \alternative {
    {
      g2~ g8 e8 f8 e8
      g2~ g8 d8 e8 d8

      f2~ f8 c8 d8 c8
      e2. r4 \voltaEndBar \endLine
    }
    {
      g2~ g8 e8 f8 e8
      a2~ a8 g8 a8 g8

      c1~
      c2. r4 \endLine
    }
  }

  e,8 b'8 b4~ b8 b8 b8 b8
  b8 a8 a2.
  e8 dis'8 dis4~ dis8 dis8 dis8 dis8
  dis8 cis8 cis2. | \endLine

  dis,8 b'8 gis4~ gis8 dis8 \tuplet 3/2 { fis8 f8 e8 }
  dis8 b'8 gis4~ gis8 dis8 dis8 dis8
  dis8 fis8 fis4~ fis8 fis8 fis8 fis8

  gis8 b8 b4~ b8 b8 b8 b8
  b8 c8 c8 b8 b8 c8 c8 b8
  f'2~ f8 a,8 \tuplet 3/2 { a8 aes8 g8 }

  g8 a8 a8 g8 g8 a8 a8 g8
  c2~ c8 f,8 \tuplet 3/2 { f8 dis8 e8 }
  g2~ g8 e8 f8 e8
  a2~ a8 g8 a8 g8

  c1
  r1

  \songEndBar
}

  }
}


    \new Lyrics="Lyrics" \lyricsto "Voice" {
  
\lyricmode {
  %% 1st time
  I hear mu- -- sic when I look at you, __
  a beau -- ti -- ful theme of ev -- 'ry dream I ev -- er knew. __
  Down deep in my heart, __ I hear it play. __ I feel it start, __ then melt a -- way. __

  %% 2nd time
  heart, __ I hear it say, __ ''Is this the day?'' __
  I a -- lone __ have hear this love -- ly strain, __
  I al -- one __ have heard this glad re -- frain. __
  Must it be __ for -- ev -- er in -- side of me? __
  Why can't I let it go? __ Why can't I let you know? __
  Why can't I let you know the song my heart would sing, __
  that bea -- ti -- ful rhap -- so --dy of love and youth and spring? __

  The mu -- sic is sweet, __ the words are true, __ the song is you.
}

\lyricmode {
  I hear mu- -- sic when I touch your hand, __
  a beau -- ti -- ful mel -- o -- dy from some en -- chan -- ted land. __
  Down deep in my
}

}

  >>
}

}
}
