#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    g''''4
    es'''4
    bes'4
    b'4
    gis''''4
    g4
    c4
    d4
    g'4
    bes'4
    g,,4
    a4
    gis'4
    bes4
    b,4
    g4
    bes''4
    g,,4
    g''4
    f''4
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
