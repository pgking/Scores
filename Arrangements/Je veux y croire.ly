\version "2.24.0"

\header {
  title = "Je veux y croire"
  arranger = "arr : Gillian Mencière"
  copyright = "Copyright BY-NC"
}

global = {
  \key c \major
  \time 2/2
}

\layout {
  \context {
    \StaffGroup
    \RemoveEmptyStaves
  }
}

voixRaiponce = \relative c'' {
  R1*2
  g4 f e2
  d8 e4 d16 c c8 g4.
  r8 g'4 f8 e2
  d8 e4 d16 c c2
  a'4 g f2
  g8 c g[ c,] e4 d
  g4. f8 e4 c
  d2 r
  g4 f e2
  d8 e4 d16 c c8 g4.
  r8 g'4 f8 e2
  d8 e4 d16 c c2
  a'4 g f4. c8
  b'4 a g4. c,8
  c'4 b a4. e8
  g2 r4 a8 b
  c4 f, f4. e8
  g2 r4 c,8 d
  d4. d8 g4. f8
  f4 e4 r a8 b
  c4 f, f4. e8
  g2 r4 c,8 d
  e4. f8 e4. d8
  c2 r4 a'8 b
  c4. f,8 f4 e
  g2 r4 c,8 d
  e4. f8 e4 d
  d8 c4. r2
  g'4 f e2
  d8 e4 d16 c c8 g4.
  g'4 f e4. b8
  c2 r
}

parolesRaiponce = \lyricmode {
  Tout ce temps ca -- chée dans mes pen -- sées
  Tout ce temps sans ja -- mais y croire
  Tant d'an -- nées si loin de ce mon -- de~et de la vé -- ri -- té
  Me voi -- là sous le ciel é -- toi -- lé
  Je suis là et sou -- dain je vois
  L'A -- ve -- nir s'est é -- clai -- ré
  Ma vie est à l'en -- droit
  Et je suis toute é -- blou -- ie car en -- fin la brume s'est le -- vée
  Et je suis toute é -- blou -- ie les lu -- mières scin -- tillent par -- tout
  L'air est doux je me ré -- jouis de sen -- tir lle mon -- de~a -- van -- cer
  Main -- te -- nant tout sem -- ble dif -- fé -- rent
  Je veux croi -- re~en vous
}

voixFlynn = \relative c'' {
  R1*4
}

parolesFlynn = \lyricmode {
  
}

rightHand = \relative c {
  \global
  \clef bass
  e8 g c g e' g, c g
  e8 g c g g' g, c g
  e8 g c g e' g, c g
  d g b g e g c g
  e8 g c g e' g, c g
  d g b g e g c g
  a c f c a' c, f c
  g c e c <a c e>4 <f b d>
  e8 g c g c a fis a
  <f g a c>2 <f g a b>
  e8 g c g e' g, c g
  d g b g e g c g
  e8 g c g e' g, c g
  d g b g e g c g
}

leftHand = \relative c, {
  \global
  \clef bass
  c2. c'4
  c,2. c'4
  <c, c'>1
  <g g'>2 <c c'>
  <c c'>1
  <g g'>2 <c c'>
  <f f'>1
  <e e'>2 <f f'>4 <g g'>
  <c, c'>2 <d d'>
  <g g'>1
  <c, c'>1
  <g g'>2 <c c'>
  <c c'>1
  <g g'>2 <c c'>
}

chords = \chordmode {
  c1*2
}

\score {
  <<
    \new Staff \with { instrumentName = "Raiponce" }
    <<
      \new Voice = "Voice" {\voixRaiponce}
      \new Lyrics \lyricsto "Voice" {\parolesRaiponce}
    >>
    \new Staff \with { instrumentName = "Flynn" }
    <<
      \new Voice \voixFlynn
      \new Lyrics \parolesFlynn
    >>
    \new PianoStaff \with { instrumentName = "Piano" }
    <<
      \new Staff \rightHand
      \new Staff \leftHand
    >>
  >>
}
