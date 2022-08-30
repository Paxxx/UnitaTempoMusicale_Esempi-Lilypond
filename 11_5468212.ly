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
   
   
    \time 15/2 %\stopStaff
    c2 \repeat unfold 14{c2}
    \bar" " c4 
    
   }
   
   
   
 \new GrandStaff <<
   
 \new DrumStaff \with{
    \hide Clef 
    \override StaffSymbol.line-count = #1 }{
   \numericTimeSignature
    \time 5/4
     \repeat unfold 6 {
   \stemUp c4-> \stemDown c c c c \bar "!"
    }
    
   

   
    \bar"||" \stemUp c4->
   }
\new DrumStaff \with{\hide Clef
    \override StaffSymbol.line-count = #1 
  }{
    \time 6/8
    \repeat unfold 10 {
       c8-> c c c c c \bar "!" } 
    
     

      \noBreak\bar"||"

                         \stemUp c8->

    }


\new DrumStaff \with{\hide Clef
    \override StaffSymbol.line-count = #1 
  }{
    \time 2/12
    \repeat unfold 45 {
       c8*4/6 [c8*4/6] \bar "!" } 
    
     

      \noBreak\bar"||"

                         \stemUp c8->
   
   
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

