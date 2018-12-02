#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    e,8
    g'8
    f,,8
    cis''''8
    c8
    e'4
    b''''8
    a''''8
    c2
    cis''''8
    es,8
    cis'''8
    gis,,2
    e,2
    bes'''4
    g,,4
    f,2
    fis''''8
    f''8
    d''8
    es8
    g'8
    f'''8
    fis,,8
    c'''''8
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
