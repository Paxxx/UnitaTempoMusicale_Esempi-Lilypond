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
    \time 5/5
    c4*4/5->^\markup{\box{1}}  \ntr c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
    c4*4/5->^\markup{\box{2}}  \ntr c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
    c4*4/5->^\markup{\box{3}}  \ntr c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
    c4*4/5->^\markup{\box{4}}  \ntr c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
    c4*4/5->^\markup{\box{5}}  \ntr c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
    c4*4/5->^\markup{\box{6}}  \ntr c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
    c4*4/5->^\markup{\box{7}}  \ntr c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
    c4*4/5->^\markup{\box{8}}  \ntr c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
    c4*4/5->^\markup{\box{9}}  \ntr c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
    c4*4/5->^\markup{\box{10}}  \ntr c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro
    c4*4/5->^\markup{\box{11}}  \ntr c4*4/5 c4*4/5 c4*4/5 c4*4/5 \ntro

   
    \bar"||" c8->
   }
\new DrumStaff \with{\hide Clef
    \override StaffSymbol.line-count = #1 
  }{
    \time 11/16
     c16->^\markup{\circle{1}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{2}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{3}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{4}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{5}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{6}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{7}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{8}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{9}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{10}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{11}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{12}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{13}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{14}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{15}} [ \ntr  c c c c c c c c c c]  \ntro
     c16->^\markup{\circle{16}} [ \ntr  c c c c c c c c c c]  \ntro

      \noBreak\bar"||"

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

