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
  \key c \minor
  \time 2/4
  \tempo "Tempo giusto" 4=56
}

right = \relative c' {
  \global
  \clef bass
    <g bes des ees>8\f [<g bes des ees>8 <g bes des ees>8 <g bes des ees>8]\noBreak
    <g bes des ees>8 [<g bes des ees>8 <g bes des ees>8 <g bes des ees>8]\noBreak
    <g bes des ees>8 [<g bes des ees>8-> <g bes des ees>8 <g bes des ees>8->]\noBreak
    <g bes des ees>8 [<g bes des ees>8 <g bes des ees>8 <g bes des ees>8] \noBreak
    <g bes des ees>8 [<g bes des ees>8-> <g bes des ees>8 <g bes des ees>8]\noBreak
    <g bes des ees>8-> [<g bes des ees>8 <g bes des ees>8 <g bes des ees>8]\noBreak
    <g bes des ees>8-> [<g bes des ees>8 <g bes des ees>8 <g bes des ees>8]\noBreak
    <g bes des ees>8 [<g bes des ees>8-> <g bes des ees>8 <g bes des ees>8]

}

left = \relative c {
  \global
  <fes, aes ces fes>8[ <fes aes ces fes>8 <fes aes ces fes>8 <fes aes ces fes>8]
  <fes aes ces fes>8[ <fes aes ces fes>8 <fes aes ces fes>8 <fes aes ces fes>8]
  <fes aes ces fes>8[ <fes aes ces fes>8^> <fes aes ces fes>8 <fes aes ces fes>8^>]
  <fes aes ces fes>8[ <fes aes ces fes>8 <fes aes ces fes>8 <fes aes ces fes>8]
  <fes aes ces fes>8[ <fes aes ces fes>8^> <fes aes ces fes>8 <fes aes ces fes>8]
  <fes aes ces fes>8^>[ <fes aes ces fes>8 <fes aes ces fes>8 <fes aes ces fes>8]
  <fes aes ces fes>8^>[ <fes aes ces fes>8 <fes aes ces fes>8 <fes aes ces fes>8]
  <fes aes ces fes>8[ <fes aes ces fes>8^> <fes aes ces fes>8 <fes aes ces fes>8]

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
