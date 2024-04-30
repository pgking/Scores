\version "2.20.0"

\header {
  title = "The meadow"
  subtitle = "For now"
  composer = "Gillian"
}

leftHandMinor = \relative c, {
  e8[ b' e] b fis' b, g'[ b,] fis' b, e[ b] e, b'
}
leftHandMinorNext = \relative c, {
  e8[ b' e] b fis' b, g'[ b,] fis' b, e[ b] e, b' e,[ b']
}
leftHandMajor = \relative c, {
  c8[ g' c] g d' g, e'[ g,] d' g, c[ g] c, g'
}
leftHandMajorNext = \relative c, {
  c8[ g' c] g d' g, e'[ g,] d' g, c[ g] c, g' c,[ g']
}
rightHandOctavas = \relative c' {
  <e \tweak font-size #-3 \parenthesize e'>8 e' e[ \ottava #1 e'] e \ottava #0 e, e[ e,] e e' e[ \ottava #1 e'] e \ottava #0 e,
}

right = \relative c'' {
  \clef treble
  \key e \minor
  \time 12/8
  \tempo 4. = 55
  \override TextSpanner.bound-details.left.text =
  \markup { \upright "rit." }
  
  <b g'>2. <a fis'>
  <g e'> \stemUp <g b e>\fermata
  \stemNeutral
  <b d> <a c>
  <g b> <dis b'>\fermata
  <e b'>4 b'8 a4 g8 <d fis>4. fis4 e8
  <b~ e~>2. <b e>4.\fermata r4 b'8
  g'( b, g' fis a, fis' e g, e' <g, b e>4)\fermata e'8
  <b d>8.( e16 d8 <a c>4 c8 <g b>8. a16 b8 <dis, b'>4.)\fermata
  <e b'>8 a g <d fis>8. fis16 g8 <b, e>8 g b~ <g b e>4. \fermata
  \time 4/4
  <b e>16 g b e <d fis> a d fis <e g> b e g <b, e g>8. g'16
  <fis a> d fis a <g b> d g b <a c> e d' c <e, g b>8.\fermata b'16
  <e, g b e>8 d'16 c <dis, b'>8\fermata r16 b' <e, g b e> e' d c b16\fermata a\fermata <dis,! g>\fermata fis\fermata
  \compoundMeter #'((6 8) (4 4))
  e4. fis g2. g8 fis
  e4. fis g2. g8 fis
  d4. e fis2. e8 d
  e4. fis g2. fis8 e
  fis4. g a2. fis8 g
  c4. b c2. a8 c
  b4. a b2. g8 a
  b4. a b2. g8 b
  a4. g a2. fis8 g
  c4. b c2. a8 b
  d4. cis d2. b8 d
  e4. d e2. c8 e
  fis4. e fis2~ fis8[ d] e8 fis
  <b, g'>4. <a fis'> <g e'>2. d'8 c
  <g b>4. <fis a> <e g>2. g4
  <d fis>4. e d2. e4
  e8[^> b e]^> fis^> b, fis'^> \bar "!" g[^> b,] e fis g[ fis] e fis
  e8[^> b e]^> fis^> b, fis'^> \bar "!" g[^> b,] e fis g[ fis] e fis
  d[^> a d]^> e^> a, e'^> \bar "!" fis^>[ a,] d e fis[ e] d fis
  e[^> b e]^> fis^> b, fis'^> \bar "!" g[^> b,] e fis g[ e] fis g
  a[^> d, fis]^> g^> d g^> \bar "!" a^>[ d,] fis g a[ fis] g a
  \transpose e a {\relative c' {g'8[^> b, e]^> fis^> b, fis'^> \bar "!" g[^> b,] e fis g[ fis] e g}}
  b^>[ e, g^>] a^> e a^> \bar "!" b^>[ e,] g a b[ a] g b
  \transpose e  g {\relative c' {gis'[^> b, e]^> fis^> b, fis'^> \bar "!" gis[^> b,] e fis gis[ fis] e gis}}
  a[^> d, fis]^> g^> d g^> \bar "!" a^>[ d,] fis g a[ fis] g a
  \transpose e a {\relative c' {g'8[^> b, e]^> fis^> b, fis'^> \bar "!" g[^> b,] e fis g[ e] fis g}}
  \transpose e b {\relative c' {g'8[^> b, e]^> fis^> b, fis'^> \bar "!" g[^> b,] e fis g[ e] fis g}}
  \transpose e c' {\relative c' {gis'8[^> b, e]^> fis^> b, fis'^> \bar "!" gis[^> b,] e fis gis[ e] fis gis}}
  \transpose e d' {\relative c' {gis'8[^> b, e]^> fis^> b, fis'^> \bar "!" gis[^> b,] e fis gis[ e] fis gis}}
  g'8[^> b, e]^> fis^> b, fis'^> \bar "!" g[^> fis] e b g[ fis] e fis
  e8[^> b e]^> fis^> b, fis'^> \bar "!" g[^> b,] e fis g[ b] e g
  fis8[^> a, d]^> e^> a, e'^> \bar "!" fis[^> e] d a fis[ e] d fis
  e8[^> b e]^> fis^> b, fis'^> \bar "!" g[^> b,] e fis g[ b] e fis
  e8[^> b e]^> fis^> b, fis'^> \bar "!" g[^> fis] e b g[ fis] e fis
  d[^> a d]^> e^> a, e'^> \bar "!" fis^>[ a,] d e fis[ e] d fis
  <g, e'>4. <a fis'> \bar "!" <b g'>4 <a fis'> <g e'> <a fis'>
  <g e'>4. <a fis'> \bar "!" <b g'>4 <a fis'> <g e'> <a fis'>
  \transpose g fis {\relative c' {<g ees'>4. <aes f'> \bar "!" <bes g'>4 <aes f'> <g ees'> <bes g'>}}
  <g e'>4. <a fis'> \bar "!" <b g'>4 <g e'> <a fis'> <b g'>
  <fis' a>4. <e g> \bar "!" <fis a>4 <d fis> <e g> <fis a>
  <a c>4. <g b> \bar "!" <a c>4 <fis a> <g b> <a c>
  <g b>4. <fis a> \bar "!" <g b>2 g4 a
  <g b>4. <fis a> \bar "!" <g b>2 g4 b
  <fis a>4. <e g> \bar "!" <fis a>2. g4
  <e g>4. fis \bar "!" <e g>2. g4
  <e g>4. fis \bar "!" <e g>2. g4
  <d fis>4. e \bar "!" <d fis>2. fis4
  \compoundMeter #'((6 8) (5 4))
  e8 e' e[ \ottava #1 e'] e \ottava #0 e, e[ e,] e e' e[ \ottava #1 e'] e \ottava #0 e, e[ e,]
  e8 e' e[ \ottava #1 e'] e \ottava #0 e, e[ e,] e e' e[ \ottava #1 e'] e \ottava #0 e, e[ e,]
  \transpose e fis {\relative c' {e8 e' e[ \ottava #1 e'] e \ottava #0 e, e[ e,] e e' e[ \ottava #1 e'] e \ottava #0 e, e[ e,]}}
  e8 e' e[ \ottava #1 e'] e \ottava #0 e, e[ e,] e e' e[ \ottava #1 e'] e \ottava #0 e, <e, e'>[ <fis fis'>]
  <e \tweak font-size #-3 \parenthesize e'>8 e' e[ \ottava #1 e'] e \ottava #0 e, e[ e,] e e' e[ \ottava #1 e'] e \ottava #0 e, <d, d'>[ <e e'>]
  \transpose e fis {\relative c' {<e \tweak font-size #-3 \parenthesize e'>8 e' e[ \ottava #1 e'] e \ottava #0 e, e[ e,] e e' e[ \ottava #1 e'] e \ottava #0 e, <d, d'>[ <e e'>]}}
  \transpose e g {\rightHandOctavas} <fis fis'>[ <g g'>]
  \transpose e a {\rightHandOctavas} <a a'>[ <b b'>]
  \transpose e c' {\rightHandOctavas} <a a'>[ <c c'>]
  \transpose e b {\rightHandOctavas} <g g'>[ <a a'>]
  \transpose e b {\rightHandOctavas} <g g'>[ <b b'>]
  \transpose e a {\rightHandOctavas} <a a'>[ <b b'>]
  \transpose e c' {\rightHandOctavas} <b b'>[ <cis cis'>]
  \transpose e d' {\rightHandOctavas} <c c'>[ <d d'>]
  \transpose e e' {\rightHandOctavas} <d d'>[ <e e'>]
  \transpose e d' {\rightHandOctavas} <e e'>[ <fis fis'>]
  % Changement de mesure
  \compoundMeter #'((6 8) (4 4))
  \ottava #1
  g'16[ fis e d c b]^3 \ottava #0 a g fis^4 e d c^1 b^3[ a^2 b^3 c^1] d e fis g a[ b \ottava #1 c d] e fis g^1 a
  b[^3 a g fis e d] \ottava #0 c b a g fis e d[ c b a] g a b c d[ e fis g] a b c d
  c[ b a g fis e] d c b a g fis e[ d e fis] g a b c d[ e fis g] a b c d
  <e, e'>4. <fis fis'> \bar "!" <g g'>4 <b, b'> <b' b'> <a a'>
  %<g g'>4. <fis fis'> \bar "!" <e e'>4 <d d'> <c c'> <b b'>
  %<a a'>4. <g g'> \bar "!" <a a'>4 <b b'> <c c'> <g g'>
  %<fis fis'>4. <g g'> \bar "!" <a a'>4 <fis fis'> <g g'> <a a'>
  %<g g'>4. <fis fis'> \bar "!" <e e'>1
}


left = \relative c {
  \clef bass
  \key e \minor
  \override TextSpanner.bound-details.left.text =
  \markup { \upright "rit." }
  
  e'2. d
  c e\fermata
  g, a
  e b\fermata
  c d
  <e,,~ e'~>2. <e e'> 4.\fermata r4.
  e'''4. d c e\fermata
  g, a\startTextSpan e b\fermata\stopTextSpan
  c^\markup {"A tempo"} d e~ <e, e'>\fermata
  
  e8 e' d, d' c,\startTextSpan c' e,~ <e e'>\stopTextSpan
  d^\markup {"A tempo"} d' g, g' a,\startTextSpan a' e,~ <e e'>\fermata\stopTextSpan
  <c c'>4 <b b'>4\fermata <c c'> <b b'>\fermata
  e8[ b' e] b fis' b, g'1
  c,,8[ g' c] g d' g, e'1
  \transpose c d {\relative c {c,8[ g' c] g d' g, e'1}}
  e,8[ b' e] b fis' b, g'1
  \transpose c d {\relative c {c,8[ g' c] g d' g, e'1}}
  \transpose e a {\relative c {e,8[ b' e] b fis' b, g'1}}
  e,8[ b' e] b fis' b, g'1
  \transpose c g {\relative c {c,8[ g' c] g d' g, e'1}}
  \transpose c d {\relative c {c,8[ g' c] g d' g, e'1}}
  \transpose e a {\relative c {e,8[ b' e] b fis' b, g'1}}
  \transpose e b {\relative c {e,8[ b' e] b fis' b, g'1}}
  c,8[ g' c] g d' g, e'1
  \transpose c d {\relative c {c8[ g' c] g d' g, e'1}}
  e,,8[ b' e] b fis' b, g'1
  c,,8[ g' c] g d' g, e'1
  \transpose c d {\relative c {c,8[ g' c] g d' g, e'1}}
  % Début partie rapide
  \leftHandMinor
  c,8[ g' c] g d' g, e'[ g,] d' g, c[ g] c, g'
  \transpose c d {\relative c, {c8[ g' c] g d' g, e'[ g,] d' g, c[ g] c, g'}}
  \leftHandMinor
  \transpose c d {\relative c, {c8[ g' c] g d' g, e'[ g,] d' g, c[ g] c, g'}}
  \transpose e a {\leftHandMinor}
  \leftHandMinor
  \transpose c g {\leftHandMajor}
  \transpose c d {\leftHandMajor}
  \transpose e a {\leftHandMinor}
  \transpose e b {\leftHandMinor}
  \transpose c c' {\leftHandMajor}
  \transpose c d' {\relative c, {c8[ g' c] g d' g, e'[ g,] d' g, c4 <cis,, cis'>}}
  \leftHandMinor
  \leftHandMajor
  \transpose c d {\relative c, {c8[ g' c] g d' g, e'[ g,] d' g, c[ g] c, g'}}
  \leftHandMinor
  \leftHandMajor
  \transpose c d {\relative c, {c8[ g' c] g d' g, e'[ g,] d' g, c[ g] c, g'}}
  \leftHandMinor
  \leftHandMajor
  \transpose c d {\relative c, {c8[ g' c] g d' g, e'[ g,] d' g, c[ g] c, g'}}\leftHandMinor
  \transpose c d {\relative c, {c8[ g' c] g d' g, e'[ g,] d' g, c[ g] c, g'}}
  \transpose e a {\leftHandMinor}
  \leftHandMinor
  \transpose c g {\relative c, {c8[ g' c] g d' g, e'4 d c c,}}
  \transpose c d {\relative c, {c8[ g' c] g d' g, e'4 d c c,}}
  e8[ b' e] b fis' b, g'2 e4 e,
  c8[ g' c] g d' g, e'2 c4 c,
  \transpose c d {\relative c, {c8[ g' c] g d' g, e'2 <c, c'>}}
  % Changement de mesure
  \leftHandMinorNext
  \leftHandMajorNext
  \transpose c d {\leftHandMajorNext}
  \leftHandMinorNext
  \leftHandMajorNext
  \transpose c d {\leftHandMajorNext}
  \leftHandMinorNext
  \transpose c d {\leftHandMajorNext}
  \transpose e a {\leftHandMinorNext}
  \leftHandMinorNext
  \transpose c g {\leftHandMajorNext}
  \transpose c d {\leftHandMajorNext}
  \transpose e a {\leftHandMinorNext}
  \transpose e b {\leftHandMinorNext}
  \transpose c c' {\leftHandMajorNext}
  \transpose c d' {\leftHandMajorNext}
  % Changement de mesure
  \leftHandMinor
  \leftHandMajor
  \transpose c d {\leftHandMajor}
  \leftHandMinor
}



\score {
  \new PianoStaff \with { instrumentName = "Piano" shortInstrumentName = "Pno."}
  <<
    \new Staff = "upper" \right
    \new Staff = "lower" \left
  >>
}