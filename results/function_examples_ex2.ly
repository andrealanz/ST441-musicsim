#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    bes''''4
    cis,8
    c4
    es,4.
    fis8
    fis'''8
    g,,8
    a'''8
    g''8
    c'8
    e'''4
    cis4
    fis''8
    fis,,8
    g,,2
    es'''8
    b,,8
    bes,,8
    gis,,2
    b''8
    b''8
    fis,,8
    fis'4
    e2
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
