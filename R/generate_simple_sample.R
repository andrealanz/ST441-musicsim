
generate_sample <- function(num_bars){
  notes <- (read.csv(here("data", "note_freq.csv")))$Frequency..Hz. #read in notes data
  samp <- sample(notes, num_bars*4, replace = TRUE) #take a simple random sample of notes, 4 notes in each bar
  map(samp, ~ sine(.)) #convert the sample into wave objects
}

