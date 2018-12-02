#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    c'8
    d'8
    f'8
    e'8
    d'8
    g'8
    e'8
    a'8
    f'2.
    f'8
    e'8
    f'8
    g'8
    a'8
    d'8
    f'4
    a'8
    f'8
    f'8
    a'8
    e'4
    d'2
    d'4.
    e'4.
    g'4
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
