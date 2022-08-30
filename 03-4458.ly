\include "lilypond-book-preamble.ly"
      #(ly:set-option 'eps-box-padding 3.000000)
 
\version "2.20.0"

\paper {
  indent = 0\mm
}

%\magnifyMusic 1

<<
 \new DrumStaff \with{\hide Clef \override StaffSymbol.line-count = #1 }{
   \numericTimeSignature
    \time 4/4
   \repeat unfold 5{ \override NoteHead.transparent = ##f  c4->  {  \override NoteHead.transparent = ##t c c c } } 
   \override NoteHead.transparent = ##f  c4->
   } 
\new DrumStaff \with{\hide Clef
    \override StaffSymbol.line-count = #1 
  }{
    \time 5/8 \autoBeamOff
    \repeat unfold 8 {\override NoteHead.transparent = ##f \stemDown c8-> 
                      {\override NoteHead.transparent = ##t \stemUp c c c c}}
\stemDown \override NoteHead.transparent = ##f  c8-> 
 
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

