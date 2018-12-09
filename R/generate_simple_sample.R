#' Create a sample of random music notes.
#'
#' Allows you to create a sample of Wave objects with notes of equal length. Where the notes are 
#' sampled randomly from the notes found on a standard 88 note piano. 
#'
#' @param num_bars number of bars/measures, in common time signature, that will be produced.
#' 
#' @return a list of Wave objects
#' 
#' @examples
#' simple_sample <- generate_simple_sample(5)
#' generate_lilypond(simple_sample, 5)
#' @export
generate_simple_sample <- function(num_bars){
  
  #error handle
  if(!is.numeric(num_bars) || num_bars != round(num_bars) || num_bars <= 0){
    stop("Input is not a positive integer")
  }
  
  notes <- (read.csv(here("data", "note_freq.csv")))$Frequency..Hz. #read in notes data
  samp <- sample(notes, num_bars*4, replace = TRUE) #take a simple random sample of notes, 4 notes in each bar
  map(samp, ~ sine(.)) #convert the sample into wave objects
}

