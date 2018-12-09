#' Create a LilyPond(.ly) file
#'
#' Allows you to create a playable .ly file using the text compiler program, LilyPond. The function
#' accepts four parameters. Unless otherwise specified, a melody plot of the song will also be produced.
#'
#' @param sample a list of Wave objects
#' @param bars number of bars/measures in the song, which must equal the number of bars in \code{sample},
#' where in this case a bar is a 2 second interval with four beats, where one beat is a quarter note.
#' @param file_name path of the file to export, where the default is "my_song.ly".
#' @param quiet either true or false, where false indicates that a melody plot will be produced.
#' 
#' @return an exported file that can be executed by the LilyPond program
#' 
#' @examples
#' sample <- c(sine(440), sine(220))
#' generate_ly(sample, 1)
#' @export
generate_lilypond <- function(sample, bars, file_name = "my_song.ly", quiet = FALSE) {
  Wobj <- reduce(sample, bind) #create one wave object by concatenating the sample of Wave objects
  WspecObject <- periodogram(Wobj, normalize = TRUE, width = 1024) #create a Wspec objects from the sample
  ff <- FF(WspecObject) #estimate the fundamental frequencies
  notes <- smoother(noteFromFF(ff)) #get notes
  
  if(!quiet){ #allows the user to specify whether to plot the notes
    melodyplot(WspecObject, notes) #plot the melody and energy (loudness)
  }
  
  qlily <- quantMerge(notes = notes, bars = bars, barsize = 8, minlength = 8) #presses the notes into measures/bars
  
  lilyinput(qlily, file = file_name) #output the lilypond file
}




