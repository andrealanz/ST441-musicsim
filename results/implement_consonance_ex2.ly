#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    c'''8
    g''8
    c8
    e'''8
    d'8
    e''''8
    c''''8
    d'8
    g''1
    gis,,8
    fis,,8
    f''8
    f''''8
    e,4
    a8
    f'''8
    e8
    es,8
    cis,8
    fis,,8
    d''8
    g''''8
    b,,8
    f'''8
    d4
    f'8
    bes,8
    d''''4
    f8
    g'8
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
