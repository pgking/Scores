\version "2.24.3"

\header {
  title = "Le temps des lilas"
  composer = "E. Chausson"
  poet = "M. Bouchor"
}

global = {
  \key a \minor
  \tempo "Lent et triste"
  \time 3/4
}

rightHand = \relative c' {
  \global
  r8 <a c e>
  r8 <a c e> r <a c e> r <a c e>
  r8 <a c e> r <a c e> r <c e>
  r8 <a c e> r <a c e> r <a e'>
  r8 <c a'> r <c a'> r <a c e>
  r8 <a c e> r <a c e> r <a c e>
  r8 <b e> r <b e> \clef bass r <e, g b>
  r8 <f a e'> r <f a c> r <f a>
  r8 <f a> r <f a> r <e gis>
  r8 <e gis> r <gis b d f> r <gis b d f>
  r8 <e gis cis e> r <e gis cis e> r <f a e'>
  r8 <e gis d' e> r <e gis d' e> r <e gis d' e>
}

leftHand = \relative c {
  \global
  \clef bass
  \partial 4 e4
  g4 f8 e d f
  e2 a4
  b2 c8. c16
  e2
  <<
    {
      e,4(
      g4 f8 e d f
      e2) b4(
      e4 d8 c b a
      c2 b4)~
      b4 r r
    }
    \\
    {
      \stemUp
      s4
      e,2.~ e2~ e8 r
      s2.*2
    }
    \\
    {
      \stemDown
      s4
      a,2.
      g
      \ottava #-1
      f
      dis2 e4~
      e4 <d! d'!>2
    }
  >>
  <cis cis'>2 <c c'>4
  <b b'>2.
}

voix = \relative c {
  \global
  \clef bass
  r4
  R2.*4
  \autoBeamOff
  r4 f8 e d f
  e2.~
  e4 d8 c b a
  c2 b4~
  b8 r f'8 e d f
  e2 e8 e
  gis8 gis e2~
  e4 r r
  r4 fis8 e fis a
  g2 fis8 fis
  f!8. c16 f4. f8
  e8 b e2~
  e4 r4 b
  d4 c8 b c d
  cis2~ cis8 r
  R2.
  eis4 gis eis8 cis
  e2 a4
  bes2 bes8 bes
  bes4 a a8 a
  c8 c b4 a
  c2 b8 a
  c4 bes8 a g bes
  a4 g8 f e d
  f2 e4~
  e8 r r4 e8 e
  g!8 g e4 e8 e
  gis8 gis e2~
  e4~ e8 r r4
  R2.*4
}

paroles = \lyricmode {
  Le temps des li -- las et le temps des ro -- ses
  Ne re -- vien -- dra plus à ce prin -- temps -- -ci
  Le temps des li -- las
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