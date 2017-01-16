\version "2.18.2"

\include "../Notes/Book 1/1-Anonymous-sonata/violin_1.ily"

\header {
  title = "Sonata"
  subtitle = "a 2 Violinis"
  composer = "Anonymous"
}

global_modern = {
  \key d \minor
  \time 2/2
}


\score {
  <<
  \new Staff = "violin" \with {
    instrumentName = "Violino Primo"
  } {\global_modern \violin} 
  >>
  \layout { 
  \context {
    \MensuralStaff
    
    autoBeaming = ##t
  }
  }
}
