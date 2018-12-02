#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    d''8
    e''''8
    f,,4
    d'8
    g'8
    d'4
    g8
    e,8
    a''8
    g''8
    a''''8
    e''''8
    a''''8
    e''''8
    f,,8
    f''''8
    fis,,4
    c2
    f''4
    cis,8
    e'8
    c'2
    g2.
    c''''4
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
