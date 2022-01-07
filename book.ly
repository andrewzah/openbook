\version "2.22.1"

%% for midi
%\include "swing.ly"

\include "includes/globals.ily"
\include "includes/symbols.ily"
\include "includes/functions.ily"
\include "includes/chords.ily"

buildtime = #(strftime "%c" (localtime (current-time)))

%%%%%%%%%%%%%%%%%%%%%%%%
%%% PREPROCESS FILES %%%
%%%%%%%%%%%%%%%%%%%%%%%%
#(begin
  (use-modules (ice-9 ftw))

  ;(define a (scandir "./songs" ".ly"))
  ;(display a)
)

\book {
  %\bookpart {
  %  \markup {
  %    \column {
  %      \null
  %      \fill-line { \fontsize #11 \bold "OpenBook (C Instruments)" }
  %      \null
  %      \null
  %      \fill-line { \larger \larger \bold "An open source music book." }
  %      \null
  %      \null
  %      \null
  %      \null
  %      \fill-line {
  %        \huge \bold \concat {
  %          "Website: "
  %          \with-url #"https://andrewzah.com/openbook" https://andrewzah.com/openbook
  %        }
  %      }
  %      \null
  %      \fill-line { \huge \bold "Tune copyright: © belong to their respective holders." }
  %      \null
  %      \null
  %      \null
  %      \fill-line { \small \buildtime }
  %    }
  %  }
  %}

 %\markuplist \table-of-contents
 %\pageBreak

 %\bookpart {
 %  \tocItem \markup "All of Me - Simons & Marks"
 %  \include "songs/realbook/all_of_me.ly"
 %}

 %\bookpart {
 %  \tocItem \markup "April Joy - Pat Metheny"
 %  \include "songs/realbook/april_joy.ly"
 %}

 %\bookpart {
 %  \tocItem \markup "Caravan - Duke Ellington"
 %  \include "songs/realbook/caravan.ly"
 %}

 %\bookpart {
 %  \tocItem \markup "Donna Lee - Charlie Parker"
 %  \include "songs/realbook/donna_lee.ly"
 %}

 %\bookpart {
 %  \tocItem \markup "[WIP] Full House - ?"
 %  \include "songs/jazz/full_house.ly"
 %}

%\bookpart {
% \tocItem \markup "Crazeology - Bennie Harris"
% \include "songs/realbook/crazeology.ly"
%}

%\bookpart {
% \tocItem \markup "Embraceable You - George Gershwin"
% \include "songs/realbook/embraceable_you.ly"
%}

%\bookpart {
% \tocItem \markup "Emily - Johnny Mandel"
% \include "songs/realbook/emily.ly"
%}

 %\bookpart {
 %  \tocItem \markup "[WIP] I Got Rhythm - George & Ira Gershwin"
 %  \include "songs/realbook/i_got_rhythm.ly"
 %}

 %\bookpart {
 %  \tocItem \markup "Misty - Errol Garner"
 %  \include "songs/realbook/misty.ly"
 %}

 %\bookpart {
 %  \tocItem \markup "Naima - John Coltrane"
 %  \include "songs/realbook/naima.ly"
 %}

%\bookpart {
% \tocItem \markup "Nardis - Miles Davis"
% \include "songs/realbook/nardis.ly"
%}

 %\bookpart {
 %  \tocItem \markup "Now's The Time - Charlie Parker"
 %  \include "songs/realbook/nows_the_time.ly"
 %}

 %\bookpart {
 %  \tocItem \markup "Stella by Starlight - Victor Young"
 %  \include "songs/realbook/stella_by_starlight.ly"
 %}

 %bookpart {
 % \tocItem \markup "[WIP] Subito - Sonny Stitt"
 % \include "songs/staging/subito.ly"
 %}

 %%% TODO: fix "warning: cannot end volta spanner"
 %\bookpart {
 %  \tocItem \markup "The Song Is You - Jerome Kern & Oscar Hammerstein II"
 %  \include "songs/realbook/the_song_is_you.ly"
 %}

 \bookpart {
   \tocItem \markup "Old Devil Moon - Burton Lane & E.Y. Harburg"
   \include "songs/realbook/old_devil_moon.ly"
 }

 %bookpart {
 % \tocItem \markup "2:00 AM - Kazumi Totaka & Asuka Ota"
 % \include "songs/videogames/animal_crossing/2_am.ly"
 %}
}
