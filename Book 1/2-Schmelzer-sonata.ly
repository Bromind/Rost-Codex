\version "2.18.2"

\include "../Notes/Book 1/2-Schmelzer_sonata/violin_1.ly"

\header {
  title = "Sonnata"
  subtitle = "à 2 Violinis"
  composer = "Schmelzer"
}

global_modern = {
  \key c \major
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
