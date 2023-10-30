\version "2.24.0"

\paper {
  top-margin = 15
  bottom-margin = 15
  ragged-last-bottom = 15
  
}

\header {
  title = "Chant en Fa"
  composer = "Gillian Mencière"
  copyright = "Copyright BY-SA-NC"
  tagline = ""
}

global = {
  \key f \major
  \time 2/2
  \tempo "Allant"
}

voix = \relative c'' {
  \set breathMarkType = #'comma
  s8
  R1*4
  a4. g8 a4 bes
  g4. f8 g4 bes
  a2 f
  g2 r
  a4. a8 a4 bes
  g4. g8 g4 a
  f4. f8 a4 c
  d2 r
  c4. bes8 a c bes a
  g4. f8 g bes a g
  f2 r
  R1*3
  \key fis \minor
  R1*4
  fis4. e8 fis4 gis
  a gis fis e
  cis4. b8 cis4 d
  cis2 r2
  fis4. e8 fis4 gis
  a4 gis a b
  cis4 b8 cis d[ cis] b a
  b4 a8 b cis[ b] a gis
  a4 \breathe gis8 a b[ a] gis fis
  gis4 fis8 gis a[ gis] fis eis
  fis4 r r2
  R1*2
  \key d \minor
  R1*8
  %\bar "|."
}

paroles = \lyricmode {
  
}

rightHand = \relative c' {
  \global
  \partial 8
  c8
  <<
    {
      f4. a8 c4. a8
      bes4. d8 c4 bes
      a4. bes8 g4 a
    }
    \\
    {
      r8 <a, c>[ <a c>] r r <f' a>[ <f a>] r
      r <d f>[ <d f>] r r <d f> r <d f>
      r <c f>[ <c f>] r r <c e> r <c e>
    }
  >>
  <a c f>4 <bes e a> <a c f>2
  r8 <a c f> <a c f> <a c f> r <a c f> <a c f> <a c f>
  r <g d' f> <g d' f> <g d' f> r <g bes f'> <g bes f'> <g bes f'>
  r <a c f> <a c f> <a c f> r <a c f> <a c f> <a c f>
  r <bes c e> <bes c e> <bes c e> r <e e'> <f f'> <g g'>
  <a a'>8 <c, e a> <c e a> <c e a> r <d f bes> <d f bes> <d f bes>
  r <c e bes'> <c e bes'> <c e bes'> r <bes e bes'> <bes e a> <bes e g>
  r <a d f> <a d f> <a d f> r <f' a c> <f a c> <f a c>
  r <f bes d> <f bes d> <f bes d> r4 <d' d'>
  <c c'>1
  <bes bes'>1
  <a a'>4. <g g'>8 <a a'> <c c'> <bes bes'> <a a'>
  <g g'>4. <f f'>8 <g g'> <bes bes'> <a a'> <g g'>
  <f f'>2 \tuplet 3/2 2 {<f a c f>4 <f f'> <f f'>}
  <eis b' cis eis>2.\fermata
  cis4
  \key fis \minor
  <a cis fis>4. gis'8 a4 b
  <fis a cis>8 d' cis b a4 gis
  <cis, e a>4. gis'8 a4 b
  <b, e gis>4. fis'8 gis4 a
  \repeat unfold 2 {r8 <a, cis fis> <a cis fis> <a cis fis>}
  \repeat unfold 2 {r8 <a cis fis> <a cis fis> <a cis fis>}
  \repeat unfold 2 {r8 <a cis e> <a cis e> <a cis e>}
  r8 <e cis'> <e cis'> <e cis'> <fis dis'>4 <gis eis'>
  \repeat unfold 2 {r8 <a cis fis> <a cis fis> <a cis fis>}
  r8 <a cis fis> <a cis fis> <a cis fis> r8 <cis fis a> <cis fis a> <cis fis a>
  r8 <e a cis> <e a cis> <e a cis> r8 <e a cis> <e a cis> <e a cis>
  r8 <e gis b> <e gis b> <e gis b> r8 <cis gis' b> <cis gis' b> <cis gis' b>
  r8 <cis fis a> <cis fis a> <cis fis a> r8 <a cis fis> <a cis fis> <a cis fis>
  r8 <gis b cis eis> <gis b cis eis> <gis b cis eis> r8 <gis b cis eis> <gis b cis eis> <gis b cis eis>
  fis'4 e8 fis g[ fis] e d
  \override TextSpanner.bound-details.left.text = "rit"
  e4\startTextSpan d8 e fis[ e] d cis
  d2\stopTextSpan\fermata r4 d8 e
  \key d \minor
  f4 e8 f g4 f8 g
  <<
    {a4 g f e}
    \\
    {bes2 s}
  >>
  d2. e4
  cis2.\fermata r8 a8
  <<
    {
      d4. f8 a4. f8
      g4. bes8 a4 g
      f4. g8 e4 f
    }
    \\
    {
      r8 <f, a> <f a> r r <d' f> <d f> r
      r <bes d> <bes d> r r <bes d> r <bes d>
      r <a d> <a d> r r <a cis> r <a cis>
    }
  >>
  <f a d>4 <g cis f>8 e' <f, a d>2\fermata
}

