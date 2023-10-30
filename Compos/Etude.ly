\version "2.22.1"

\header {
  title = "Etude facile de gammes"
  composer = "Gillian"
}

global = {
  \key a \minor
  \time 2/2
  \tempo "En avançant"
}

rightHand = \relative c'' {
  \global
  \clef treble
  a'16[ g f e] d c b a a'[ g f e] d c b a
  a'[ g f e] d c b a a'[ gis a b] c b a gis
  a[ g f e] d c b a a'[ g f e] d c b a
  a'[ g f e] d c b a a'[ gis a b] c b a b
  c[ b a g] f e d c c'[ b a g] f e d c
  c'[ b a g] f e d c c'[ b c d] e d c b
  c[ b a g] f e d c c'[ b a g] f e d c
  c'[ b a g] f e d c c'[ b c d] e d c b
  a[ g f e] d c b a a'[ g f e] d c b a
  a'[ g f e] d c b a a'[ gis a b] b g a b
  \ottava #1 c[ bes aes g] f ees d c c'[ bes aes g] f ees d c
  c'[ bes aes g] f ees d c c'[ b c d] ees d c b
  c[ bes aes g] f ees d c c'[ bes aes g] f ees d c
  c'[ bes aes g] f ees d c c'[ b a g] g a b cis
}

leftHand = \relative c {
  \global
  \clef bass
  a8 e' a e g, e' a e
  f, c' f c e, b' e b
  a e' a e g, e' a e
  f, c' f c e, b' e b
  c g' c g b, g' c g
  a, e' a e g, d' g d
  c g' c g b, g' c g
  a, e' a e g, d' gis, d'
  a e' a e g, e' a e
  f, c' f c e, b' g4
  c8 g' c g bes, g' c g
  aes, ees' aes ees g, d' g d
  c8 g' c g bes, g' c g
  aes, ees' aes ees g, g' a, <cis a'>
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