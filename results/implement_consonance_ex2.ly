#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    f'2
    g'4
    a,4
    d''1
    e''4
    f''8
    c''''4
    fis,8
    f,8
    f'''8
    f,8
    d''''8
    d'''8
    f,,8
    d4
    a'''8
    f'''8
    es,8
    f4
    f,8
    fis,4
    a''8
    d'''8
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
