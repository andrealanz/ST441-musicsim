#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    fis,8
    f,4.
    e,4
    f,4
    e,8
    f,4
    fis,8
    a,8
    f,4.
    cis,8
    b,,8
    fis,8
    f,4.
    a,4
    es,8
    f,8
    b,,8
    fis,2
    f,8
    e,4
    fis,8
    e,8
    f,8
    a,8
    es,8
    e,8
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
