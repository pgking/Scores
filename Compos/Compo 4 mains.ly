\version "2.22.1"

\header {
 
  title = "4 mains"
  composer = "Gillian Mencière"
 
}

global = {
  \key a \minor
  \time 4/4
  \tempo "Andante" 4 = 58
}


rightHand = \relative c''' {
  \global
  \ottava #1
  <e c>8. <e c>16 \tuplet 3/2 {<e c>8 d c} b8. b16 \tuplet 3/2 {b8 c d} 
  <a c>8. <a c>16 \tuplet 3/2 {<a c>8 b a} gis8 gis16 gis16 \tuplet 3/2 {gis8 a b}
  a8. a16 \tuplet 3/2 {a8 <c e> d} a8. a16 \tuplet 3/2 {<d f>8 e d} 
  a8. a16 \tuplet 3/2 {a8 <c e> d} gis,8 gis16 gis \tuplet 3/2 {<b d>8 <a c> <b d>}
  <c e>8. <c e>16 \tuplet 3/2 {<c e>8 <d f> <c e>} <d f>8. <d f>16 \tuplet 3/2 {<d f>8 <e g> <d f>}
  <c e>8. <c e>16 \tuplet 3/2 {<c e>8 <b d> <a c>} <c e>8 <b d> <a c> <b d>
  <c e>8. <c e>16 \tuplet 3/2 {<c e>8 <d f> <e g>} <b d>8 <b d>16 <b d> \tuplet 3/2 {<b d>8 <c e> <d f>}
  <c e>8. <c e>16 \tuplet 3/2 {<c e>8 d c} b8 b16 b \tuplet 3/2 {b8 c d}
  <c e>8. <c e>16 \tuplet 3/2 {<c e>8 <b d> <c e>} <d f>8. <c e>16 \tuplet 3/2 {<b d>8 <a c> <g b>}
  << {b4 c c'2}
     \\
     {g,8 f e4~ e2}
  >>
}


leftHand = \relative c'' {
  \global
  c16 <e g>8 <e g>16 c16 <e g>8 <e g>16 b16 <d g>8 <d g>16 b16 <d g>8 <d g>16
  a16 <c e>8 <c e>16 a16 <c e>8 <c e>16 gis16 <b d>8 <b d>16 gis16 <b d>8 <b d>16
  a16 <c e>8 <c e>16 a16 <c e>8 <c e>16 a16 <d f>8 <d f>16 a16 <d f>8 <d f>16
  a16 <c e>8 <c e>16 a16 <c e>8 <c e>16 gis16 <b d>8 <b d>16 gis16 <b d>8 <b d>16
  a16 <c e>8 <c e>16 a16 <c e>8 <c e>16 a16 <d f>8 <d f>16 a16 <d f>8 <d f>16
  a16 <c e>8 <c e>16 a16 <c e>8 <c e>16 gis16 <b d>8 <b d>16 gis16 <b d>8 <b d>16
  c16 <e g>8 <e g>16 c16 <e g>8 <e g>16 b16 <d g>8 <d g>16 b16 <d g>8 <d g>16
  a16 <c e>8 <c e>16 a16 <c e>8 <c e>16 gis16 <b d>8 <b d>16 gis16 <b d>8 <b d>16
  f16 <a c>8 <a c>16 f16 <a c>8 <a c>16 g16 <b d>8 <b d>16 g16 <b d>8 <b d>16
  c2. c,4
}


rightHandTwo = \relative c' {
  \global
  \clef bass
  r16 g <c e> g r g <c e> g r g <b d> g r g <b d> g
  r e <a c> e r e <a c> e r e <gis c> e r e <gis b> e
  r e <a c> e r e <a c> e r f <a d> f r f <a d> f
  r e <a c> e r e <a c> e r e <gis b> e r e <gis b> e
  r e <a c> e r e <a c> e r f <a d> f r f <a d> f
  r e <a c> e r e <a c> e r e <gis b> e r e <gis b> e
  r g <c e> g r g <c e> g r g <b d> g r g <b d> g
  r e <a c> e r e <a c> e r e <gis b> e r e <gis b> e
  r e <a c> e r e <a c> e r f <b d> f r f <b d> f
  r f <b d> f <c' e> g <e' g> g, <c e> g e g c,4
}


leftHandTwo = \relative c, {
  \global
  \clef bass
  <c c'>4 <c c'> <g g'> <g g'>
  <a a'> <a a'> <e e'> <e e'>
  <a a'> <a a'> <d, d'> <d d'>
  <a' a'> <a a'> <e e'> <e e'>
  <a a'> <a a'> <d, d'> <d d'>
  <a' a'> <a a'> <e e'> <e e'>
  <c' c'> <c c'> <g g'> <g g'>
  <a a'> <a a'> <e e'> <e e'>
  <f f'> <f f'> <g g'> <g g'>
  <c c'> <c c'> <c c'>2 \bar "|."
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  }
  <<
    <<
      \new Staff \rightHand
      \new Staff \leftHand
    >>
    \new PianoStaff \with {
      instrumentName = "Piano"
    }
    <<
      \new Staff \rightHandTwo
      \new Staff \leftHandTwo
    >>
  >>
}

