title: Clockwork
subsubtitle: Castlevania III
---
\chordmode {
	g2:m a4:7.9- d:7.9- g2:m a4 d:7.9- g2 a4 aes |
	g2.:m s8 s2 a:dim g:m a4:dim d:7 |
	g4:m a:dim g:m7/bes c:m cis2:dim7 d g:m a4:dim fis:dim |
	g2:m a4:dim d:7 g:m d:7.9-/a g:m/bes c:m cis2:dim7 d4:sus d |
	ees1:maj7 d:7 ees:maj7 d:7 |
	ees:maj7 d:7 cis:dim d2:sus d |
	s4 s s fis:dim/g s2 g2:m s fis:dim7
}
---
\relative c' {
  \numericTimeSignature
	\clef treble
	\key bes \major
	\time 4/4
	\repeat volta 2
	{
		d'16 a c bes fis a g d cis e g bes c, es f a | 
		g fis g a bes a bes d cis a c e ees c d fis |
		g1
		\break
		\time 7/8
	    g,16 d g cis,~cis cis d e d d8. d8 |
		\time 4/4 
		d16 c bes c d bes c d ees d c bes gis a d c~ |
		c bes a g fis g a bes c g f g d fis c fis |
		\break
		bes8 d c ees d bes c a |
		g16 cis ees g bes g bes cis d4~d16 d, fis a |
		d a bes c d bes c d ees d c bes a bes d c~|
		\break
		c bes a g fis g a bes c g ees' g, d' fis, c' fis, |
		bes8 d c ees d g f ees |
		e4 g g fis16 d fis a |
		\break
		g, a bes c d2 g,8 d' |
		c2~c8 c g' fis |
		g,16 a bes c d2 g,8 d' |
		c2~c8. a16 fis'16 ees c a |
		\break
		g a bes c d2 g,8 d' |
		c2~c8 c g' fis |
		g,16 a bes c cis2 a8 cis |
		d2. d16 e f fis|
		\break
		g2. fis4( |
		f2) g~ |
		g4 fis16 e c a f' ees c a fis a c ees |
	}
}
