#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    fis,,8
    gis,,8
    f,,4
    g,,8
    fis,,4
    f,,8
    f,,8
    e,8
    f,4
    es,8
    e,8
    b,,8
    es,8
    fis,2
    f,,8
    fis,,4
    fis,8
    f,,4
    gis,,4
    g,,8
    f,,8
    f,8
    cis,8
    a4
    e4
    c4
    f8
    d8
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
