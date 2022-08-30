\include "lilypond-book-preamble.ly"
      #(ly:set-option 'eps-box-padding 3.000000)
\version "2.20.0"


ntr = {\override NoteHead.transparent = ##t }
ntro = {\override NoteHead.transparent = ##f }
\paper {
  indent = 0\mm}

<<
 \new DrumStaff \with{\hide Clef \override StaffSymbol.line-count = #1 }{
   \numericTimeSignature
    \time 4/4
    {c4->^\markup{\box{1}} \ntr c4 c4 c} \ntro
    {c4->^\markup{\box{2}} \ntr c4 c4 c} \ntro
    {c4->^\markup{\box{3}} \ntr c4 c4 c} \ntro
    \bar"||" c4->
   }
\new DrumStaff \with{\hide Clef
    \override StaffSymbol.line-count = #1 
  }{
    \time 3/4
     c4->^\markup{\circle{1}} \ntr  c c \ntro
      c4->^\markup{\circle{2}} \ntr c c \ntro
      c4->^\markup{\circle{3}} \ntr c c \ntro
      c4->^\markup{\circle{4}} \ntr c c \ntro
       \bar"||"

                          c4->
   
   
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

