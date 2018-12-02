#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    a,4
    bes,,4
    f'''4
    fis''4
    bes'4
    f,,4
    fis'4
    a'''4
    e'''4
    c4
    fis4
    cis'4
    e4
    bes''''4
    es'4
    fis,4
    g'4
    c''4
    bes'''4
    gis'4
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
