\version "2.24.3"

\header {
  dedication = "To and for : Patricia Gonzalez"
  title = "Do not seek to tell thy love"
  composer = "G. Mencière"
  poet = "W. Blake"
}

global = {
  \key bes \major
  \tempo "Andante"
  \time 4/4
}

rightHand = \relative c' {
  \global
  \clef treble
  \mergeDifferentlyHeadedOn
  <ees f a>1
  <d f bes>
  <d f g>
  <d f g>2 <c ees g>
  <ees fis c>4 <ees ges c> <d g c> <d g b>
  <c ees g c>1
  <f aes bes>2 <ees g bes>
  <d f bes> <ees f bes>
  <d f bes>4 \tuplet 3/2 {bes'8 c d} <f, bes d>4 \tuplet 3/2 {bes8 c d}
  <f, bes d>4 \tuplet 3/2 {bes8 c d} \tuplet 3/2 {<ees, bes' f'>4 ees'8} \tuplet 3/2 {ees des f}
  <ges, bes ees>4 \tuplet 3/2 {bes8 c d} <g, bes e>2
  <f a c>2. r4
  <fis a d>2. r4
  <g bes d>1
}

leftHand = \relative c, {
  \global
  \clef bass
  <f f'>1
  <bes, bes'>
  <b b'>
  <c c'>2. c'8 bes
  a4 aes g2
  <c, c'>1
  d'2 ees <f, f'>1
  bes2 a!
  aes g
  ges4 bes, c2
  \tuplet 3/2 4 {f8 c' f g a c f c a~} a4
  \transpose c a {\relative c,, {\tuplet 3/2 4 {f8 c' f g a c f c a~} a4}}
  \tuplet 3/2 {g,8 d' g} a4 \tuplet 3/2 {g,8 d' g} bes4
}

voix = \relative c'' {
  \global
  \clef treble
  r4 ees8 d c[ d] ees f
  bes,2 r
  r4 ees8 d c[ d] ees c
  f2( ees4) \tuplet 3/2 {ees8 d c}
  c4 \tuplet 3/2 {ees8( d c)} c4 \tuplet 3/2 {b8( a b)}
  c2 r4 g8 aes
  bes4. aes8 g4 ees'
  d4 \tuplet 3/2 {c8 bes a} c4 \tuplet 3/2 {c8 bes a}
  bes4 r r2
  R1
  r2 r4 \tuplet 3/2 {c8 d e}
  f2. \tuplet 3/2 {c8 d e}
  fis2. \tuplet 3/2 {fis8 e fis}
  g4. ees8 d4 r
  d4. c8 c4 r\breathe
  ees4. des8 des4( ees8 f)
  ges4. f8 ees4 bes
  des4. c8 bes4 r
  c4. bes8 aes4 g
  f2 r
  c'8( aes) bes[( c]) d( bes) c[( d])
  ees4( g f) ees
  d4 \tuplet 3/2 {c8 d ees} d4. d8
  c2 r
  r4 \tuplet 3/2 {c8 bes aes} c4 r
  r4 \tuplet 3/2 {b8 a b} c4 r
}

paroles = \lyricmode {
  Ne -- ver seek to tell they love
  Love that ne -- ver told can be __
  Ne -- _ ver seek
  to __ tell thy __ love
  For the gent -- le wind does move si -- _ lent -- ly in -- vi -- si -- bly
  I told my love
  I told my love
  I told her all my heart
  Trem -- bling cold, trem -- bling cold __ trem -- bling cold
  in ghast -- ly fears.
  Ah, she doth de -- part
  Soon as __ she __ was __ gone __ from me
  A tra -- ve -- ler came by
  Si -- _ lent -- ly In -- vi --si -- bly
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
