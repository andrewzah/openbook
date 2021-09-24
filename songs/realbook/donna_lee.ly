\header {
  title = "Donna Lee"
  composer = "Music by Charlie Parker"
  meter = "Up Tempo"
  tagline = "Music by Charlie Parker"
  footer = "Music by Charlie Parker"
}

\score {
  <<
    \new ChordNames="Chords" \with { \consists #percent-repeated-chords } {
      %\set chordRootNamer = #chordNamer
      \set chordNameExceptions = #jazzChordExceptions
      \set chordChanges = ##f
      \set Score.currentBarNumber = #4

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

  \new Voice="Voice" \with { \consists #(custom-line-breaks-engraver '(4 4 4)) } {
    \transpose c c {
      \relative c' {
        \key aes \major
        \time 4/4
        \numericTimeSignature
        \tempo 4 = 130

        %% part "A"
        r2 \tuplet 3/2 { g''8 aes g } f e | ees! des c bes a c, ees f |
        \tuplet 3/2 { ges aes ges } f ees d f aes c | g! f r4 r e!8 d! |
        ees! a, bes des! f aes c ees | des e, f c' b g ees des |
        c-1 ees g bes! aes4 ees8 f | ges bes des f e c r4 |
        ees2~ ees8 des c bes | ees des r4 ges8 fes ees des |
        c c des d ees des c bes | a c ees f \tuplet 3/2 { ges aes ges } f ees |
        d c b a bes aes r d,16 f | \tuplet 3/2 { g8 ges f } e4 r2 |
        ees'!8 des f, aes c bes aes f | g bes des ees \tuplet 3/2 { e fis e } ees des |

        %% part "B"
        c4 r \tuplet 3/2 { g'8 aes g } f e | ees! des c bes a c, ees f |
        \tuplet 3/2 { ges aes ges } f ees d f aes c | g! f r4 r g8 f |
        e f g aes bes aes g f | \tuplet 3/2 { des' ees des } c bes \tuplet 3/2 { aes bes aes } g e |
        f4 r r2 | r r4 r8 b |
        c b c des d cis d ees | e dis e dis d des c bes |
        \tuplet 3/2 { aes bes aes } g aes bes aes g f | b, d f aes b g' f e |
        ees! des c bes a ges f ees | des f aes c bes aes g ees |
        aes4 r r2 | r1 | \songEndBar
      }
    }
  }
  >>
  \layout {
    \context {
      % snippet id 838
      \override Score.NonMusicalPaperColumn.line-break-permission = ##f
      \consists #(bars-per-line-engraver '(4))
    }
  }
}
