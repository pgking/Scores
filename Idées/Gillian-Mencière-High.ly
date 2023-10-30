\version "2.19.62"

\header {
 title = "Idea"
 composer = "Gillian Mencière"
}

\new PianoStaff \with {
  instrumentName = "Piano"
}

<<
  \new Staff {
   \clef treble
   \key f \minor
   \relative c' {
     r4
     <<
       {f( g aes
       c1)}
       \\
       {c,4 bes aes
       e'2 e}
     >>
     r4
     <<
       {f( g aes
       c1)}
       \\
       {c,4 bes aes
       e'2 e}
     >>
     r4
     <<
       {aes( bes c
       ees1)}
       \\
       {ees,4 des c
       g'2 g}
     >>
     r4
     <<
       {aes( bes c
       ees1)}
       \\
       {ees,4 des c
       g'2 g}
     >>
     r4 <f bes des> c' bes
     <<
       {aes2 g}
       \\
       {ees1}
     >>
     <<
       {aes2 g}
       \\
       {ees1}
     >>
     r4
     <<
       {f( g aes
       c1)}
       \\
       {c,4 bes aes
       e'2 e4 e}
     >>
     r4
     <<
       {f( g aes
       c1)}
       \\
       {c,4 bes aes
       e'2 e4 d8 e}
     >>
   }
  }
  \new Staff {
   \clef bass
   \key f \minor
   \relative c, {
     <f,~ f'~>1
     <f f'>
     <f~ f'~>
     <f f'>
     <aes~ aes'~>
     <aes aes'>
     <aes~ aes'~>
     <aes aes'>
     <bes bes'>
     <des des'>
     <ees ees'>
     <f, f'>1
     \repeat tremolo 4 { c16 c' }
     \repeat tremolo 4 { c,16 c'}
     <f, f'>1
     \repeat tremolo 4 { c16 c' }
     \repeat tremolo 4 { c,16 c'}
   }
  }
>>