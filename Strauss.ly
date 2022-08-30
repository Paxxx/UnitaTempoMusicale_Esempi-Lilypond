\version "2.20.0"

\include "lilypond-book-preamble.ly"
      #(ly:set-option 'eps-box-padding 3.000000)
 


\paper {
  indent = 0\mm}


\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \key c \major
  \time 4/4
  \tempo "Sehr breit" 4=69
}

right = \relative c' {
  \global
c2\p^\markup{\italic"feierlich"} g' 
c2~	c4.. <g c e>16->\f 
<g c ees>2 <ees g c ees>~
<ees g c ees>16 r16 r8 r4 r2
c2\mf	g'
}

left = \relative c {
  \global
  
  \repeat tremolo 8 {c,32\pp c'}
  \repeat tremolo 8 {c,32 c'}
    \repeat tremolo 8 {c,32 c'}
  \repeat tremolo 8 {c,32 c'}
  \repeat tremolo 8 {c,32 c'}
  \repeat tremolo 8 {c,32 c'}
  \tuplet 3/2 {c8-.^\< g-. c-. }
    \tuplet 3/2 {g8-. c-. g-. }
    \tuplet 3/2 {c8-. g-. c-. }
    \tuplet 3/2 {g8-. c-. g-. }
    c8-.\ff r8 r4 r2


  

}

\score {
  \new PianoStaff \with {
    
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi { }
}
