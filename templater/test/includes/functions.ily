% https://lists.gnu.org/archive/html/lilypond-user/2017-01/msg00475.html
% simpler form: again =\once \override ChordName.text = "%"

%%%%%%%%%%%%%%
%%% CHORDS %%%
%%%%%%%%%%%%%%

#(define percent-repeated-chords
  (lambda (context)
   (let ((chord '()))
     `((acknowledgers
         (chord-name-interface .
           ,(lambda (engraver grob source-engraver)
             (if (equal? (ly:grob-property grob 'text) chord)
                 ;  It would be nice to be able to use the percent repeat glyph, not text.
                 ;  Anyone know how to get that?  It isn't in the list of glyphs at
                 ;  http://lilypond.org/doc/v2.18/Documentation/notation/the-feta-font
                 (ly:grob-set-property! grob 'text "%"))
             (set! chord (ly:grob-property grob 'text)))))
        (finalize . ,(lambda (translator) (set! chord '())))))))


embiggenChordNames = #(define-scheme-function (size) (number?)
   #{ \with {
     chordNameFunction = #(lambda (in-pitches bass inversion context)
       (define (helper mu)
         (if (list? mu)
           (if (eq? (car mu) musicglyph-markup)
             (markup (#:fontsize (- size) mu))
             (map helper mu))
           mu))
       (let ((orig (ignatzek-chord-names in-pitches bass inversion context)))
         (markup (#:fontsize size (helper orig)))))
   } #} )

%%%%%%%%%%%%%%%%%%%
%%% LINE BREAKS %%%
%%%%%%%%%%%%%%%%%%%

#(define (custom-line-breaks-engraver bar-list)
  (let ((total (1+ (car bar-list)))) ;; not sure why increment necessary
    (lambda (context)
      (make-engraver
        (acknowledgers ((paper-column-interface engraver grob source-engraver)
          (let ((current-bar (ly:context-property context 'currentBarNumber)))
            (if (and (pair? bar-list)
                     (= (remainder current-bar total) 0)
                     (eq? #t (ly:grob-property grob 'non-musical)))
                (begin
                  (set! (ly:grob-property grob 'line-break-permission) 'force)
                  (if (not (null? (cdr bar-list)))
                      (begin
                        (set! bar-list (cdr bar-list))
                        (set! total (+ total (car bar-list))))
                      (set! bar-list '())))))))))))

% https://lsr.di.unimi.it/LSR/Snippet?id=838
#(define ((bars-per-line-engraver bar-list) context)
  (let* ((working-copy bar-list)
         (total (1+ (car working-copy))))
    `((acknowledgers
       (paper-column-interface
        . ,(lambda (engraver grob source-engraver)
             (let ((internal-bar (ly:context-property context 'internalBarNumber)))
               (if (and (pair? working-copy)
                        (= (remainder internal-bar total) 0)
                        (eq? #t (ly:grob-property grob 'non-musical)))
                   (begin
                     (set! (ly:grob-property grob 'line-break-permission) 'force)
                     (if (null? (cdr working-copy))
                         (set! working-copy bar-list)
                         (begin
                           (set! working-copy (cdr working-copy))))
                           (set! total (+ total (car working-copy))))))))))))

%%%%%%%%%%%%%%%%%%%
%%% PARENTHESES %%%
%%%%%%%%%%%%%%%%%%%
 
%%http://lsr.di.unimi.it/LSR/Item?id=902

%=> http://lilypond.1069038.n5.nabble.com/parenthesize-groups-of-notes-td501.html
%LSR by Gilles Thibault
%I take the way of how works ParenthesesItem #'stencils from here
%http://lsr.di.unimi.it/LSR/Item?id=564
%It's probably possible to automate a bit more but that is the general idea.

startParenthesis = {
  \once \override ParenthesesItem.stencils = #(lambda (grob)
        (let ((par-list (parentheses-item::calc-parenthesis-stencils grob)))
          (list (car par-list) point-stencil )))
}

endParenthesis = {
  \once \override ParenthesesItem.stencils = #(lambda (grob)
        (let ((par-list (parentheses-item::calc-parenthesis-stencils grob)))
          (list point-stencil (cadr par-list))))
        } 
