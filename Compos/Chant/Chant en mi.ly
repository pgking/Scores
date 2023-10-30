\version "2.24.0"

\header {
  title = "Chant en mi"
  composer = "Gillian Mencière"
  copyright = "Copyright BY-NC"
  tagline = ""
}

global = {
  \key e \minor
  \time 4/4
  \tempo "Tristement, avec mouvement"
}

voix = \relative c' {
  \global
  e4( fis g b
  c d b) r
  c8( b) c[ d] b4 a8 g
  a4 b g2.\fermata
  f4 g a c
  d( e8 f) c2
  d4 c8( bes) a4 f
  g2 \grace {a16 g fis g} a2\fermata
  g4 fis8( g b4) a
  c8 b c d e4 c
  b8 a g a b4 g
  fis4. fis8 c' b a g
  fis4. g8 e2
  R1
  \bar "|."
}

parolesItalien = \lyricmode {
  Sen2 _ -- to4 nel co2 _ -- re,4
  che8 __ _ la8 mia pa4 -- ce8 tur -- ban4 -- do va.2.
  Splen _ -- de~un4 -- a fa _ _ -- ce2
  che4 l'al _ -- ma ac -- cen2 -- de,
  se non __ _ _ è4 a _ _ _ _ _ -- mo _ _ _ -- re,4
  a -- mor4. a -- mor __ _ sa8 _ -- rà, sa -- rà.
}

parolesFrançais = \lyricmode {
  \set melismaBusyProperties = #'()
  Je sens brû -- ler dans mon coeur
  u _ -- ne __ _ pei -- ne cru -- el -- _ le
  Splen -- deur d'un vi -- sa -- _ _ ge
  Qui vient trou -- bler mon â -- me,
  Si ce n'est pas de l'a -- _ _ _ _ mour
  l'a -- _ _ _ mour vien -- dra, l'a -- mour __ _ _ _ _ vien -- dra
}

rightHand = \relative c' {
  \global
  \clef treble
  \mergeDifferentlyHeadedOn
  <<
    {
      e4 fis g e
      a b g2
      a4 b g2
      \time 5/4
      fis4 g e2
      <bes c e>4\fermata
    }
    \\
    {
      \tuplet 3/2 4 {e8 g, b fis' g, b g' g, b e g, b}
      \tuplet 3/2 4 {a'8 c, e b' c, e g b, e b e b}
      \tuplet 3/2 4 {a'8 c, e b' c, e g b, e b e b}
      \tuplet 3/2 4 {fis'8 b, dis g b, dis e g, b g b g}
    }
  >>
  \time 4/4
  <<
    {
      f'4 g a c
      d4 \tuplet 3/2 {s8 s d} c2
      bes2 a
      g <a, b fis'>\fermata
    }
    \\
    {
      \tuplet 3/2 4 {f'8 a, c g' a, c a' c, f c' f, a}
      \tuplet 3/2 4 {d8 f, bes d f, d' c f, a f a f}
      \tuplet 3/2 4 {bes8 f d f d f a f c f c f}
      \tuplet 3/2 4 {g8 e c e c e}
    }
  >>
  \tuplet 3/2 4 {e8 b g b g b g' e b e b e}
  \tuplet 3/2 4 {a8 e c e c e a e c e c e}
  <<
    {
      b'4 a g a
    }
    \\
    {
      \tuplet 3/2 4 {b8 c, e a c, e g c, e a c, e}
    }
  >>
  \tuplet 3/2 4 {fis8 d a d a d fis b, a b a b}
  \tuplet 3/2 4 {e8 b g b e g b g b e g b}
  <g e'>4 r4 r2
}

leftHand = \relative c {
  \global
  \clef bass
  \omit TupletNumber
  \repeat unfold 1 {\tuplet 3/2 4 {e,8 b' e b e b}} e,2
  \transpose c f {\tuplet 3/2 4 {\relative {e,8 b' e b e b}}}
  e2
  \transpose c f {\tuplet 3/2 4 {\relative {e,8 b' e b e b}}}
  e2
  \transpose c g, {\tuplet 3/2 4 {\relative {e,8 b' e b e b}}}
  e2 <c c'>4\fermata
  \repeat unfold 1 {\transpose c des {\tuplet 3/2 4 {\relative {e,8 b' e b e b}}}} f2
  \repeat unfold 2 {\transpose c ges {\tuplet 3/2 4 {\relative {e,8 b' e b e b}}}
  f2}
  \transpose c aes, {\tuplet 3/2 4 {\relative {e,8 b' e b e b}}}
  <dis b' fis'>2
  \repeat unfold 1 {\tuplet 3/2 4 {e8 b' e b e b}} e2
  \repeat unfold 1 {\transpose c f {\tuplet 3/2 4 {\relative {e,8 b' e b e b}}}} a,2
  \repeat unfold 1 {\transpose c aes, {\tuplet 3/2 4 {\relative {e,8 b' e b e b}}}} c,2
  \transpose c bes, {\tuplet 3/2 4 {\relative {e,8 b' e b e b}}}
  dis2
  <e e'>2 <e e'>
  \tuplet 3/2 4 {e8 b' e g b e} g4 r
}

\score {
  <<
    \new Staff \with { instrumentName = "Singer" }
    <<
      \new Voice = "voice" {\voix}
      \new Lyrics \lyricsto "voice" \parolesItalien
      \set melismaBusyProperties = #'()
      \new Lyrics \lyricsto "voice" \parolesFrançais
    >>
    \new PianoStaff \with { instrumentName = "Piano" }
    <<
      \new Staff \rightHand
      \new Staff \leftHand
    >>
  >>
}
