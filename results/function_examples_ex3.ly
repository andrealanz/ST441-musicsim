#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    f,,8
    e'8
    bes'8
    e'4.
    f'8
    es'8
    f'1
    fis'2
    e'2
    fis'8
    e'8
    a'8
    e'8
    fis'8
    f'8
    e'4
    e'8
    f'4
    es'4.
    fis'4
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
