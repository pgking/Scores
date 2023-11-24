\version "2.24.2"

\header {
  title = "Do not stand at my grave"
  composer = "Gillian Mencière"
}

global = {
  \key d \minor
  \tempo "Andante con moto"
  \time 4/4
}

rightHand = \relative c' {
  \global
  \clef treble
  \mergeDifferentlyHeadedOn
  <<
    {
      f4 g a bes
      g2 a4 g
      f2 bes4 a
      g1
    }
    \\
    {
      \tuplet 6/4 4 {f16 e d a d e g e d a d e a e d a d e bes' e, d a d e}
      \tuplet 6/4 4 {g16 e d bes d e g e d bes d e a e d bes d e g e d bes d e}
      \tuplet 6/4 4 {f16 e d a d e f e d a d e bes' e, d a d e a e d a d e}
      \tuplet 6/4 4 {g16 cis, b a b cis g' cis, b a b cis g' cis, b a b cis g' cis, b a b cis}
    }
  >>
  \repeat unfold 4 {\tuplet 6/4 {f16 e d a d e}}
  \repeat unfold 4 {\tuplet 6/4 {e16 d c a c d}}
  \repeat unfold 4 {\tuplet 6/4 {f16 e d a d e}}
  \repeat unfold 4 {\tuplet 6/4 {f16 e d bes d e}}
  \repeat unfold 4 {\tuplet 6/4 {f16 e d a d e}}
  \repeat unfold 4 {\tuplet 6/4 {f16 e d a d e}}
  \repeat unfold 4 {\tuplet 6/4 {fis16 c b a b c}}
  \repeat unfold 4 {\tuplet 6/4 {g'16 fis e b e fis}}
  \repeat unfold 4 {\tuplet 6/4 {g16 fis e c e fis}}
  \repeat unfold 4 {\tuplet 6/4 {a16 e c b c e}}
  \tuplet 6/4 4 {a16 e c b c e a dis, c b c dis g fis e b e fis gis e d b d e\fermata}
  <cis a'>4 <e a>8 cis r4 <e a>8 cis
  <d fis a>1
  <d fis a cis>1
  \repeat unfold 2 {\tuplet 6/4 {a'16 e d cis d e}}
  \repeat unfold 2 {\tuplet 6/4 {a16 fis e cis e fis}}
  \repeat unfold 2 {\tuplet 6/4 {a16 e d cis d e}}
  \repeat unfold 2 {\tuplet 6/4 {gis16 fis e cis e fis}}
  \repeat unfold 2 {\tuplet 6/4 {a16 e d cis d e}} <c ees ges aes>2\fermata
  \key ges \major
  \repeat unfold 2 {<f aes>8 des} \repeat unfold 2 {<des ges>8 bes}
  <des f>8 aes <c ges'> aes \repeat unfold 2 {<des f> aes}
  <f' aes>8 des <ges bes> des <ges c> ees <des f bes des>4
  \repeat unfold 2 {<f bes>8 des} \repeat unfold 2 {<ees f a>8 c}
  des16 f ges bes des f ges bes
  \ottava #1
  des f ges bes~ bes4
  \ottava #0
  <des,, aes>4 <ees, aes> <des ges>2
  <bes des ges>16 f' ees des bes des ees f ges4 bes
  <bes, d f aes>1
  \repeat unfold 4 {\tuplet 6/4 {ges'16 f ees bes ees f}}
  \repeat unfold 4 {\tuplet 6/4 {f16 ees des bes des ees}}
  \repeat unfold 4 {\tuplet 6/4 {ges16 f ees bes ees f}}
  \repeat unfold 4 {\tuplet 6/4 {ges16 f ees ces ees f}}
  \repeat unfold 4 {\tuplet 6/4 {aes16 d, ces bes ces d}}
  \tuplet 6/4 {ges16 f ees bes ees f} bes8 ees f ges~ ges4
  \bar "|."
}

leftHand = \relative c, {
  \global
  \clef bass
  <d d'>1
  <g g'>
  <a a'>
  <a a'>
  <d, d'>
  <a a'>
  <d d'>2. \tuplet 3/2 {<c c'>8 <bes bes'> <a a'>}
  <g g'>1
  <d' d'>~
  <d d'>
  <dis dis'>2.~ <dis dis'>8 <b b'>
  <e e'>1
  <c c'>2. <c c'>8 <b b'>
  <a a'>1
  <a a'>4 <b b'> <e e'>2\fermata
  a16 e' a cis a,4 a16 e' a cis a,4
  \repeat unfold 4 {d,16 a' d fis a8 d}
  <a,, a'>4. <gis gis'>8 <fis fis'>4. <gis gis'>8
  <a a'>4. <b b'>8 <cis cis'>4. <b b'>8
  <a a'>2 <aes aes'>\fermata
  \key ges \major
  <des des'>2 <ges, ges'>
  <aes aes'> <des des'>
  <des des'>4 <ges, ges'> <aes aes'> <bes bes'>
  <bes bes'>2 <f' f'>
  <ges ges'>1
  <bes f' bes>4 <ces ges'> <ees bes'>2
  <ges, ges'>1
  <bes bes'>
  <ees, ees'>
  <bes bes'>
  <ees ees'>2. \tuplet 3/2 {<des des'>8 <ces ces'> <bes bes'>}
  <aes aes'>1
  <bes bes'>
  <ees ees'>
}

voix = \relative c'' {
  \global
  \clef treble
  R1*4
  r4 a8 a d4 e8 d
  c4. bes8 a2
  r4 \tuplet 3/2 {a8 bes g} a4 r
  r4 \tuplet 3/2 {a8 c bes} a4 \tuplet 3/2 {g8 f g}
  a4.( bes8 g a f[ g] e d f2) r4
  R1
  r4 r8 b e4. fis8
  g8. fis16 e8. c16 b2
  r4 r8 e, a4. b8 c b a[ dis] e2
  r4 \tuplet 3/2 {a,8 a b} cis a r cis
  d8. cis16 b4 r r8 cis
  fis4. e8 d cis b8. a16
  cis2 r4 \tuplet 3/2 {cis8 e d}
  cis4 r r \tuplet 3/2 {b8 a b}
  cis2 r
  \key ges \major
  r4 aes8 ges16 aes des8 f ees[ des]
  ees8. f16 des8 c des4 r8 des
  f8 ees des[ bes] ees8. f16 des4
  r4 \tuplet 3/2 {des8 c bes} a8 c ees[ f]
  ges2 r4 \tuplet 3/2 4 {ges8 f ees des( ees des) ces des ces} bes( aes ges[) f]
  ges2 r
  R1
  r4 bes8 bes ees4 f8 ees
  des4. ces8 bes2
  r4 \tuplet 3/2 {bes8 ces aes} bes4 r
  r4 \tuplet 3/2 {bes8 des ces} bes2
  r4 bes bes d
  ees1
}

paroles = \lyricmode {
  Do not stand at my grave and weep;
  I am not there, I am not there. I do not sleep __
  I am a thou -- sand winds that blow.
  I am the dia -- mond glints on snow.
  I am the sun -- light on rip -- ened grain.
  I am the gen -- tle au -- tumn rain.
  I am not there. I do not sleep.
  When you aw -- a -- _ _ ken in the mor -- ning's hush
  I am the swift up -- lif -- ting rush
  Of qui -- et  birds in cir -- cled flight.
  I am the soft __ stars __ _ that shine __ at night.
  Do not stand at my grave and cry;
  I am not there. I am not there.
  I did not die.
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