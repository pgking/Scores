\version "2.24.3"

\header {
  dedication = "To : Patricia Gonzalez"
  title = "Do not seek to tell thy love"
  composer = "G. Mencière"
  poet = "W. Blake"
}

global = {
  \key bes \major
  \tempo "Andante con moto" 4 = 63 - 68
  \time 4/4
}

rightHand = \relative c' {
  \global
  \clef treble
  \mergeDifferentlyHeadedOn
  bes2
}

leftHand = \relative c, {
  \global
  \clef bass
  bes2
}

voix = \relative c'' {
  \global
  \clef treble
  bes2
}

paroles = \lyricmode {
  No
}

\score {
  <<
    \new Staff \with { instrumentName = "Singer" }
    <<
      \new Voice = "voice" {\voix}
      \new Lyrics \lyricsto "voice" \paroles
    >>
    \new PianoStaff \with { instrumentName = "Piano" }
    <<
      \new Staff \rightHand
      \new Staff \leftHand
    >>
  >>
}
