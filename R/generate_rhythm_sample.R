generate_rhythm_sample <- function(num_bars){
  notes <- (read.csv(here("data", "note_freq.csv")))$Frequency..Hz. #read in notes data
  #list each possible permutation of notes in a measure, 1 note up to 8
  # 2 = whole, 1 = half, 0.5 = quarter, 0.25 = eighth
  bars <- c( 2, 
             list(c(1,1)), 
             permn(c(1, 0.5, 0.5)), 
             list(c(0.5, 0.5, 0.5, 0.5)), permn(c(1, 0.5, 0.5, 0.25)), 
             permn(c(1, 0.25, 0.25, 0.25, 0.25)), permn(c(0.5, 0.5, 0.5, 0.25, 0.25)),
             permn(c(0.5, 0.5, .25, .25, .25, .25)),
             permn(c(0.5, 0.25, .25, .25, .25, .25, .25)),
             list(c(0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25))
  )
  # assign equal probabilities to each note number
  probs <- c(1/8, 1/8, rep.int(1/8, 6)/6, rep.int(1/8,25)/25,
           rep.int(1/8, 240)/240, rep.int(1/8, 720)/720, rep.int(1/8, 5040)/5040, 1/8)
  # take a sample from the bars
  bar_samp <- unlist(sample(bars, num_bars, replace = TRUE, prob = probs), use.names = FALSE)
  # take a sample of notes to correspond to each bar
  notes_samp <- sample(notes, length(bar_samp), replace = TRUE)
  # create a sample of wave objects of varying length
  map2(notes_samp, bar_samp, ~ sine(.x, .y, xunit = "time"))
}
