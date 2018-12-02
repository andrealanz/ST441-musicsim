#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    a''2
    e'''2
    c'''''8
    f,,2
    bes''8
    a''4
    c'''2
    gis''4
    es''''4
    es''''8
    g,,8
    fis'8
    a,,8
    gis''''8
    f,4
    g,,8
    e,8
    c'''8
    a''''8
    g'''8
    es8
    bes'8
    g,,4
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