leftHand = \relative c {
  \global
  \clef bass
  s8
  <<
    {
      r8 <c f> <c f> r r <c f> <c f> r
      r8 <f, bes> <f bes> r r <f bes> r <f bes>
      r8 c' c r r <g c> r <g c>
    }
    \\
    {
      f2 f
      bes, bes4 bes
      c2 c4 c
      <f c' f>4 <c c'> <f c' f>2
    }
  >>
  f2 c'
  bes d
  c c,
  <c c'> <bes bes'>
  <a a'>2 <g g'>
  <c c'> <cis cis'>
  <d d'> <c c'>
  <bes bes'> bes'8 <f' bes> <f bes> <f bes>
  c <f a> <f a> <f a> c <f a> <f a> <f a>
  c, <g' e'> <g e'> <g e'> c, <g' e'> <g e'> <g e'>
  f <c' a'> <c a'> <c a'> f, <c' a'> <c a'> <c a'>
  c, <g' e'> <g e'> <g e'> c, <g' e'> <g e'> <g e'>
  f2 \tuplet 3/2 2 { <f f'>4 <e e'> <d d'> }
  <cis cis'>2. r4
  \key fis \minor
  fis8 <cis' fis> <cis fis> <cis fis> fis,8 <cis' fis> <cis fis> <cis fis>
  \transpose c aes {\relative c,,{fis8 <cis' fis> <cis fis> <cis fis> fis,8 <cis' fis> <cis fis> <cis fis>}}
  \transpose c ees {\relative c,{fis8 <cis' fis> <cis fis> <cis fis> fis,8 <cis' fis> <cis fis> <cis fis>}}
  e, <b' e> <b e> <b e> cis, <gis' cis> <gis cis> <gis cis>
  fis2 fis
  d d
  <a a'> <a a'>
  cis cis
  fis fis
  d d
  <a a'> <a a'>
  <e' e'> <eis eis'>
  fis fis
  cis cis
  d8 a' d[ fis] a fis d4
  a,8 e' a[ cis] e cis a4
  d,8 a' d[ e] f2\fermata
  \key d \minor
  d,8 a' d[ e] f2
  g,8 d' g[ a] bes a g4
  a,8 d f[ a] d2
  a,8 cis e[ g] bes4.\fermata r8
  <<
    {
      r8 <a, d> <a d> r r <a d> <a d> r
      r <d g> <d g> r r <d g> r <d g>
      r a a r
    }
    \\
    {
      d,2 d
      g g4 g
      a,2
    }
  >>
  <a a'>2
  <d d'>4 <a a'> <d d'>2
}

\score {
  <<
    \new Staff \with { instrumentName = "Singer" }
    <<
      \new Voice \voix
      \new Lyrics \paroles
    >>
    \new PianoStaff \with { instrumentName = "Piano" }
    <<
      \new Staff \rightHand
      \new Staff \leftHand
    >>
  >>
}