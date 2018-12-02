#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    e,4
    g'8
    f,,4
    cis''''8
    c4
    e'4.
    b''''4
    a''''8
    c4
    c2
    c8
    cis''''8
    es,4
    cis'''4
    gis,,2.
    e,2.
    bes'''4
    bes'''4
    g,,4.
    f,4.
    f,4.
    fis''''4
    f''8
    d''4
    es4
    g'8
    f'''4
    fis,,8
    c'''''4
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
