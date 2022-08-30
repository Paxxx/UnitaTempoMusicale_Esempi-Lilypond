\version "2.20.0"

\include "lilypond-book-preamble.ly"
      #(ly:set-option 'eps-box-padding 3.000000)
 
\version "2.20.0"

\paper {
  indent = 0\mm}


\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \key c \minor
  \time 2/4
  \tempo 2=108
}

right = \relative c'' {
  \global
  r8\ff <g, g'>8 [<g g'>8  <g g'>8]  <ees ees'>2 \fermata
  r8\ff <f f'>8 [<f f'>8  <f f'>8]  <d d'>2~ <d d'>2\fermata
  
  r8 g'8\p [g g]  r8 aes[ aes aes] r8 ees' [ees ees] 
  c2~  c8 g [g g] 	r aes [aes aes] 	 r f' [f f]  d2
}

left = \relative c {
  \global
  r8\ff <g, g'>8 [<g g'>8  <g g'>8]  <ees ees'>2 \fermata
    r8\ff <f f'>8 [<f f'>8  <f f'>8]  <d d'>2~ <d d'>2\fermata
 R2  \clef treble 
 <<{s2 g'''2~ g2~	g8 s4.	s2	g2~	g2}
   \\
   {<c,~ ees~>2\p  <c~ ees~ >2 <c~ ees~ >2 <c ees>2
   <b~ d~>2 <b~ d~>2 <b d>2}
 >>
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
