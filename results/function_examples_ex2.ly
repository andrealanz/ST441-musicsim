#(set-global-staff-size 14 )
\header{tagline = ""}
\melody = {
    \time 4/4
    \key c \major
    \clef treble
    bes'8
    f'''8
    e''8
    f,,4
    d'8
    g,,4
    es4
    fis,,8
    cis''''8
    f,,4
    fis,,4
    fis,8
    gis8
    fis,,8
    d'''8
    b'''4
    fis,,8
    c''8
    b,8
    fis'8
    e'''8
    f,,8
    b'8
    e,8
    g,,8
    cis''8
    cis''4
    b4
    d''''8
    cis''8
    a4
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
