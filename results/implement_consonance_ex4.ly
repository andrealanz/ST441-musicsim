#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    e''''1
    a''''8
    d''''8
    e''''4
    c''''8
    a''''8
    f''''8
    c''''8
    a''''2
    g''''2
    a''''1
    a''''1
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
