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
    \time 8/8
    {c8->^\markup{\box{1}} [ \ntr c c c] c[ c c c]} \ntro
    {c8->^\markup{\box{2}} [\ntr c c c] c[ c c c]} \ntro
    {c8->^\markup{\box{3}} [\ntr c c c] c[ c c c]} \ntro
    {c8->^\markup{\box{4}} [\ntr c c c] c[ c c c]} \ntro
    {c8->^\markup{\box{5}} [\ntr c c c] c[ c c c]}  \ntro
    {c8->^\markup{\box{6}} [\ntr c c c] c[ c c c]} \ntro
   
    
    \bar"||" c8->
   }
\new DrumStaff \with{\hide Clef
    \override StaffSymbol.line-count = #1 
  }{
    \time 6/5
     c4*4/5->^\markup{\circle{1}}  \ntr c4*4/5 c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
     c4*4/5->^\markup{\circle{2}} \ntr  c4*4/5 c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
     c4*4/5->^\markup{\circle{3}} \ntr  c4*4/5 c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
     c4*4/5->^\markup{\circle{4}} \ntr  c4*4/5 c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
     c4*4/5->^\markup{\circle{5}} \ntr   c4*4/5 c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
      \bar"||"

                          c4*4/5->
   
   
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

