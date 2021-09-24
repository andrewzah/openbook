boxMark =
#(define-music-function
 (parser location mark)
 (markup?)
 #{
 \mark \markup { \box #mark }
 #})

endLine = \break
partBar = \bar "||"
songEndBar = \bar "|."
voltaStartBar = \bar "[|:"
voltaEndBar = \bar ":|]"

%% Parentheses for optional chords
%% https://lists.gnu.org/archive/html/lilypond-user/2009-03/msg00037.html
#(define (left-parenthesis-ignatzek-chord-names in-pitches bass inversion context) (markup #:line ("(" (ignatzek-chord-names in-pitches bass inversion context))))
#(define (right-parenthesis-ignatzek-chord-names in-pitches bass inversion context) (markup #:line ((ignatzek-chord-names in-pitches bass inversion context) ")")))
#(define (parenthesis-ignatzek-chord-names in-pitches bass inversion context) (markup #:line ("(" (ignatzek-chord-names in-pitches bass inversion context) ")")))

LPC = { \once \set chordNameFunction = #left-parenthesis-ignatzek-chord-names }
RPC = { \once \set chordNameFunction = #right-parenthesis-ignatzek-chord-names }
%OPC = { \once \set chordNameFunction = #parenthesis-ignatzek-chord-names }

%% TODO: make this work
Triplet = \tuplet 3/2 {}

%% for Stella by Starlight
leftBrace = \markup {
  \override #'(font-encoding . fetaBraces)
  \lookup "brace80"
}
