\version "2.19.83"

\header	{
  title = "Smooth"
  composer = "Gillian Mencière"
}

global = {
  \key d \minor
  \time 4/4
}

right = {
  \global
  \relative c' {
   r4 r8 d f a g f
   r4 r8 d f a g f
   r4 r8 d f bes a g
   r4 r8 d f bes a g
   r4 r8 c, f a g f
   r4 r8 c f a g f
   r4 r8 c e g f e
   r4 r8 c e g f e
   g4( f8) d f a g f
   r4 r8 d f a g f
   bes4 r8 d, f bes a g
   r4 r8 d f bes a g
   a4 r8 c, f a g f
   r4 r8 c f a g f
   g4 r8 c, e g f e
   r4 r8 e g bes a g
   a4 r8 d, f a g f
   r4 r8 f a c bes a
   bes4 r8 d, f bes a g
   r4 r8 f bes d c bes
   c4 r8 f, a c bes a
   r4 r8 a c ees d c
   d4 g,8( d' g f ees d
   ees4. d8 c4) r
   r c( d ees
   d4. c8 bes4) r
   r bes( c d
   c4. bes8 a4) r
   r fis( g a
   bes4. a8 g) fis[ g a]
   bes c <d d'>4( <c c'> <d d'>
   <ees ees'>4. <d d'>8 <c c'>4) r
   r <g' g'>( <fis fis'> <g g'>
   <bes bes'>4. <a a'>8 <g g'>4) r
   r <d d'>4 <c c'> <d d'>
   <e e'>4. <d d'>8 <c c'>4 r
   r <a a'> <g g'> <a a'>
   <bes bes'>4. <a a'>8 <g g'>4 r
  }
}

left = {
  \global
  \relative c {
    \clef bass
    d8 f a r r2
    d,8 f a r r2
    d,8 f bes r r2
    d,8 f bes r r2
    c,8 f a r r2
    c,8 f a r r2
    c,8 e g r r2
    c,8 e g r r4 cis,
    d8 f a r r2
    d,8 f a r r2
    d,8 f bes r r2
    d,8 f bes r r2
    c,8 f a r r2
    c,8 f a r r2
    c,8 e g r r2
    c,8 e g r r4 cis,
    d8 f a r r2
    d,8 f a r r2
    d,8 f bes r r2
    d,8 f bes r r2
    f8 a c r r2
    f,8 a c r r4 <fis,, fis'>
    g8 d' g bes d bes g bes
    c, g' c d ees d c g
    c, g' c d ees d c g
    g, d' g  a bes a g d
    g, d' g  a bes a g d
    d, a' d e fis e d a
    d, a' d e fis e d a
    g d' g  a bes a g d
    g, d' g  a bes a g d
    c g' c d ees d c g
    c, g' c d ees d c g
    g, d' g  a bes a g d
    g, d' g  a bes a g d
    d, a' d e fis e d a
    d, a' d e fis e d a
    g d' g  a bes a g d
  }
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  }
  <<
    \new Staff \right
    \new Staff \left
  >>
}