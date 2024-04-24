\version "2.24.3"

\header {
  %dedication = "To and for : Patricia Gonzalez"
  title = "Je suis un évadé"
  composer = "G. Mencière"
  poet = "F. Pessoa"
}

global = {
  \key b \minor
  \tempo "Andante con moto"
  \time 12/8
}

leftHandPatternMajorSwitch = \relative c {
  a8 e' a cis \change Staff = "up" e a \change Staff = "down" r4. r
}
leftHandPatternMajor = \relative c {
  a8 e' a cis e a r4. r
}
leftHandPatternMinorSwitch = \relative c {
  b8 fis' b d8 \change Staff = "up" fis b \change Staff = "down" r4. r
}
leftHandPatternMinor = \relative c {
  b8 fis' b d8 fis b r4. r
}

rightHand = \relative c' {
  \global
  \mergeDifferentlyDottedOn
  \repeat unfold 3 {<d b'>4. s <d' b'> <b fis'>}
  \repeat unfold 2 {<g e'>4. r <g' e'> <e b'>}
  <cis, a'>4. s <cis' a'> <a e'>
  <a fis'>4. s <fis' d'> <d a'>
  <fis, d'>4. s <fis' d'> <d b'>
  <b g'>4. s <b' g'> <g d'>
  <e cis'>4. s <cis a'> \tuplet 2/3 {<d b'>8 <e cis'>}
  <fis d'>4. s <d b'> <b fis'>
  <fis d'>4. s <<{d''4. b}\\{d8 fis, d b' d, b}>>
  <d, b' fis'>4.\arpeggio s <<{d''4. b}\\{d8 fis, d b' d, b}>>
  <e, b' g'>4.\arpeggio s <<{e''4. b}\\{e8 g, e b' g b,}>>
  <<{ais'4. ais b cis d}\\{ais8 cis, ais ais' cis, ais b' fis b, cis' e, cis d' fis, d}>>
  \stemUp fis8 d fis, \stemNeutral <d b'>4. <fis d'>
  <d b'>4. s <<{d''4. fis,}\\{d'8 fis, d fis d fis,}>>
  <g e'>4. s <<{e''4. b}\\{e8 g, e b' g b,}>>
  <cis a'>4. s <<{e'4. g,}\\{e'8 g, e g e g,}>>
  <a fis'>4. s <<{d'4. fis,}\\{d'8 fis, d fis d fis,}>>
  <fis d'>4. s <<{d''4. fis,}\\{d'8 fis, d fis d fis,}>>
  <g e'>4. s <<{e''4. g,}\\{e'8 g, e g e g,}>>
  <ais fis'>4. s <<{cis'4. ais}\\{cis8 e, cis ais' e ais,}>>
  <d b'>4. s <<{b'4. fis}\\{b8 fis d fis d fis,}>>
  <fis d'>8 d fis \stemUp b d fis \stemNeutral <<{d'4. b}\\{d8 fis, d b' d, b}>>
  <b g'>8 g b e g b <<{e4. b}\\{e8 g, e b' g b,}>>
  <<{ais'4. ais b cis fis, b,}\\{ais'8 cis, ais ais' cis, ais b' fis b, cis' e, cis fis d fis, s4.}>>
  <d' b'>2.
  <d, b'>1.
  <e c'>
  <cis! fis ais>
  <d fis b>4. s b'2.
}

leftHand = \relative c {
  \global
  \clef bass
  \repeat unfold 3 {\leftHandPatternMinorSwitch}
  \repeat unfold 2 {\transpose c f, {\leftHandPatternMinor}}
  \leftHandPatternMajorSwitch
  \transpose c f, {\leftHandPatternMajor}
  \leftHandPatternMinorSwitch
  \transpose c bes, {\leftHandPatternMajorSwitch}
  \leftHandPatternMajorSwitch
  \leftHandPatternMinorSwitch
  \leftHandPatternMinorSwitch
  \leftHandPatternMinorSwitch
  \transpose c f, {\leftHandPatternMinor}
  \transpose c a, {\leftHandPatternMajor}
  \leftHandPatternMinorSwitch
  \leftHandPatternMinorSwitch
  \transpose c f, {\leftHandPatternMinor}
  \leftHandPatternMajorSwitch
  \transpose c f, {\leftHandPatternMajor}
  \leftHandPatternMinorSwitch
  \transpose c f, {\leftHandPatternMinor}
  \transpose c a, {\leftHandPatternMajor}
  \leftHandPatternMinorSwitch
  \leftHandPatternMinorSwitch
  \transpose c f, {\leftHandPatternMinor}
  \transpose c a, {\leftHandPatternMajor}
  \leftHandPatternMinorSwitch
  <b fis' b>1.
  <c g' c>
  <fis, cis'! fis>
  g8 d' g b \change Staff = "up" d fis \change Staff = "down" r4. r
}

voix = \relative c'' {
  \global
  R1.*2
  b2. b4. fis8 g a
  g2. r4. r
  r2. r4. r8 r g
  a2.~ a4. e8 fis g
  fis2. fis4. r
  fis4.~ fis4 fis8 b4.~ b4 fis8
  g2. r4. r
  a2. a4. e8 fis g 
  fis2. fis4. r
  R1.*5
  b4.~ b4 b8 d4. \tuplet 2/3 {fis,8 fis}
  g2. g4. r
  a2. a4. e8 fis g
  fis2. r4. r
  fis2. d'4. fis,8 g a
  g2. r4. r
  ais4.~ ais4 ais8 cis4. cis8 d e
  d2. r4. r
  R1.*3
}

paroles = \lyricmode {
  Je suis un é -- va -- dé du jour de ma nais -- san -- ce
  En moi- -- même re -- clus je me suis fait trans -- fu -- ge
  Puis -- qu'il faut qu'on se las -- se d'être en un mê -- me lieu
  Pour -- quoi ne se las -- ser d'être à soi tou -- jours é -- gal?
}

\score {
  <<
    \new Staff \with { instrumentName = "Singer" }
    <<
      \new Voice = "voice" \with {\consists "Ambitus_engraver"} {\voix}
      \new Lyrics \lyricsto "voice" \paroles
    >>
    \new PianoStaff \with { instrumentName = "Piano" }
    <<
      \new Staff = "up" \rightHand
      \new Staff = "down" \leftHand
    >>
  >>
}