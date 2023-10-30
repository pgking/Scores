\version "2.18.2"

\header {
  title = "Lush Life"
  subtitle = "Pour piano à 4 mains"
  composer = "Zara Larsson"
  arranger = "Arrangement par Gillian Mencière"
}
<<
  %Piano 1
  \new PianoStaff \with {
    instrumentName = "Partie 1"
  }
  <<
    %Main droite
    \new Staff {
      \set PianoStaff.connectArpeggios = ##t
      %\override PianoStaff.Arpeggio.Arpeggio-direction = #-1
      \key g \minor
      \relative c'' {
        R1*3
        r2 r16 f f f f8. f16
        f8 g16 f~ f d d8 r d16 d d8 d
        c d16 c~ c bes c8 r8 d16 d d8 d
        c d d16 c8. r8 d16 d d8 d
        d d d16 c8. r8 f16 f f8. f16
        f8 g16 f~ f d d8 r d16 d d8 d
        c d16 c~ c bes c8 r8 d16 d d8 d
        c d d16 c8. r8 d16 d d8 d
        d d d16 c8. bes2
        r8 d d d g,4 bes16 c8 d16~
        d d d d d8 d g,4 r4
        r8 d' d d g,4 bes16 c8 d16~
        d16 d16 d8 r2.
        r8 d d d g,4 bes16 c8 d16~
        d d d d d8 d g,4 r4
        r8 d' d d g,4 bes16 c8 d16~
        d16 d16 d8 r4 r16 f f f f8. f16
        f8 g16 f~ f d d8 r d16 d d8 d
        c d16 c~ c bes c8 r8 d16 d d8 d
        c d d16 c8. r8 d16 d d8 d
        d d d16 c8. r8 f16 f f8. f16
        f8 g16 f~ f d d8 r d16 d d8 d
        c d16 c~ c bes c8 r8 d16 d d8 d
        c d d16 c8. r8 d16 d d8 d
        d d d16 c8. bes2
        r8 d d d g,4 bes16 c8 d16~
        d d d d d8 d g,4 r4
        r8 d' d d g,4 bes16 c8 d16~
        d16 d16 d8 r4 r8 f ees d
        r8 d g, d' g,4 bes16 c8 d16~
        d d d d d8 d g,4 bes8 c
        d8. d16 d8 d g,8 g' g bes~
        bes8. c16 r4 c8 d c16 bes g8
        r4 bes g bes
        d, bes' g bes
        d, r8 d16 d d8 c bes c16 d
        r4 r8. d16~ d8 c16 c bes8 g
        r4 bes' g bes
        d, bes' g8 g bes4
        c16 bes16 g8 r8 d16 d d8 c bes c16 d
        r2 r16 f f f f8. f16
        f8 g16 f~ f d d8 r d16 d d8 d
        c d16 c~ c bes c8 r8 d16 d d8 d
        c d d16 c8. r8 d16 d d8 d
        d d d16 c8. r8 f16 f f8. f16
        f8 g16 f~ f d d8 r d16 d d8 d
        c d16 c~ c bes c8 r8 d16 d d8 d
        c d d16 c8. r8 d16 d d8 d
        d d d16 c8. d'16 c8 bes16~ bes8 a
        g,8 d' c d c d16 g, r4
        g8 d' c d c d16 g, r4
        g8 d' c d c d16 g, r4
        d'16 d d d d8 f16 g r2
        g,8 d' c d c d16 g, r4
        g8 d' c d c d16 g, r4
        g8 d' c d c d16 g, r4
        d'16 d d d d8 f16 g r4 a
        g2 r4 a
        g8. a16 g8. a16 g8 f a4
        g2 r4 a
        g8. a16 g8. a16 r16 f f f f8. f16
        f8 g16 f~ f d d8 r d16 d d8 d
        c d16 c~ c bes c8 r8 d16 d d8 d
        c d d16 c8. r8 d16 d d8 d
        d d d16 c8. r8 f16 f f8. f16
        f8 g16 f~ f d d8 r d16 d d8 d
        c d16 c~ c bes c8 r8 d16 d d8 d
        c d d16 c8. r8 d16 d d8 d
        d d d16 c8. bes2
        g'8 d' c d c d16 g, r4
        g8 d' c d c d16 g, r4
        g8 d' c d c d16 g, r4
        d'16 d d d d8 f16 g r2
        g,8 d' c d c d16 g, r4
        g8 d' c d c d16 g, r4
        g8 d' c d c d16 g, r4
        d'16 d d d d8 f16 g r2
        \arpeggioArrowDown <g, bes d g>2\arpeggio r \bar "|."
      }
    }
    %Main gauche
    \new Staff {
      \key g \minor
      \relative c'{
        R1*4
        <ees g bes>4. <ees g>8~ <ees g>2
        <g bes>4. <f a>8~ <f a>2
        <ees g bes>4~ <ees g bes>16 <c ees g>8.~ <c ees g>4 r
        <g' bes>4~ <g bes>16 <f a>8.~ <f a>2
        <ees g bes>4. <c ees g>8~ <c ees g>4 r4
        <g' bes>4. <f a>8~ <f a>2
        <ees g bes>4~ <ees g bes>16 <c ees g>8.~ <c ees g>4 r
        <g' bes>4~ <g bes>16 <f a>8.~ <f a>2
        R1*8
        <ees g bes>4. <ees g>8~ <ees g>2
        <g bes>4. <f a>8~ <f a>2
        <ees g bes>4~ <ees g bes>16 <c ees g>8.~ <c ees g>4 r
        <g' bes>4~ <g bes>16 <f a>8.~ <f a>2
        <ees g bes>4. <c ees g>8~ <c ees g>4 r4
        <g' bes>4. <f a>8~ <f a>2
        <ees g bes>4~ <ees g bes>16 <c ees g>8.~ <c ees g>4 r
        <g' bes>4~ <g bes>16 <f a>8.~ <f a>2
        R1*6
        r2 r8 g g bes~
        bes8. c16 r4 c8 d c16 bes g8
        r4 bes g bes
        d, bes' g bes
        d, r2.
        R1
        r4 bes' g bes
        d, bes' g8 g bes4
        c16 bes16 g8 r2.
        R1
        <ees g bes>4. <ees g>8~ <ees g>2
        <g bes>4. <f a>8~ <f a>2
        <ees g bes>4~ <ees g bes>16 <c ees g>8.~ <c ees g>4 r
        <g' bes>4~ <g bes>16 <f a>8.~ <f a>2
        <ees g bes>4. <ees g>8~ <ees g>2
        <g bes>4. <f a>8~ <f a>2
        <ees g bes>4~ <ees g bes>16 <c ees g>8.~ <c ees g>4 r
        <g' bes>4~ <g bes>16 <f a>8. bes2
        ees,4~ ees8 c~ c2
        g'4~ g8 f~ f2
        ees4~ ees8 c~ c2
        g'4~ g8. <d g>16-. r2
        ees4~ ees8 c~ c2
        g'4~ g8 f~ f2
        ees4~ ees8 c~ c2
        g'4~ g8. <d g>16-. r4 f
        ees2 r4 f
        ees8. f16 ees8. f16 ees8 d f4
        ees2 r4 f4
        ees8. f16 ees8. f16 <ees g>4 r
        R1*8
        g8 d' c d c d16 g, r4
        g8 d' c d c d16 g, r4
        g8 d' c d c d16 g, r4
        d'16 d d d d8 f16 g r2
        g,8 d' c d c d16 g, r4
        g8 d' c d c d16 g, r4
        g8 d' c d c d16 g, r4
        d'16 d d d d8 f16 g r2
        \arpeggioArrowDown <g, bes d>2\arpeggio r
      }
    }
  >>
  %Piano 2
  \new PianoStaff \with {
    instrumentName = "Partie 2"
  }
  <<
    %Main droite
    \new Staff {
      \key g \minor
      \relative c' {
        \clef bass
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16 d' c8 bes16 c4 f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16 d' c8 bes16 c4 f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16 d' c8 bes16 c4 f,16 g bes c 
        ees,8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        d'16 cis c b bes a aes g ges f e ees d des c b
        g'16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16 d' c8 bes16 c4 f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16 d' c8 bes16 c4 f,16 g bes c
        ees,8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16 d' c8 bes16 c4 f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 cis c b bes a aes g ges f e ees d des c b
        g'16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16 d' c8 bes16 c4 f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16 d'16 c8 bes16 r2
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16 d' c8 bes16 c4 f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16 d' c8 bes16 c4 f,16 g bes c
        g2 r4 a
        g4 r2 a4
        g2 r4 a
        g2 r2
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16 d' c8 bes16 c4 f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16 d' c8 bes16 r2
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16 d' c8 bes16 c4 f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16~ g8 bes~ bes c f,16 g bes c
        g16 bes8 bes16~ bes8 g8~ g g bes c
        d16 bes8 g16 d' c8 bes16 c4 f,16 g bes c
        <g bes d>2\arpeggio r
      }
    }
    %Main gauche
    \new Staff {
      \key g \minor
      \clef bass
      \relative c,
      {
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 g f8 f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 g f8 f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 g f8 f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 r2.
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 g4 f8 f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 g4 f8 f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 g f8 f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 r2.
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 g f8 f f f
        ees8. ees16~ ees8 c~ c c ees f
        g8. g16~ g8 f~ f f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 g r2
        ees8. ees16~ ees8 c~ c c ees f
        g4 g f8 f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 g f8 f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 g f8 f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 g f8 f f f
        ees4~ ees8 c~ c2
        g'4~ g8 f~ f2
        ees4~ ees8 c~ c2
        g'4~ g8 f~ f2
        ees4~ ees8 c~ c2
        g'4~ g8 f~ f2
        ees4~ ees8 c~ c2
        g'2 f2
        ees4~ ees8 c~ c2
        g'4~ g8 f~ f2
        ees4~ ees8 c~ c2
        g'2 r2
        ees8. ees16~ ees8 c~ c c ees f
        g4 g f8 f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 g f8 f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 g f8 f f f
        ees8. ees16~ ees8 c~ c c ees f
        g4 g f8 f f f
        <g d'>2 r
      }
    }
  >>
>>