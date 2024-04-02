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
  <<
    {
      r4 f'8 ees d[ ees] f d
      r4 ees8 d c[ d] ees c
      r4 d8 c bes[ c] d bes
      c8 bes a[ bes] c d ees[ c]
      r4 b8 a g[ a] b g
      r4 c8 bes! c[ d] ees d
    }
    \\
    {
      <bes d>1
      <g ees'>1
      <g bes d>1
      <g c>1
      <g b>1
      <g c>1
    }
  >>
  <ees a c>2 a8 f ees[ f]
  f8[ d] bes s r4 d8 f
  g8 f d[ b] r4 d8 f
  <<
    {g2}
    \\
    {\tuplet 3/2 {<d f>4 <d f> <d f>}}
  >>
  <c ees g>2
  <c ees fis>4~ <c ees ges> <c d g>\arpeggio <b d g>\arpeggio
  g'8 f ees[ c] ees f g4
  aes8[ f] bes, f' g[ f] ees bes
  f'8[ ees] d bes f'[ ees] c a'
  <d, f bes>4 \tuplet 3/2 {bes'8 c d} <f, bes d>4 \tuplet 3/2 {bes8 c d}
  <f, bes d>4 \tuplet 3/2 {bes8 c d} \tuplet 3/2 {<ees, bes' f'>4 ees'8} \tuplet 3/2 {ees d f}
  <ges, bes ees>4 \tuplet 3/2 {bes8 c d} <g, bes e>2
  <f a c>2. r4
  <fis a d>2. r4
  <g bes d>4. c8 bes2
  <ees, g>4 c' <ees, g> ees'
  <f, aes des>4 <f aes> des' f
  <ges, bes ees>2 <ges bes>2
  <f bes des>2 <f bes>
  <f aes c>2 <bes, e aes>4 g'
  <bes, c f>2 <c f>
  <ees aes c>2 <f bes d>
  <ees g c>1
  <c ees aes>2 <d f bes>
  <ees g>2 r4 r
  <c ees g>2 r2
  <aes b f'>2 r2
  \time 3/4
  <g c ees>8 d' c[ d] ees c
  <aes d f>8 ees' d[ f] g aes~
  <c, ees aes>8[ g'] f[ ees] d ees~
  \time 4/4
  <aes, ees' f>1
  <g bes ees>8 d' c[ aes'] bes c aes[ g]~
  <c, ees g>1
  <bes d g>8 f' ees[ aes] bes c aes[ bes]~
  <c, ees bes'>1
  <c ees aes>8 g' f[ g] aes a bes[ b]~
  <d, f b>2. <d f b>4
  <c ees g c>4. <ees ees'>8 <d d'> <c c'> <d d'>[ <ees ees'>]
  \tuplet 3/2 4 {<ees g c ees>8 <g g'> <f f'> <ees ees'> r <c c'>} <d f b>4 <c ees g c>4
  <d aes' c>2 <d f b>4 <c ees g c>
  <bes f' aes>2 <bes c ees g>2
  <aes c f aes>1
  <b f' es>4 <c ees g>2.
  <g c ees>2. r4
  <f b d>2 <ees c'>2\fermata
}

leftHand = \relative c, {
  \global
  \clef bass
  <bes' bes'>1
  <c c'>1
  <g g'>1
  <fis fis'>1
  <f! f'!>1
  <ees ees'>1
  <f f'>1
  <<
    {
      s4. bes8 bes, bes' s4
      s2 b8 b, s4
    }
    \\
    {
      bes1
      b1
    }
  >>
  <c c'>2. c'8 bes
  a4 aes g g,
  <c c'>1
  d'2 ees <f, f'>1
  bes2 a!
  aes g
  ges4 bes, c2
  \tuplet 3/2 4 {f8 c' f g a c f c a~} a4
  \transpose c a {\relative c,, {\tuplet 3/2 4 {f8 c' f g a c f c a~} a4}}
  \tuplet 3/2 {g,8 d' g} a4 \tuplet 3/2 {g,8 d' g} bes4
  \tuplet 3/2 {c,8 g' c} d4 \tuplet 3/2 {c,8 g' c} ees4
  \tuplet 3/2 {des,8 aes' des} ees4 \tuplet 3/2 {des,8 aes' des} f4
  \tuplet 3/2 {<ees,, ees'>8 bes'' ees} f4 \tuplet 3/2 {<ees,, ees'>8 bes'' ees} ges4
  \tuplet 3/2 {bes,,8 f' bes} c4 \tuplet 3/2 {bes,8 f' bes} des4
  \tuplet 3/2 {f,,8 c' f} g4 \tuplet 3/2 {c,,8 bes' c} e4
  \tuplet 3/2 {f,8 c' f} g4 aes2
  \tuplet 3/2 4 {aes,8 ees' aes bes c r bes,8 f' bes c d r}
  \tuplet 3/2 4 {c,8 g' c d ees r c,8 g' c d ees r}
  \tuplet 3/2 4 {aes,,8 ees' aes bes c r bes,8 f' bes c d r}
  \tuplet 3/2 4 {c,8 g' c d ees r} r4 \tuplet 3/2 {c,8 bes aes}
  g2. g4
  <g, g'>2. <g g'>4
  <c c'>4 c' c
  <d, d'>4 d' d
  <ees, ees'>4 ees' ees
  <f, f'>1
  <<
    {
      c'4 c c bes
      aes4 aes aes aes
      ees' ees ees d
      c c c c
      f f f f
      g g g s
      c, c c c
    }
    \\
    {
      <c, c'>1
      <aes aes'>1
      <ees' ees'>1
      <c c'>1
      <f f'>1
      <g g'>2. <g g'>4
      <c, c'>1
    }
  >>
  <c c'>2 <d d'>4 <ees ees'>4
  <f f'>2 <g g'>4 <c, c'>4
  <d d'>2 <ees ees'>2
  <f f'>1
  <g g'>4 <aes aes'>2.
  <g g'>2. r4
  <g g'>2 <c, c'>2\fermata
}

voix = \relative c'' {
  \global
  \clef treble
  R1*6
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
  r4 \tuplet 3/2 {b8 a! b} c4 r
  R2.*3
  r4 aes8 g f[ g] aes bes
  g2 r2
  r4 c8 bes aes[ bes] c aes
  bes2 r
  r4 bes8 aes g[ aes] bes g
  c2 r
  r4 d8 c b[ c] d b
  ees2 r
  \tuplet 3/2 4 {ees8( g f ees) r ees d4 d8} ees4
  \tuplet 3/2 4 {ees8( g f ees) r ees d4 d8} c4
  c8 bes aes[ g] bes4. aes8
  aes2 r4 \tuplet 3/2 {aes8 bes c}
  aes8. f16 g2 r4
  r4 \tuplet 3/2 {g8 aes g} g4 r
  r4 \tuplet 3/2 {f8 ees d} c2\fermata
  \bar "|."
}

paroles = \lyricmode {
  Ne -- ver seek to tell thy love
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
  Ne -- ver seek to tell thy love
  Love that ne -- ver told can be
  Ne -- ver seek to tell thy love
  Love that ne -- ver told can be
  Ah, __ She doth de -- part
  Ah, __ She doth de -- part.
  Soon as she was gone from me
  A tra -- ve -- ler came by
  Si -- _ lent -- ly 
  in -- vi -- si -- bly.
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
