\version "2.24.0"

\header	{
  title = "Sounds luminous"
  composer = "Gillian Mencière"
}

global = {
  \key f \major
  \time 6/8
}

right = \relative c'' {
  \global
  \clef treble
  bes8. bes16 bes c bes4 bes8
  a8. a16 a bes a4 a8
  bes8. bes16 bes c bes4 d16 f
  <g, e'>8. d'16 c d e4.
  <g, bes>8. <g bes>16 <g bes> <a c> <g bes>4 <g bes>8
  <f a>8. <f a>16 <f a> <g bes> <f a>8 f16 g a c
  <g bes>8. <g bes>16 <g bes> <a c> <g bes>8. bes16 d f
  <g, e'>8. d'16 c d <g, e'>4.
}

left = \relative c {
  \global
  \clef bass
  g16 d' g a bes a g d g, d' g,8
  f16 c' f g a g f c f, c' f,8
  g16 d' g a bes a g d g, d' g,8
  c16 g' c d e d c g c, g' c8
  g,16 d' g a bes a g d g, d' g, d'
  f, c' f g a g f c f, c' f, c'
  g16 d' g a bes a g d g, d' g,8
  c16 g' c d e d c g c, g' c8
}


\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  }
  <<
    \new Staff \right
    \new Staff \left
  >>
}