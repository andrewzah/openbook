\header {
  title = "The Song Is You"
  composer = "Music by Jerome Kern & Oscar Hammerstein II"
  poet = ""
  meter = "Medium Up Swing"
  tagline = ""
  footer = ""
}
%% copyright: Copyright (c) 1932 Universal - Polygram International Publishing, Inc - Copyright Renewed

\score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
      \set chordChanges = ##f
      \set chordNameExceptions = #jazzChordExceptions
      \set Score.currentBarNumber = #4

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

  \new Voice="Voice" \with { \consists #(custom-line-breaks-engraver '(4 4 4)) } {
  %\new Voice="Voice" {
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
  }
  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
      I hear mu- -- sic when I touch your hand, __
      a beau -- ti -- ful mel -- o -- dy from some en -- chan -- ted land. __
      Down deep in my 
    }
  }

  >>
}
