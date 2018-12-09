#' Create a sample of music notes with rhythm and consonance.
#'
#' Allows you to create a sample of Wave objects with notes of varying speeds, and relationship
#' between notes by providing a Markov transition matrix.
#'
#' @param num_bars number of bars/measures that will be produced, where each bar has four beats, with
#' one beat considered a quarter note.
#' @param P an 88 x 88 Markov transition matrix, where the first element corresponds to the first 
#' note that can be found on a standard 88 key piano. For this function to work properly, \code{P}
#' must have non-zero rows summing to 1.
#' 
#' @return a list of Wave objects  
#' 
#' @examples
#' P <- matrix(unlist(rerun(88,exp(c(1:44,44:1)))), 88, 88, byrow = TRUE)
#' P <- P/rowSums(P)
#' generate_markov_sample(5, P)
#' @export
generate_markov_sample <- function(num_bars, P){
  #error handles
  if(!is.numeric(num_bars) || num_bars != round(num_bars) || num_bars <= 0){
    stop("Input is not a positive integer")
  }
  notes <- (read.csv(here("data", "note_freq.csv")))$Frequency..Hz. #read in notes data
  #create a list of all possible measures
  bars <- c( 2, 
             list(c(1,1)), 
             permn(c(1, 0.5, 0.5)), 
             list(c(0.5, 0.5, 0.5, 0.5)), permn(c(1, 0.5, 0.5, 0.25)), 
             permn(c(1, 0.25, 0.25, 0.25, 0.25)), permn(c(0.5, 0.5, 0.5, 0.25, 0.25)),
             permn(c(0.5, 0.5, .25, .25, .25, .25)),
             permn(c(0.5, 0.25, .25, .25, .25, .25, .25)),
             list(c(0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25))
  )
  #assign equal probability to each number of notes per measure
  probs <- c(1/8, 1/8, rep.int(1/8, 6)/6, rep.int(1/8,25)/25,
             rep.int(1/8, 240)/240, rep.int(1/8, 720)/720, rep.int(1/8, 5040)/5040, 1/8)
  #take a sample of measures
  bar_samp <- unlist(sample(bars, num_bars, replace = TRUE, prob = probs), use.names = FALSE)
  
  #implement Markov Chains
  
  n <- length(bar_samp) #get the number of notes needed
  steps <- numeric(n) #create a vector of 0s
  
  #checks that the first step has nonzero probability
  while(sum(P[steps[1],]) == 0){ 
    steps[1] <- sample(1:88, 1) #sample for the first note
  }
  
  #sample each note by using the probabilities from the transition matrix
  for (t in 1:(n-1)){
    steps[t + 1] <- sample(1:88, size = 1, prob = P[steps[t], ])
  }
  
  notes_samp <- notes[steps] #get corresponding notes
  map2(notes_samp, bar_samp, ~ sine(.x, .y, xunit = "time")) #create the sample of wave objects

}

