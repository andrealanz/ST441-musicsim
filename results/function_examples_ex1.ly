#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    g,,4
    fis''''4
    b''''4
    g,,4
    a'''4
    g,,4
    c'4
    cis''''4
    e'4
    c''4
    e'''4
    fis,,4
    c4
    f,4
    d''''4
    c4
    a'''4
    g4
    g''4
    d'4
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
