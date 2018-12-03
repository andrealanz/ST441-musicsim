#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    e4
    e'2
    fis'4
    f'8
    e'8
    cis'8
    e'4.
    f'4
    fis'8
    es'8
    f'8
    es'4
    f'4.
    e'8
    fis'8
    e'8
    f'8
    e'8
    es'8
    f'4
    fis'2
    es'2
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
