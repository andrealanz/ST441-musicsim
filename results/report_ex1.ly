#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    f'''4
    c'''8
    f'''2
    g'''8
    g'''8
    f'''2
    c'''4.
    c'''8
    e'''4.
    g'''2
    d'''2
    d'''8
    g'''4
    c'''8
    e'''4
    d'''8
    c'''8
    a'''8
    c'''8
    g'''4
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
