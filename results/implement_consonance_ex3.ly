#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    c'8
    d'8
    a'8
    g'8
    e'8
    c8
    f8
    d8
    f2
    e2
    d4
    c4
    f4.
    es,8
    e,4
    es,8
    g8
    f,8
    e4.
    a2
    a8
    d8
    e8
    a8
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
