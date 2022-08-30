\include "lilypond-book-preamble.ly"
      #(ly:set-option 'eps-box-padding 3.000000)
 
\version "2.20.0"

\paper {
  indent = 0\mm}



<<
 \new DrumStaff \with{\hide Clef \override StaffSymbol.line-count = #1 }{
   \numericTimeSignature
    \time 4/4
    c4-> 	r8 [c16 c] 	c [c c r]		c [c r c-.] 
    c4-> 	r8 [c16 c] 	c [c c r]		c [c r c-.] 
    c4-> 	r8 [c16 c] 	c [c c r]		c [c r c-.] 
    c4-> 	r8 [c16 c] 	c [c c r]		c [c r c-.] 
    c4-> 	r8 [c16 c]  	c [c c r]		c-. [c-. r c-.] 
   c4->}
\new DrumStaff \with{\hide Clef
    \override StaffSymbol.line-count = #1 
  }{
    \time 5/8
    c8-> c  c16 c16 	r16[ c 	c-. c-.]
    c8-> c c 	c16 c	c8-.
    c8-> c  c16 c16 	r16[ c 	c-. c-.]
    c8-> c c 	c16 c	c c
    c8-> c  c16 c16 	r16[ c 	c-. c-.]
    c8-> c c 	c16 c	c8
    c8-> c  c16 c16 	r16[ c 	c-. c-.]
    c8-> c c 	c16-. c-.	c-. c-.\noBreak
   c8->
   
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

