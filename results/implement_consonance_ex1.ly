#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    e''2
    a8
    c,8
    d''''8
    fis,,8
    d''''8
    d8
    a,8
    fis,,8
    f,,4.
    e'8
    c''''4
    fis,,4
    c'2
    d''2
    fis,,8
    e'''4
    e'8
    e'4.
    g''4
    c''''4
    e8
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
