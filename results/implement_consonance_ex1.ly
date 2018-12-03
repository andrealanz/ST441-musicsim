#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    c''''2
    d'2
    g,,2
    c8
    e''4
    c''8
    c''8
    e,2.
    e,8
    c'''8
    c8
    g'8
    fis,8
    d''''8
    a''8
    e4
    c8
    c'''8
    d'4
    fis,8
    a'8
    e8
    c'''8
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
