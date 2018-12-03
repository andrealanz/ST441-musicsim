#' Create a .ly file
#'
#' Allows you to create a playable .ly file.
#'
#' @param sample a vector of wave objects
#' @param bars number of bars 
#' @param file_name name of the file to export
#' 
#' @return a file that can be executed by the LilyPond program
#' 
#' @examples
#' sample <- c(sine(440), sine(220))
#' generate_ly(sample, 1)
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




