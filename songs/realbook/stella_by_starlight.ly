\header {
  title = "Stella by Starlight"
  composer = "Music by Victor Young"
  poet = "Lyrics by Ned Washington"
  meter = "Ballad"
  tagline = ""
  footer = ""
}

\score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
      \set chordNameExceptions = #jazzChordExceptions
      \set chordChanges = ##t
      \set Score.currentBarNumber = #4

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

  \new Voice="Voice"
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
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
      \repeat unfold 49 { \skip 1 }

      She's all __ of these and more, __
      she's ev -- 'ry -- thing __ that you'd a -- dore.
    }
  }


  >>
  \layout {
    % make only the first clef visible
    \override Score.Clef #'break-visibility = #'#(#f #f #f) 

    % make only the first time signature visible
    \override Score.KeySignature #'break-visibility = #'#(#f #f #f) 

    % allow single-staff system bars
    \override Score.SystemStartBar #'collapse-height = #1 
  }
}
