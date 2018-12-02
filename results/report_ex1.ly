#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    d4
    g4
    d2
    f4
    d4
    g8
    e8
    f4
    e4
    c2
    d4
    g8
    c4.
    e4
    c4
    c4
    a8
    f8
    d8
    f8
    d4
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
