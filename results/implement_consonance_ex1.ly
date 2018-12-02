#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    c'''''2
    g2
    g''''4
    d'''8
    gis,,4
    d8
    d'4
    a,8
    fis,,8
    d8
    c'''8
    g'8
    d,8
    g,,8
    fis,,8
    fis,,4.
    e'''4
    f,4
    d8
    a''8
    g''4
    c'''''4
    f,,8
    d''4
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
