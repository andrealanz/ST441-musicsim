#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    e,2
    b,,8
    cis,8
    b,,4
    a,8
    f,4.
    es,8
    cis,8
    f,4
    f,8
    a,8
    b,,8
    es,8
    a,4
    cis,8
    e,8
    f,2
    fis,2
    a,8
    fis,2
    f,8
    d,8
    f,8
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
