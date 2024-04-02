\version "2.24.3"

\header {
  title = "Le Papillon"
  composer = "G. Mencière"
  poet = "A. de Lamartine"
}

global = {
  \key d \major
  \tempo "Sautillant"
  \time 3/4
}

rightHand = \relative c' {
  \global
  \clef treble
  \mergeDifferentlyHeadedOn
  \repeat unfold 2 { fis16 e d a e'8[ a,] d a }
  \repeat unfold 2 { fis'16 d cis a d8[ a] cis a }
  \repeat unfold 2 { fis'16 d c a d8[ a] c a }
  \repeat unfold 2 { fis'16 d b a d8[ a] b a }
  g'16 cis, b a d8[ a] b a
  g'16 cis, b a b8[ a] cis a
  fis'16 e d a e'8[ a,] fis' a,
  g'16 e d b d8[ g,] cis g
  fis'16 e d a fis'4 r
  gis16 fis e b <a fis'>4
}

leftHand = \relative c, {
  \global
  \repeat unfold 2 {\clef bass
   <d d'>4
   \clef treble
   d'''4 fis
  }
  \repeat unfold 2 {\clef bass
   <d,,, d'>4
   \clef treble
   d'''4 e
  }
  \repeat unfold 2 {\clef bass
   <d,,, d'>4
   \clef treble
   e'''4 fis
  }
  \repeat unfold 2 {\clef bass
   <g,,, g'>4
   \clef treble
   fis'''4 g
  }
  \clef bass
   <a,,, a'>4
   \clef treble
   g'''4 fis
   \clef bass
   <a,,, a'>4
   \clef treble
   fis'''4 e
   \clef bass
   <<
     {
       s4 e,, d
       s bes' a
     }
     \\
     {
       <d,, d'>2.
       <g g'>2.
     }
   >>
   d4 d' r
   <d, d'>4 <cis cis'>8 <b b'> <a a'>4~
   <a a'>4 <d d'>2
   <a a'>2 <ais ais'>4
   <b b'>2.
   <fis fis'>2 <e e'>4
   <a a'>2
}

voix = \relative c'' {
  \global
  \clef treble
  R2.*10
  d8 d cis4 c8 c
  b8 r16 b16 bes8 bes a8. g16
  a4 a r8 a8
  gis8 gis a[ b] cis4~
  cis8 cis d8[ cis] b a
  e'2 r8 d16 e
  fis4 d8 cis b8. cis16
  a4. b8 gis8. cis16
  cis4 cis r
  
}

paroles = \lyricmode {
  Naî -- tre~a -- vec le prin -- temps mour -- ir a -- vec les ro -- ses,
  Sur l'ai -- le du zé -- phyr na -- ger dans un ciel pur,
  Ba -- lan -- cé sur le sein des fleurs à peine é -- clos -- es
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
