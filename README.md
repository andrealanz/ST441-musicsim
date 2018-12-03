
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Simulating Music using R

### Author: Andrea Lanz

A project that focuses on the quantitative representation of music and
how it can be simulated. This project will explore the relationship
between the numerical information behind sound and what is considered
music. Using several related sources, this project will mainly focus on
frequency of sound and analyzing the patterns of frequency that can be
seen in music.

#### Important Links

The project presentation can be found at the following link: -
<https://github.com/ST541-Fall2018/andrealanz-project-musicsim/blob/master/doc/project_presentation.pdf>

The project report can be found at the following link: -
<https://github.com/ST541-Fall2018/andrealanz-project-musicsim/blob/master/doc/Report.pdf>

#### How to use this project:

1.  To understand the mechanics behind representing music in R, which
    includes converting Wave objects into LilyPond files and LilyPond
    files in general, I would recommend looking at the
    **[LilyPond\_Example.md](https://github.com/ST541-Fall2018/andrealanz-project-musicsim/blob/master/doc/LilyPond_Example.md)**
    and
    **[Wave\_to\_Lilypond.md](https://github.com/ST541-Fall2018/andrealanz-project-musicsim/blob/master/doc/Wave_to_Lilypond.md)**
    files in the ‘doc’ directory.

2.  To understand my process behind implementing Markov chains and
    consonance into music, I would recommend looking at the
    **[Implement\_Markov.md](https://github.com/ST541-Fall2018/andrealanz-project-musicsim/blob/master/doc/Implement_Markov.md)**
    and
    **[Implement\_Consonance.md](https://github.com/ST541-Fall2018/andrealanz-project-musicsim/blob/master/doc/Implement_Consonance.md)**
    files in the ‘doc’ directory.

3.  To begin simulating your own music, I would recommend first looking
    at the
    **[Function\_Examples.md](https://github.com/ST541-Fall2018/andrealanz-project-musicsim/blob/master/doc/Function_Examples.md)**,
    then visiting the
    **[‘R’](https://github.com/ST541-Fall2018/andrealanz-project-musicsim/tree/master/R)**
    directory to use the functions that were used in the project. Note
    that there are four functions, one which writes a Wave sample to
    .ly, one that samples notes randomly with no rhythm, one that
    samples notes randomly with rhythm, and one that samples notes using
    rhythm and Markov chains. More information about each function can
    be found in its
    **[documentation](https://github.com/ST541-Fall2018/andrealanz-project-musicsim/tree/master/man)**.

4.  To listen to the results produced by this project, visit the
    **[‘results’](https://github.com/ST541-Fall2018/andrealanz-project-musicsim/tree/master/results)**
    directory, but take note of the project dependencies below.

5.  Note that all of the data imported in this project can be found in
    the
    **[‘data’](https://github.com/ST541-Fall2018/andrealanz-project-musicsim/tree/master/data)**
    directory.

6.  To get more information about basic music principles, the math
    behind music, and other related concepts, I would recommend looking
    at the
    **[Resources](https://github.com/ST541-Fall2018/andrealanz-project-musicsim/tree/master/doc/Resources)**
    file under the ‘doc’ directory.

#### Project Dependencies

The following packages are necessary for the project’s code and examples
to work:

  - tuneR

  - purrr

  - combinat

  - here

  - pastecs

  - tictoc (for timing experiments)

The following program, which is available for Windows, macOS, and Linux,
is required to convert the LilyPond(.ly) files produced by the
‘generate\_lilypond()’ function and can be downloaded at the link
below:

  - **[LilyPond](http://lilypond.org/download.html)**

(Note that generating .pdf and .midi files using LilyPond is more
complicated for macOS X, since converting the .ly file may require
manually opening LilyPond. Also, a MIDI player may also need to be
installed, otherwise the .midi files may be converted into another
playable format i.e. MP3)
