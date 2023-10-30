\version "2.20.0"


\header {
  title = "Idée Compo"
  composer = "Gillian Mencière"
}


right = \relative c'' {
  \key a \major
  \time 4/4
  \mergeDifferentlyDottedOn
  \override TextSpanner.bound-details.left.text = "rit."
  R1
  R
  cis2 a
  d gis,
  cis8[( a]) cis[( a]) cis[( a]) cis[( a])
  d[( b]) d[( b]) d( cis b a)
  cis8[( a]) cis[( a]) cis[( a]) cis[( a])
  d[( b]) d[( b]) e( d cis b)
  a16[ b cis] a[ b cis] a[ b] a[\< b cis] a[ b cis] a[ b]
  b[ cis d] b[\! cis d] b[ cis] d[\> cis b] d[ cis b] d[ cis]\!
  a16[ b cis] a[ b cis] a[ b] a[\< b cis] a[ b cis] a[ b]
  b[ cis d] b[\! cis d] b[ cis] e[\> d cis] d[ cis b] d[ cis]\!
  <<
    {
      e8( e fis e) fis( fis gis fis)
      fis( fis gis fis) e(\> e d cis)\!
      cis( cis d cis) cis(\< cis d cis)
      d( d e\! d) d(\> d cis b)\!
      cis( cis d cis) cis(\< cis d cis)
      d( d e\! d) e( e fis gis)
      a(\f a b a a a b a
      b b cis b a\decresc gis\! fis gis)
      a(\cresc a b a a a b a
      b\!\ff b cis b a\decresc gis\! fis gis)
      a(\cresc a b a a a b a
      b\!\ff b cis b a\decresc gis\! fis gis)
      a( a gis fis fis fis gis a
      e e a cis b4) cis8 b
      a( a b cis d d e d
      c c b ais ais ais b cis 
      b)( b a g fis fis e d
      cis cis d e d cis b16) <d, fis>8 b'16
    }
    \\
    {
      cis16 a cis a cis a cis a cis a cis a cis a cis a
      d b d b d b d b b gis b gis b gis b e,
      cis' a cis a d a cis a cis a cis a d a cis a
      d b d b e b d b d gis, d' gis, cis gis b gis
      cis a cis a d a cis a cis a cis a d a cis a
      d a d a e' a, d a e' b e b fis'\cresc b,\! gis' b,
      e cis e cis e cis e cis fis cis fis cis fis cis fis cis
      fis d fis d fis d fis d e b e b e b e b
      \tuplet 3/2 {a'16 e cis} \tuplet 3/2 {a' e cis} \tuplet 3/2 {b' e, cis} \tuplet 3/2 {a' e cis} 
      \tuplet 3/2 {a' fis cis} \tuplet 3/2 {a' fis cis} \tuplet 3/2 {b' fis cis} \tuplet 3/2 {a' fis cis}
      \tuplet 3/2 {b' fis d} \tuplet 3/2 {b' fis d} \tuplet 3/2 {cis' fis, d} \tuplet 3/2 {b' fis d} 
      \tuplet 3/2 {a' e b} \tuplet 3/2 {gis' e b} \tuplet 3/2 {fis' e b} \tuplet 3/2 {gis' e b}
      \tuplet 3/2 {a'16 e cis} \tuplet 3/2 {a' e cis} \tuplet 3/2 {b' e, cis} \tuplet 3/2 {a' e cis} 
      \tuplet 3/2 {a' fis cis} \tuplet 3/2 {a' fis cis} \tuplet 3/2 {b' fis cis} \tuplet 3/2 {a' fis cis}
      \tuplet 3/2 {b' fis d} \tuplet 3/2 {b' fis d} \tuplet 3/2 {cis' fis, d} \tuplet 3/2 {b' fis d} 
      \tuplet 3/2 {a' e b} \tuplet 3/2 {gis' e b} \tuplet 3/2 {fis' e b} \tuplet 3/2 {gis' cis, b}
      \tuplet 3/2 {a' cis, a} \tuplet 3/2 {a' cis, a} \tuplet 3/2 {gis' cis, a} \tuplet 3/2 {fis' cis a}
      \tuplet 3/2 {fis' d a} \tuplet 3/2 {fis' d a} \tuplet 3/2 {gis' d a} \tuplet 3/2 {a' d, a}
      \tuplet 3/2 {e' cis a} \tuplet 3/2 {e' cis a} \tuplet 3/2 {a' e cis} \tuplet 3/2 {cis' a e}
      \tuplet 3/2 {b' gis e} \tuplet 3/2 {b' gis e} \tuplet 3/2 {cis' gis e} \tuplet 3/2 {b' gis eis}
      \tuplet 3/2 {a fis cis} \tuplet 3/2 {a' fis cis} \tuplet 3/2 {b' fis cis} \tuplet 3/2 {cis' fis, cis}
      \tuplet 3/2 {d' b fis} \tuplet 3/2 {d' b fis} \tuplet 3/2 {e' b fis} \tuplet 3/2 {d' b fis}
      \tuplet 3/2 {c' g e} \tuplet 3/2 {c' g e} \tuplet 3/2 {b' g e} \tuplet 3/2 {ais g e}
      \tuplet 3/2 {ais fis cis} \tuplet 3/2 {ais' fis cis} \tuplet 3/2 {b' fis cis} \tuplet 3/2 {cis' fis, cis}
      \tuplet 3/2 {b' d, b} \tuplet 3/2 {b' d, b} \tuplet 3/2 {a' d, b} \tuplet 3/2 {g' d b}
      \tuplet 3/2 {fis' b, g} \tuplet 3/2 {fis' b, g} \tuplet 3/2 {e' b g} \tuplet 3/2 {d' b g} 
      \tuplet 3/2 {cis ais fis} \tuplet 3/2 {cis' ais fis} \tuplet 3/2 {d' ais fis} \tuplet 3/2 {e' ais, fis}
      \tuplet 3/2 {d' fis, d} \tuplet 3/2 {cis' fis, d} s4
      \tuplet 3/2 {b'16( ais b} \tuplet 3/2 {cis b cis} \tuplet 3/2 {d cis d} \tuplet 3/2 {e d e}
      \tuplet 3/2 {fis e fis} \tuplet 3/2 {g fis g} \tuplet 3/2 {a g a} \tuplet 3/2 {b a b}
      \ottava #1
      \tuplet 3/2 {cis b cis} \tuplet 3/2 {d cis d} \tuplet 3/2 {e d e} \tuplet 3/2 {fis e fis}
      \tuplet 3/2 {g fis g_\markup{\italic "rit."}} \tuplet 3/2 {a g_\startTextSpan a} \tuplet 3/2 {ais a ais} ais32 ais gis ais)\stopTextSpan
      \time 3/4
      \tuplet 3/2 {<b, d b'>16 fis' d} \ottava #0 \tuplet 3/2 {b fis d}
      \tuplet 3/2 {b fis d} \tuplet 3/2 {b d fis} \tuplet 3/2 {b d fis} \ottava #1 \tuplet 3/2 {b d fis} 
      <b d fis b>2.
    }
  >>
  \bar "|."
}

left = \relative c {
  \key a \major
  \time 4/4
  \clef bass
  <a e' a>2^\pp <fis cis' fis>
  <b fis' b> <e, b' e>
  <a e' a>2^\p <fis cis' fis>
  <b fis' b> <e, b' e>
  <a e' a>2 <fis cis' fis>
  <b fis' b> <e, b' e>
  <a e' a>2 <fis cis' fis>
  <b fis' b> <e, b' e>
  a8^\mp e' a e fis, cis' fis cis
  b fis' b fis e, b' e b
  a8 e' a e fis, cis' fis cis
  b fis' b fis e, b' e b
  a8 e' a e fis, cis' fis cis
  b fis' b fis e, b' e b
  a8 e' a e fis, cis' fis cis
  b fis' b fis e, b' e b
  a8 e' a e fis, cis' fis cis
  b fis' b fis e, b' e b
  a8 e' a e fis, cis' fis cis
  b fis' b fis e, b' e b
  a8 e' a e fis, cis' fis cis
  b fis' b fis e, b' e b
  a8 e' a e fis, cis' fis cis
  b fis' b fis e, b' e eis,
  fis cis' fis cis d a' d a
  a, e' a e e, b' e eis,
  fis cis' fis cis b fis' b fis
  c, g' c g fis cis' fis cis
  b fis' b fis g, d' g d
  fis, cis' fis cis b fis' b fis
  b, fis' b fis g, d' g d
  e, b' e b fis cis' fis cis
  \repeat tremolo 1 {<b, fis'>4. b'}
  <b, b,>2.
}


\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano "
    \new Staff = "right" \right
    \new Staff = "left" \left
  >>
}
