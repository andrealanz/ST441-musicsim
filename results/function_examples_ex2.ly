#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    fis'''8
    a''8
    a,4
    es,8
    gis'4
    e''8
    bes''''8
    cis'8
    b'''4
    g'4
    fis,,4
    c'8
    g,,2
    cis'''8
    b'''8
    e8
    d''4
    c'''''4
    g,,4
    a8
    es'8
    c'8
    es'''4
    f8
    fis''4
    b''8
    bes,8
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
