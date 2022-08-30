\include "lilypond-book-preamble.ly"
      #(ly:set-option 'eps-box-padding 3.000000)
\version "2.20.0"

ntr = {\override NoteHead.transparent = ##t }
ntro = {\override NoteHead.transparent = ##f }

\paper {
  indent = 0\mm}





<<
  
  
  \new DrumStaff \with{fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \hide Clef 
    \override StaffSymbol.line-count = #0 
        \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 6)
       (minimum-distance . 2)
       (padding . -3)
       (stretchability . 1))
  
  }
  
  {
   
   \override Staff.TimeSignature.stencil = #(lambda (grob)
    (parenthesize-stencil (ly:time-signature::print grob) 0.1 0.4 0.4 0.1 ))
   
   
    \time 3/1 %\stopStaff
    c1 c1 c1
    \bar" " c4 
    
   }
   
   
   
 \new GrandStaff <<
   
 \new DrumStaff \with{
    \hide Clef 
    \override StaffSymbol.line-count = #1 }{
   \numericTimeSignature
    \time 6/16
     \repeat unfold 8 {
   \stemUp c16 \stemDown c[  c]   c [c c]
    }
    
   
   

   
    \bar"||" \stemUp c16->
   }
\new DrumStaff \with{\hide Clef
    \override StaffSymbol.line-count = #1 
  }{
    \time 3/5
    \repeat unfold 5 {
        \stemUp c4*4/5 \stemDown c4*4/5 c4*4/5 } 
    
     

      \noBreak\bar"||"

                         \stemUp c4*4/5->
   
   
    }

>>

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

