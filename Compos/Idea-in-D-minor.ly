\version "2.24.0"

\header {
  title = "Idea in D minor"
  %subtitle = "Second title"
  %subsubtitle = "Kidding i have no clue"
  composer = "Gillian Mencière"
}

global = {
  \key d \minor
  \time 4/4
  \tempo "Melancholic"
}

right = \relative c' {
  \global
  \set PianoStaff.connectArpeggios = ##t
  <f, a d>1\arpeggio\fermata\mf
  r8 d'(\p a' g bes a e f
  <bes, g'>1)
  r8 d( a' g bes a d, e
  <a, f'>1)
  r8 d a' g bes a e f
  <<
    {
      g4. bes8 g2
    }
    \\
    {
      bes,1
    }
  >>
  r8 d a' g bes a d, e
  <<
    {
      f4. a8 f2
    }
    \\
    {
      a,1
    }
  >>
  r8 d\cresc a'\! g bes a e f
  <<
    {
      g4.\mf a8 g2
    }
    \\
    {
      <cis, e>1
    }
  >>
  r8 a(\decr e' d f e d cis
  \time 5/4
  <f, d'>4. <a f'>8 <f d'>2.)\pp
  \time 4/4
  \tuplet 3/2 {d'8\cresc e f} \tuplet 3/2 {g a bes} \tuplet 3/2 {c d e} \tuplet 3/2 {f g a\!}
  <<
    {
      bes4.\f d8 \tuplet 3/2 {bes d, e} \tuplet 3/2 {f g bes}
      a4. bes8 \tuplet 3/2 {a c bes} \tuplet 3/2 {a g f}
      e4. f8 \tuplet 3/2 {e bes' a} \tuplet 3/2 {g f e}
      d4. a8 d4 s
      bes4. a8 \tuplet 3/2 4 {bes d c bes a g}
      a4. g8 \tuplet 3/2 4 {a c bes a g f}
      g4. f8 \tuplet 3/2 4 {g bes a g f e}
      f4. e8
    }
    \\
    {
      d'2 s
      f s
      cis s
      f,2 \tuplet 3/2 4 {r8 d e f g a}
      d,2 s
      f s
      cis s
      d s
    }
  >>
}

left = \relative c, {
  \global
  \clef bass
  <d a' d>1\arpeggio\fermata
  R1
  g8 d' g d bes' d, g d
  g,4 r r r
  d8 a' d a f' a, d a
  d,4 r r r
  g8 d' g d bes' d, g d
  g,4 r r r
  d8 a' d a f' a, d a
  d,4 r r r
  a8 e' a e cis' e, a e
  a,4 r r r
  \time 5/4
  d8[ a' d a] f'[ a, d a] d,4
  \time 4/4
  R1
  g8 d' g d bes' d, g d
  d,8 a' d a f' a, d a
  a,8 e' a e cis' e, a e
  d8 a' d a f' a, d a
  g8 d' g d bes' d, g d
  d,8 a' d a f' a, d a
  a,8 e' a e cis' e, a e
  bes8 f' bes f d' f, bes f
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
