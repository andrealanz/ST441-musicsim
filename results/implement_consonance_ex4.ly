#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    e''1
    g''8
    a''8
    g''2
    a''4
    d''2
    a''2
    g''2
    e''2
    g''8
    e''4.
    d''8
    a''8
    e''4
   \bar "|."
  }
  \paper{
    textheight = 220.\mm
    linewidth = 150.\mm
    indent = 0.\mm
  }
   \score{
   \melody
   \layout{ }
    \midi{
      \tempo 2 = 60
  }
   }
