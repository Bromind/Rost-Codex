\version "2.18.2"


\header {
  title = "Sonata"
  subtitle = "a 2 Violinis"
  composer = "Anonymous"
}

global_modern = {
  \key g \minor
  \time 2/2
}

global_original = {
  \key d \minor
  \time 2/2
}

violin = \relative c'' {
  \tempo "presto"
  g' g g d   
  g a bes2 
  r4 \appoggiatura g f e8 e e a
  d, d d g cis,4 \footnote #'(-1 . 3) "No bar in the manuscript" d2
  cis4 d2
  r4 bes a8 a a d 
  g,4 c bes8 bes bes ees 
  a,4 bes2 a4 
  g2 f4 d'
  c8 c c f bes,4 ees 
  d8 d d g c,2
  bes4 r r2
  d4 d d g,
  g' a bes bes, 
  a8 a a d g,4 c 
  d4. b8 c2
  g4 g g d 
  g a bes2
  r4 aes g8 g g c 
  f,4 bes a8 a a d
  g,4 c bes2
  r2 r4 bes 
  a8 a a d g, g g c 
  f,4 r r2
  r a4 a 
  a d, a' b
  c2 r4 bes
  a8 a a d g, g g c 
  f, f f bes e,4
  f2 e4 f2
  r4 f' e8 e e a 
  d,4. g8 c, c c f
  bes, bes bes ees a,2
  g1
  \tempo "adagio"
  bes2 ees4 b 
  c g aes g8 f 
  e4 f2 ees4 d2 ees4. g8
  \tempo "allegro"
  a4 b c8 g c e, 
  f e d4 c r8 c'
  d4 e f8 c f a, 
  bes a g4 f r8 a
  b4 c d8 a d fis, 
  g fis e4 d r8 d'
  e4 fis g8 d g b, 
  c b a4 g r8 g 
  a4 b c8 g c e, 
  f e d4 c r
  r2 c'16 g c g c d bes c 
  a g a bes a8 a g g g4
  f r8 c' d4 e 
  f8 c f a, bes a g4 
  f2 r4 r8 f' g4 a bes8 f bes d, 
  ees d c4 bes2
  r d16 a d a d e c d 
  b2 r4 r8 g 
  a4 b c8 g c e, 
  f e d4 c r
  f'16 c f c f g ees f d c d ees d8 d
  c c c4 bes d
  c2 bes
  r d16 a d a d e c d 
  b2 c16 d bes c a bes g a fis4 g2 fis4
  \time 3/2
  g2 g' g
  g1 d2
  g1 a2 bes1 r2
  r r bes, 
  a4 g a f g e f e f g a bes c1.
  r
  r2 g' g
  g1 d2 
  g1 a2
  bes1 r2
  r r bes 
  a4 g a f g ees 
  f ees f g a bes 
  c2 c c 
  r r a 
  g4 f g e f d 
  e1 g2 
  f4 e f d e d 
  d1.
  r2 d d 
  d1 g,2
  d'1 e2
  f1.
  r2 r f 
  e4 d e c d b
  c b c d e f 
  g2 g2. fis4
  g1.
  r
  r2 r d
  d1 g,2 
  d'1 e2
  f ees d 
  ees c2. b4 
  b1.\fermata
}

\score {
  <<
  \new Staff \with {
    instrumentName = "Violin"
  } {\global_modern \violin}
  \new MensuralStaff \with {
    instrumentName = "Manuscript"
  } {\global_original \violin}
  >>
  \layout { }
}
