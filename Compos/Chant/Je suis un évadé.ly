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
  <d, fis a>4. s a'2.
  <cis, g' cis>4. s cis'2.
  <fis, d'>2. <fis d'>4. d'8 cis b
  <d, b'>4. d8 fis b <g e'>4. g8 b e
  <a, fis'>4. cis,8 fis a <d, b'>4. d8 fis b
  <d, b'>4. d8 fis b <g e'>4. g8 b e
  <ais, fis'>4. cis,8 fis ais <d, b'>4. d8 fis b
  <<{e4. g b d cis ais <d, b'>2.}\\{e8 g, e g' e g, b' d, b d' fis, d cis' e, cis ais' cis, ais s2.}>>
  d8 d, fis \stemUp b d fis \stemNeutral <<{b4. fis}\\{b8 d, b fis' d fis,}>>
  <b g'>8 g b e g b <<{e4. g,}\\{e'8 g, e g e g,}>>
  <cis a'>8 cis, e \stemUp a cis e \stemNeutral <<{a4. e}\\{a8 cis, a e' cis e,}>>
  <a fis'>8 fis a d fis a <<{d4. cis}\\{d8 fis, d cis' fis, d}>>
  <d b'>8 d, fis \stemUp b d fis \stemNeutral <<{d'4. cis}\\{d8 fis, d cis' fis, d}>>
  <d b'>8 d, fis b d fis <<{d'4. b}\\{d8 fis, d b' fis d}>>
  <fis a>8 fis, a d fis a <<{d4. a}\\{d8 fis, d a' fis d}>>
  <cis ais>8 cis, fis ais cis fis <e cis'>4. <cis ais'>
  <d b'>4. s <fis d'> <d b'>
  <b fis'>4. s <d b'> <b fis'>
  <fis d'>4. s <fis' d'> <d b'>
  <b g'>4. r <b g'> <g e'>
  <ais fis'>4. r <ais cis> <fis ais>
  <d b'>4. s <fis' d'>4 <e cis'>8 <d b'>4 <e cis'>8
  <cis a'>2. <e cis'>4 <d b'>8 <cis a'>4 <d b'>8
  <b g'>2. <b g'>4 <a fis'>8 <g e'>4 <a fis'>8
  <fis d'>2. r4. <fis d'>
  <ais cis>2. r4. ais
  <d, b'>2. r
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
  a,,8 d fis a \change Staff = "up" d fis \change Staff = "down" r4. r
  \leftHandPatternMajorSwitch
  \transpose c f, {\leftHandPatternMajorSwitch}
  \repeat unfold 2 {b,,8 fis' b s4. e,,8 b' e s4. fis,8 cis' fis s4. b,8 fis' b s4.}
  e,,8 b' e g b e b,8 fis' b d fis b
  fis,,8 cis' fis ais cis fis b,,8 fis' b d \change Staff = "up" fis b \change Staff = "down"
  \leftHandPatternMinorSwitch
  \transpose c f, {\leftHandPatternMinor}
  \leftHandPatternMajorSwitch
  \transpose c f, {\leftHandPatternMajor}
  \leftHandPatternMinorSwitch
  \transpose c bes, {\leftHandPatternMajor}
  \transpose c f, {\leftHandPatternMajor}
  \transpose c a, {\leftHandPatternMajor}
  \leftHandPatternMinorSwitch
  \leftHandPatternMinorSwitch
  \leftHandPatternMinorSwitch
  \transpose c f, {\leftHandPatternMinor}
  \transpose c a, {\leftHandPatternMajor}
  \leftHandPatternMinorSwitch
  a,,4 e'8 a4 cis8 e4. r
  e,,4 b'8 e4 g8 b4. r
  fis,4 d'8 fis4 b8 d4. r
  fis,,4. fis' cis' r
  <b,, b'>4. fis'' b r
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
  r2. r4. r8 r cis
  d4.~ d4 cis8 d4. d4 fis,8
  g2. g4. g
  fis4.~ fis4 ais8 cis4.~ cis4 ais8
  b2. b4. b8 a g
  a2.~ a4. a8 b cis
  e2.~ e4. d
  d2. r4. r
  d4. fis, g g
  cis4. e, fis fis
  d'4. fis, g g
  cis4. cis d2.
  R1.*2
  fis,4. b d4 cis8 b4 a8
  g2. r4. r
  a4. b cis cis8 d e
  d2. r4. r
  R1.*6
  fis,4.~ fis4 fis8 d'4. fis,8 g a
  g2. g4. r
  ais4.~ ais4 b8 cis4. fis,8 d' cis
  b2. r4. r
  R1.*5
  \bar "|."
}

paroles = \lyricmode {
  Je suis un é -- va -- dé du jour de ma nais -- san -- ce
  En moi- -- même re -- clus je me suis fait trans -- fu -- ge
  Puis -- qu'il faut qu'on se las -- se d'être en un mê -- me lieu
  Pour -- quoi ne se las -- ser d'être à soi tou -- jours é -- gal?
  De moi mon âme est en quê -- te mais je bats la cam -- pa -- gne
  Fas -- se le ciel qu'elle ne me trouve ja -- mais
  N'êt -- re qu'un est u -- ne geô -- le êt -- re moi c'est n'êt -- re point
  Dans la fui -- te je vi -- vrai Pour -- tant bel et bien je vis
  N'êt -- re qu'un est u -- ne geô -- le êt -- re moi c'est n'êt -- re point
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