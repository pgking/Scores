\version "2.18.2"


accords = \chordmode {
  e1:m d e:m e:m
  g1 d e:m b,:m
  e1:m b, e:m e:m
  a1:m e:m a:m e:m b,:7
  g d e:m b:m
  e:m b e:m e:m
}

<<
  \chords {
    \set chordChanges = ##t
    \accords
  }
  
  \relative c''{
 
    \key e \minor
    e8 fis g2 fis8 g
    a2. g4
    e1~
    e2. g8 a
    b4. c d4
    a2. b8 a
    g4. a b4
    fis2. e8 fis
    g4. fis e4
    fis4. e dis4
    e2. fis8 dis
    e2. \tuplet 3/2 {e8 g b}
    a2. \tuplet 3/2 {a8 g fis}
    g2. \tuplet 3/2 {e8 g b}
    a4. a8 g4 a8 g
    b e,8~ e2 e8 g
    fis2. g8 a
    b4. c d4
    a2. b8 a
    g4. a b4
    fis2. e8 fis
    g4. fis e4
    fis4 fis8 a b a g fis
    e2 e4 e
    e1
  }
  \new Staff {
    \key e \minor
    \clef bass
    \transpose e e,
    \accords
  }
>>