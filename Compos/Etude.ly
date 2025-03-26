\version "2.22.1"

\header {
  title = "Etude de gammes"
  composer = "G. Mencière"
}

global = {
  \key a \minor
  \time 2/2
  \tempo "Con moto"
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
  a'[ g f e] d c b a a'[ gis a b] c b a gis
  a[ g f e] d c b a a'[ g f e] d c b a
  a'[ g f e] d c b a a'[ gis a b] c a b cis
  \ottava #1 d[ c bes a] g f e d d'[ c bes a] g f e d
  d'[ c bes a] g f e d d'[ cis d e] f e d cis
  d[ c bes a] g f e d d'[ c bes a] g f e d
  d'[ c bes a] g f e d d'[ cis d e] f e d e
  f[ e d c] bes a g f f'[ e d c] bes a g f
  f'[ e d c] bes a g f f'[ e f g] a g f e
  f[ e d c] bes a g f f'[ e d c] bes a g f
  f'[ e d c] bes a g f f'[ e f g] a g f e
  d[ c bes a] g f e d d'[ c bes a] g f e d
  d'[ c bes a] g f e d d'[ cis d e] f e d cis
  d[ c bes a] g f e d d'[ c bes a] g f e d
  d'[ c bes a] g f e d d'[ a b cis] d c b gis
  \ottava #0
  a[ g f e] d c b a a'[ g f e] d c b a
  a'[ g f e] d c b a a'[ gis a b] c b a gis
  a[ g f e] d c b a a'[ g f e] d c b a
  a'[ g f e] d c b a a'[ gis a b] c b a gis
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
  f, c' f c e, b' e e,
  a e' a e g, e' a e
  f, c' f c e, b' e a,
  d, a' d a c, a' d a
  bes, f' bes f a, e' a e
  d a' d a c, a' d a
  bes, f' bes f a, e' a e
  f' c' f c e, c' f c
  d, a' d a c, g' c c,
  f c' f c e, c' f c
  d, a' d a c, g' c cis,
  d a' d a c, a' d a
  bes, f' bes f a, e' a e
  d a' d a c, a' d a
  bes, f' bes f a, e' a e
  a, e' a e g, e' a e
  f, c' f c e, b' e b
  a e' a e g, e' a e
  f, c' f c e, b' e b
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