title: Flood In Franklin Park
subsubtitle: As Played by Grant Green on Live at the Lighthouse! (1972)
composer: Shelton Laster
meter: Funky
---
\chordmode {
  \set chordNameExceptions = #jazzChordExceptions
  \set chordChanges = ##t

  \boxMark "A"
  \repeat unfold 8 { d1:m7 }

  \boxMark "B"
  \repeat unfold 4 { g1:7 }
  \repeat unfold 4 { d1:m7 }

  \boxMark "C"
  bes1:13 | bes1:13 | aes1:13 | aes1:13
  bes1:13 a1:7sus4 | d1:m7 | d1:m7

  %% Coda
  d1:m7 | a1:7sus4 | d1:m7
}
---
\key c \major
\time 4/4
\numericTimeSignature
\tempo 4 = 145

\voltaStartBar

%% "A"
<e'' a'' c'''>4 <d'' g'' b''>8 <c'' f'' a''>8^\sgo
<d'' g'' b''>8 <c'' f'' a''>8 <d'' g'' b''>8 <c'' f'' a''>8~ |
<c'' f'' a''>8 <b' e'' g''>8 <a' d'' f''>8 <g' c'' e''>8~ <g' c'' e''>8
<f' b' d''>8~ <f' b' d''>16 <e' a' c''>8. |
<d' g' b'>4. <c' f' a'>8~ <c' f' a'>2 |
r1 | \endLine

<e'' a'' c'''>4 <d'' g'' b''>8 <c'' f'' a''>8 <d'' g'' b''>8 <c'' f'' a''>8
<d'' g'' b''>8 <c'' f'' a''>8~ |
<c'' f'' a''>8 <b' e'' g''>8 <a' d'' f''>8 <g' c'' e''>8~ <g' c'' e''>8
<f' b' d''>8~ <f' b' d''>16 <e' a' c''>8. |
<d' g' b'>4. <c' f' a'>8~ <c' f' a'>2 |
r1 | \endLine

%% "B"
<d'' g'' b''>4 <c'' f'' a''>8 <b' e'' g''>8 <c'' f'' a''>8 <b' e'' g''>8
<c'' f'' a''>8 <b' e'' g''>8~ |
<b' e'' g''>8 <a' d'' f''>8 <g' c'' e''>8 <f' b' d''>8~ <f' b' d''>8
<e' a' c''>8~ <e' a' c''>16 <d' g' b'>8. |
<c' f' a'>4. <d' g' b'>8~ <d' g' b'>2 |
r1 | \endLine

<e'' a'' c'''>4 <d'' g'' b''>8 <c'' f'' a''>8 <d'' g'' b''>8 <c'' f'' a''>8
<d'' g'' b''>8 <c'' f'' a''>8~ |
<c'' f'' a''>8 <b' e'' g''>8 <a' d'' f''>8 <g' c'' e''>8~ <g' c'' e''>8
<f' b' d''>8~ <f' b' d''>16 <e' a' c''>8. |
<d' g' b'>4. <c' f' a'>8~ <c' f' a'>2 |
r1 | \endLine

%% "C"
g''8^\markup{\caps{"Unison"}} d''8 g''8 c'''8~ c'''8 c'''8~ c'''8 g''8~ |
g''8 d''8 g''8 c'''8~ c'''4 r4 |
f''8 c''8 f''8 bes''8~ bes''8 bes''8~ bes''8 f''8~ |
f''8 c''8 f''8 bes''8~ bes''4 r4 | \endLine

g''8 d''8 g''8 c'''8~ c'''8 c'''8~ c'''4 |
a''4-.
r8^\osgB_\markup{\caps"break! - - - - - - - -"}
<a' b'>8 <b' d''>8
<d'' f''>8 <d'' f''>8 <b' d''>8 |
<c'' e'' f''>4.^\markup{\general-align #X #2 \coda}
<b' d'' f''>8~^\osgA
<b' d'' f''>2 |
r1^\markup{\center-column{\caps{"solo on form abc" "After solos, D.C. al Coda (no repeat)"}}} | \voltaEndBar \endLine

%% CODA
\overrideCodaSize
\codaMark

\voltaStartBar
<c'' e'' f''>4._\osgA
<b' d'' g''>8~ <b' d'' g''>2 |
r4. <a' b'>8_\osgB
<b' d''>8 <d'' f''>8 <d'' f''>8 <b' d''>8^\markup{"3X"} |
\voltaEndBar

<c'' e'' f''>4.^\fermata_\osgA
<b' d'' g''>8~^\fermata <b' d'' g''>2

\songEndBar
---
% post-section
\markup {
  \general-align #X #LEFT {
    \epsfile #X #10 #"./images/flood-in-franklin-park.eps"
  }
}
