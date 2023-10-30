\version "2.22.1"

\header {
  dedication = "C‘est cadeau Tiphaine ;)"
  title = "Random in E"
  composer = "Gillian"
}

global = {
  \key e \major
  \time 4/4
}

rightHand = \relative c'' {
  \clef treble
  \global
  e2 dis
  cis fis
  e4 dis8 e dis4 cis
  fis gis a gis
  e8. gis,16 e' fis8 dis16~ dis8 gis, dis' e
  cis8. gis16 fis' gis8 a16~ a8 gis fis e
}

leftHand = \relative c {
  \clef bass
  \global
  e8 b' e b dis, b' dis b
  cis, gis' cis gis a, e' cis' e,
  e8 b' e b dis, b' dis b
  cis, gis' cis gis a, e' cis' e,
  e b' e b dis, b' dis b
  cis, gis' cis gis a, e' cis' e,
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