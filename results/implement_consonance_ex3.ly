#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    g'8
    a'8
    c'4
    g'8
    c'4
    e'8
    c'1
    c'8
    e'8
    f'8
    e'4
    f'8
    e'8
    a'8
    e8
    g8
    e8
    c8
    g8
    e8
    a'8
    f'8
    c'1
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
