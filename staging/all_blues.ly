\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "All Blues"
  subsubtitle = "1959"
  composer = "Miles Davis"
  poet = "Jon Hendricks"
  meter = "Medium Blues"
}

\score {
  \new PianoStaff <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions
          \boxMark "Intro"
          \repeat unfold 4 { g2.:7 }
        }
      }
    }

    \new Staff {
      \transpose c c {
        \relative c' {
          \key g \major
          \time 6/8
          \numericTimeSignature

          \voltaStartBar
          r2. | r2. | \endLine

          <b' d>4 <c e>8 <d f>4 <c e>8 |
          <b d>4 <c e>8 <d f>4 <c e>8 | \voltaEndBar \endLine

        }
      }
    }

    \new Staff {
      \transpose c c {
        \relative c' {
          \clef "bass"
          \key g \major
          \time 6/8
          \numericTimeSignature

          \repeat unfold 4 { g,8. d'16 e16 d16 f8. d16 e16 d16 | }
        }
      }
    }
 >>
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions

          \boxMark "Head"
          \repeat unfold 4 { g2.:7 }
          \repeat unfold 2 { c2.:7/g }
          \repeat unfold 2 { g2.:7 }

          d2.:9+ | e4.:7.9+ e4.:7.9+.13- | g2.:7 | g2.:7
        }
      }
    }
    \new Voice="Voice" {
      \transpose c c {
        \relative c'' {
          \key g \major
          \time 6/8
          \numericTimeSignature

          b4.~ b4~ b16 d,16 |
          b'8 c16 b8. r4 r16 d,16 |
          b'16 c16 b4~ b4~ b16 d,16 |
          b'4. r4. | \endLine

          a4 bes8 c4 d8 |
          c4 bes8 a4~ a16 d,16 |
          b'2.~
          b4. r4 r16 g16 | \endLine

          a2. |
          bes2. |
          a4. b4._\markup { \lower #2 { "[PLAY INTRO BETWEEN HEAD/SOLOS]" }} |
          a4. g4. | \songEndBar
        }
      }
    }
    %\new Lyrics="Lyrics" \lyricsto "Voice" {
    %  \lyricmode {
    %    sea, __ the sky, and you and
    %    I, sea and sky and you and I know

    %    All blue -- es all shades
    %    all hues, all Blues
    %  }
    %}
  >>
}
