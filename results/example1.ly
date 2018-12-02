#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    e4
    d,4
    es'''4
    c''4
    f''4
    fis''4
    d''''4
    cis'''4
    f,4
    gis'''4
    fis,4
    g,,4
    bes4
    d''''4
    e''4
    e'4
    b,4
    b''4
    es4
    fis,,4
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
