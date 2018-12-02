#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    a,4
    g'''4
    d'2
    c''''8
    e''''8
    fis,4
    d''8
    a,8
    d8
    c8
    g,,8
    e8
    f,8
    c'''8
    d'''8
    d''''8
    d,8
    b,,8
    d''''8
    c8
    g''8
    f'8
    d'8
    f'''8
    e'''8
    a8
    g'8
    f''''8
    gis,,8
    d,8
    fis,,8
    c'''8
    c''''8
    g,,8
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
