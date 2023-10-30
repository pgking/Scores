\version "2.24.0"

\paper {
  top-margin = 15
  bottom-margin = 10
  ragged-last-bottom = 10
}

\header {
 
  title = "Pour passer le temps"
  composer = "Gillian Mencière"
 
}
global = {
  \key a \minor
  \time 2/2
  \tempo "Andante" 2 = 58
}

rightHand = \relative c' {
  \global
  \clef treble
  <e a>8(\pp c <e a> c <e b'> c <e a> c
  <e a> c <e a> c <e b'> c <e a> c
  <e a> c <e a> c <e b'> c <e a> c
  <e gis> b <e gis> b <e a> b <e b'>) b
  <e a>(\cresc c <e a> c <e b'> c <e a> c
  <e a> c <e a> c <e b'> c <e a> c
  <e a> c <e a> c <e b'> c <e a> c
  <e gis> b <e gis> b <e a> b <e b'>) b
  <a' c>( e <a c> e <a d> e <a c> e
  <a c> e <a c> e <a d> e <a c> e
  <a c> e <a c> e <a d> e <a c> e
  <gis b> e <gis b> e <a c> e <a d> e
  <c' e> a <c e> a <c f>\ff a <c e> a
  <c e> a <c e> a <c f>\decr a <c e> a
  <c e> a <c e> a <c f> a <c e> a
  <b e> gis <b d> gis \stemDown c gis b) gis
  \stemNeutral
  <e a> c <e a> c <e b'> c <e a>4
  <e a>8 c <e a> c <e b'> c <e a>4
  <e a>8 c <e a> c <e b'> c <e a>4
  <e gis>8\pp b <e gis> b <e b'> b <e gis>4
  <c e a>1\ppp
  \bar "|."
}

leftHand = \relative c {
  \global
  \clef bass
  a4 e' a a,(
  g) e' a g,(
  f) c' f f,(
  e) b' e e,(
  \repeat unfold 3 { 
    a) e' a a,(
    g) d' g g,(
    f) c' f f,(
    e) b' e e,(
  }
  a) e' a a,(
  g) d' g g,(
  f) c' f f,(
  e) b' e e,
  <a e' a>1
}


\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  }
  <<
    \new Staff \rightHand
    \new Staff \leftHand
  >>
}