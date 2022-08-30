\include "lilypond-book-preamble.ly"
      #(ly:set-option 'eps-box-padding 3.000000)
 
\version "2.20.0"

\paper {
  indent = 0\mm}


#(define ((time-parenthesized-time up down upp downp) grob)
   (grob-interpret-markup grob
     (markup #:override '(baseline-skip . 0) #:number
       (#:line (
           (#:center-column (up down))
           #:vcenter "("
           (#:center-column (upp downp))
           #:vcenter ")" )))))


minic = { \once\override NoteHead.transparent = ##t {c8 } }

<<
 \new DrumStaff \with{\hide Clef \override StaffSymbol.line-count = #1 }{
 
  \override Beam.positions = #'(-4 . -4)
  \override Staff.TimeSignature.stencil = #(time-parenthesized-time "4" "4" "8" "8") 
    c8->   \minic  \minic \minic \minic c-> \minic \minic 
    c-> \minic c-> \minic \minic \minic \minic c->
    c-> \minic \minic \minic c-> \minic \minic \minic
    c-> c-> \minic \minic \minic \minic c-> \minic
    c-> \minic  \minic c-> \minic  \minic  \minic  \minic 
    c-> 
   } 

    
    
 


>>


\layout {
  \context {
    \Score
    \remove "Timing_translator"
    \remove "Default_bar_line_engraver"
  }
  \context {
    \DrumStaff
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
  }
  
}

