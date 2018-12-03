#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    f''''2
    a''''2
    a''''4
    c''''4
    a''''2
    d''''1
    g''''4
    f''''2
    a''''4
    g''''8
    d''''4
    a''''8
    f''''4
    g''''8
    f''''8
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
