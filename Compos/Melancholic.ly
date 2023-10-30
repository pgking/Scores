\version "2.19.83"

\header {
  title = "First title"
  subtitle = "Second title"
  subsubtitle = "Kidding i have no clue"
  composer = "Pgking"
}

global = {
  \key g \minor
  \numericTimeSignature
  \time 2/2
  \tempo "Rubato, free"
}

right = \relative c'' {
  \global
    R1
    R1
    R1
    r2 r4 r8 c16( d
    ees8 d c2)~ c8 g8
    bes2( g4) r8 c16 d
    ees8 d c2~ c8 g
    a2. r8 c16 d
    ees8 d c2~ c8 d
    d4. c8 bes4 r8 c16 d
    ees8\< d c2~ c8 ees
    f2\! r4 r8 g16 a
    bes8 a g ees~ ees2
    r2 r4 r8 g16 a
    bes8 a g ees~ ees2
    r2 r4 r8 <c c'>16 <d d'>
    <ees ees'>4 <d d'> <c c'> <g g'>
    <bes bes'>4. <a a'>8 <g g'>2
    r8 <c c'>16 <d d'> <ees ees'>8[ <d d'>] <c c'>4. <ees ees'>8
    <f f'>4. <c c'>4 <a a'> <f f'>8
}

left = \relative c {
  \global
  c8 g' ees' g, ees' g, ees' g,
  g, d' bes' d, bes'2
  c,8 g' ees' g, ees' g, ees' g,
  f, c' a' c, a'2
  c,8 g' ees' g, ees' g, ees'4
  g,,8 d' bes' d, bes'2
  c,8 g' ees' g, ees' g, ees'4
  f,,8 c' a' c, a'2
  c,8 g' ees' g, ees' g, ees'4
  g,,8 d' bes' d, bes' d, bes'4
  c,8 g' ees' g, ees' g, ees' g,
  f,8 c' a' c, a' c, a' c,
  c8 g' ees' g, ees' g, ees'4
  g,,8 d' bes' d, bes'2
  c,8 g' ees' g, ees' g, ees' g,
  f,8 c' a' c, a' c, a' c,
  c8 g' ees' g, ees' g, ees'4
  g,,8 d' bes' d, bes' d, bes'4
  c,8 g' ees' g, ees' g, ees' g,
  f,8 c' a' c, a' c, a' c,
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \tempo 2=55
  }
}
