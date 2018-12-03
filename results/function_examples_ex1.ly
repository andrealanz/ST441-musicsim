#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    fis4
    fis''''4
    a''''4
    f,,8
    fis,,8
    c4
    c''4
    g,,4
    f''''4
    b''''4
    f''''4
    e'''4
    gis,4
    b'''4
    a,4
    cis''4
    e,4
    a,4
    bes'''4
    b,8
    bes,8
    d,4
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
