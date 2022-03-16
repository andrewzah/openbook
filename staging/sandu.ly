\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "Sandu"
  composer = "Clifford Brown"
  subsubtitle = "1955"
  meter = "Medium Swing"
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions
          \set chordChanges = ##t

          \boxMark "Head"
          \partial 2. s2. |
          \repeat volta 2 {
            ees1:7 | aes1:7 | ees1:7 |
            ees1:7 | aes1:7 | aes1:7 | ees1:6 |
            ees2:6 c2:7 | c1:7 | c2.:7 ees4:6 |


          } \alternative {
            {
              s4 s8 f8:m7 s4 s8 e8:7.9+.11+ | s1 |
            }
            {
              ees1:6 | ees1:6

              \boxMark "Solos"
              ees1:7 | aes1:7 | ees1:7 | ees1:7 |
              aes1:7 | aes1:7 | ees1:6 | g2:m7 c2:7 |
              f1:m7 | bes1:7 | ees2:6 c2:7 | f2:m7 bes2:7 |
            }
          }
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \key ees \major
      \time 4/4
      \numericTimeSignature

      \partial 2. r8^\markup{"(trp. w/ tenor 8va below)"}
        ees'8 g'8 bes'8 \tuplet 3/2 { c''8 bes'8 ees''8 } |

      \repeat volta 2 {
        \voltaStartBar
        r4 r8 ees'8\glissando g'4 bes'8 aes'8 |

        \override Glissando.style = #'zigzag
        r4 r8 ees''8~ ees''4\glissando ges'8 ees'8 |
        \override Glissando.style = #'default

        ees''4-. r8 ees'8\glissando g'4 bes'8 ees''8 | \endLine

        r4 r8\glissando des''8~ des''8 bes'8 aes'8 ees'8 |
        \tuplet 3/2 { ges'8 ees'8 aes'8~ } aes'2 ges'4-. |

        r8 ees''4 des''8 bes'8 aes'8 ges'8 ees'8 |
        \tuplet 3/2 { aes'8 ees'8 g'8~ } g'2 ees'4-. | \endLine

        r8\glissando ees''4 des''8 bes'8 aes'8 ges'8 ees'8 |
        <fis' a'>8^\markup{\center-column{"(trumpet" "tenor)"}}
          <fis' a'>8 <f' aes'>8 <f' aes'>8 <ees' ges'>4 <c' ees'>8-. bes8

        \mark \markup { \musicglyph #"scripts.coda" }
        des'4_\markup{"(unis.)"} bes4-. des'8 bes8 d'8 ees'8 | \endLine
      } \alternative {
        {
          r8 <bes g'>8 <a ges'>8 <aes f'>8 r8 <bes g'>8 <c' aes'>8 <d' bes'>8 |
          r4^\markup{\caps{ "break" "- - - - - - - - - - - - - - - - - -|" }}
            r8 ees' \glissando g'8 bes'8 \tuplet 3/2 { c''8 bes'8 ees''8 }
          | \voltaEndBar
        }
        {
          r1^\markup{\caps{ "Solo break" "- - - - - - - - - - - - - - -|" }} |
          r1 | \endLine
        }
      }

      \voltaStartBar
      \new ImproVoice {
        \repeat unfold 4 { d4 d4 d4 d4 | } \endLine
        \repeat unfold 4 { d4 d4 d4 d4 | } \endLine
        \repeat unfold 3 { d4 d4 d4 d4 | }
        d4 d4 d4 d4 | \endLine
      }
      \voltaEndBar

      \once \override Score.RehearsalMark.font-size = #5
      \mark \markup { \musicglyph #"scripts.coda" }

      des'4_\markup{"(unis.)"} bes4-.
        des'8_\markup{"(trp.)"} ees'8-.
        r8 <f a'>8~_\markup{\center-column{"(trumpet" "tenor)"}} |
      <f a'>1\fermata
      \songEndBar
      s1^\markup{\center-column{\caps{"After solos, D.C. al Coda" "(play head twice before taking coda)"}}}_\markup{\caps{"Trumpet plays upper melody throughout."}}
      s1
    }
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
    }
  }

 >>
}
