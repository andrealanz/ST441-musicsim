#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    c4
    e4
    g8
    c4.
    c8
    f8
    a4.
    d8
    e4
    d8
    e8
    g4.
    a8
    e8
    g8
    d4
    a2.
    f8
    c8
    d8
    g2
    a8
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
