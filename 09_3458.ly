\include "lilypond-book-preamble.ly"
      #(ly:set-option 'eps-box-padding 3.000000)
\version "2.20.0"

ntr = {\override NoteHead.transparent = ##t }
ntro = {\override NoteHead.transparent = ##f }

\paper {
  indent = 0\mm}





<<
  
  
  \new DrumStaff \with{fontSize = #-4
    \override StaffSymbol.staff-space = #(magstep -4)
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
   
   
    \time 15/4 %\stopStaff
   c4^\markup{\italic \huge "(z)"} \repeat unfold 14  {
   c4 
    }
    \bar " "
    
   }
   
   
   
 \new GrandStaff <<
   
 \new DrumStaff \with{
    \hide Clef 
    \override StaffSymbol.line-count = #1 }{
   \numericTimeSignature
    \time 3/4
    c4^\markup{\italic \huge "(x)"} \repeat unfold 7 {
   c4 c 
    }
    
   
   

   
    \bar"||" c4->
   }
\new DrumStaff \with{\hide Clef
    \override StaffSymbol.line-count = #1 
  }{
    \time 5/8
    c8^\markup{\italic \huge "(y)"} \repeat unfold 7 {
        c8 c c c  } c
    
     

      \noBreak\bar"||"

                          c->
   
   
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

