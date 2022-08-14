\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = "Show-Type Tune"
  composer = "Bill Evans"
  subtitle = "(Tune For A Lyric)"
  meter = "Bright Swing"
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions
          \set chordChanges = ##t

          f1:maj7 | d1:m7 | g1:m7 |
          gis1:dim7 | a2:m7 a2:7.5+ | d2:m7 d2:m7/c |
          bes1:13 | a1:7.9- | d1:m7 |
          d1:m7/c | bes1:maj7 | a2:m7 d2:7 |
          b2:m7.5- e2:7 | cis2:m7 fis2:m7 | d2:m7 g2:7 |
          e2:m7 a2:m7 | f2:m7 bes2:7 | ees2:maj7 c2:m7 |

          aes2:m7 des2:7 | g2:m7 c2:7 |
          f2:maj7 a2:7.5+ | d1:m7 | g2:m7 e2:7.9+ |
          a2:m7 d2:m7 | bes2:maj7 b2:dim7 |
          f2/c d2:m7 | ees1:13.11+ | ees1:13.11+ |
          f2/c c2:dim7 | g2:m7/c e2:7/c | f2:maj7/c f2:7/c |
          g2/b bes2:m6 | f2/a d2:m7 | g2:m7 gis2:dim7 |
          a2:m7 d2:m7 | bes2:maj7 b2:dim7 | f2/c d2:m7 |
          g2:m7 c2:7 | des1:maj7/c | des1:maj7/c |
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \key f \major
      \time 4/4
      \numericTimeSignature

      r4 r8 g'8 a'8 f'8 r8 c''8 |
      g'2~ g'8 f'8 e'8 d'8 |
      d''2.~ d''8 d''16 dis''16 | \endLine

      e''1~ |
      e''8 c''8 a'8 f''8~ f''2~ |
      f''8 e''8 c''8 a'8
        r8 f'8 r8 g''8~ | \endLine

      g''2.~ g''8 g''16 gis''16 |
      a''1 |
      r8 g''8 r4 g''4 f''8 e''8~ | \endLine

      e''2 c''8 a'8 f'8 d''8~ |
      d''2~ d''8 bes'8 g'8 ees'8 |
      c''1 | \endLine

      \tuplet 3/2 { r4 f''4 d''4 }
        b'8 ais'4 e''8~ |
      e''1 |
      r8 a'8
        \tuplet 3/2 { bes'8 b'8 c''8 }
        b'8 d''8 a''8 g''8~ | \endLine

      g''1 | \partBar
      r8 c''8
        \tuplet 3/2 { cis''8 d''8 ees''8 }
        d''4. c''8 |
      bes'4 ees''8 g''8 r4 r8 <ees'' ges''>8 | \endLine

      r8 <des'' f''>8 <ces'' ees''>4 <des'' bes'>8
        <aes' ces''>8 r8 <d'' f''>8 |
      %% TODO: d'' or des'' here? g:m7 or g:m7.5-??
      r8 <c'' e''>8 r8 <bes' d''>8 <a' c''>4
        bes'8 gis'8 | \endLine

      a'2 c''2 |
      r4 r8 g'16 f'16 e'8 d'8 r8 d''8~ |
      d''2 r8 d''8~
        \tuplet 3/2 { d''8 dis''8 e''8 } \endLine

      c''4. a'8 g'8 f'8 r8 e''8~ |
      e''2~ e''8 e''8 f''8 d''8~ | \endLine

      d''4. c''8 a'8 g'8 f'4 |
      f''1~ |
      f''2~ f''8 <c'' ees''>8 <bes' des''>4 | \endLine

      <gis' b'>8 <a' c''>8 r4 c''4 c''4 |
      cis''8 d''8~ d''4 d''4 d''4 |
      e''8 f''8 r4 f''4 f''4 | \endLine

      fis''8 g''8 r4 g''4 g''4 |
      \tuplet 3/2 { r4 c''4 a'4 }
        g'8 f'4 d''8~ |
      d''2~ d''8 d''16 dis''16 e''4 | \endLine

      \tuplet 3/2 { r4 c''4 a'4 }
        g'8 f'4 e''8~ |
      e''2~ e''8 f''8 r4 |
      r8 d''8 c''8 a'8 r8 g'8 f'8 bes'8 | \endLine

      r8 a'4 r8 f'8 c'8 e'8 f'8 |

      \new ImproVoice {
        c4^\markup {\caps{"BREAK - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - |"}}
        \repeat unfold 7 { c4 }
      }

      \songEndBar
    }
  }
 >>
}
