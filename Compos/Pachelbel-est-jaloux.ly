\version "2.22.1"

\header {
  dedication = "C‘est cadeau Tiphaine ;)"
  title = "Pachelbel est jaloux"
  composer = "Gillian"
}

global = {
  \key e \major
  \time 4/4
  \tempo "Andante"
}

rightHand = \relative c'' {
  \clef treble
  \global
  r16 b fis' gis fis e b cis dis8 e16 dis~ dis4
  r16 gis, dis' e dis cis gis a b8 cis16 b~ b4
  r16 e, b' cis b a e fis gis8 a16 gis~ gis4
  r16 e b' cis b a b cis dis8 e16 e~ e8 dis
  %Repeat ~ish
  r16 b fis' gis fis e b cis <b dis>8 <cis e>16 <b dis>~ <b dis>4
  r16 gis dis' e dis cis gis a <gis b>8 <a cis>16 <gis b>~ <gis b>4
  r16 e b' cis b a e fis <e gis>8 <fis a>16 <e gis>~ <e gis>4
  r16 e b' cis b gis a b cis8 dis16 e~ e8 dis
  %Next 4 bars
  r16 cis gis' a gis fis cis fis gis8 a16 cis,~ cis4
  r16 cis gis' a gis fis cis e fis8 gis16 e~ e8 dis
  r16 cis gis' a gis fis cis dis e8 fis16 dis~ dis8 cis
  r16 cis gis' a gis fis cis dis e8 fis16 e~ e8 dis
  %First section again
  r16 b fis' gis fis e b cis dis8 e16 dis~ dis4
  r16 gis, dis' e dis cis gis a b8 cis16 b~ b4
  r16 e, b' cis b a e fis gis8 a16 gis~ gis4
  r16 e b' cis b gis a b cis dis e dis cis dis e fis
  %Development of the second section
  r16 cis gis' a gis fis cis dis e fis a gis fis e dis cis
  r16 cis gis' a gis fis cis dis e fis gis fis e fis e dis
  r16 cis cis' b a gis fis e fis gis a fis gis e fis dis
  r16 cis cis' b a gis fis e fis_\markup{\italic "Rall."} gis a b \ottava #1 cis dis gis fis
  %First section higher and slower
  r16\tempo "Adagio" b, fis' gis fis8 b,16 cis dis8 e16 dis~ dis4
  r16 gis, dis' e dis8 gis,16 a b8 cis16 b~ b4
  r16 e, b' cis b8 e,16 fis gis8 a16 gis~ gis4
  r16 e b' cis b a b cis dis8 e8 gis fis
  <gis, b e>1\arpeggio
  \bar "|."
}

leftHand = \relative c {
  \clef bass
  \global
  e8 b' e b b, fis' dis' fis,
  cis gis' e' gis, gis, dis' b' dis,
  a e' cis' e, e, b' gis' b,
  a e' cis' e, b fis' dis' fis,
  e b' e b b, fis' dis' fis,
  cis gis' e' gis, gis, dis' b' dis,
  a e' cis' e, e, b' gis' b,
  a e' cis' e, b fis' dis' fis,
  cis gis' e' gis, fis cis' a' cis,
  cis, gis' e' gis, b, fis' dis' fis,
  cis gis' e' gis, fis cis' a' cis,
  cis, gis' e' gis, b, fis' dis' fis,
  e b' e b b, fis' dis' fis,
  cis gis' e' gis, gis, dis' b' dis,
  a e' cis' e, e, b' gis' b,
  a e' cis' e, b fis' bis, gis'
  cis, gis' e' gis, fis cis' a' cis,
  cis, gis' e' gis, b, fis' dis' fis,
  cis gis' e' gis, fis cis' a' cis,
  cis, gis' e' gis, b, fis' dis' fis,
  e4^\markup {\italic "Rubato"} gis' b,, dis'
  cis, e' gis,, b'
  a, cis' e,, gis'
  a, cis' b, dis'
  <e, b' e>1\arpeggio
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