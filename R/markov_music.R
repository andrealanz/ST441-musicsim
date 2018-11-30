markov_music <- function(num_bars){
  notes <- (read.csv("data/note_freq.csv"))$Frequency..Hz.
  bars <- c( 2, 
             list(c(1,1)), 
             permn(c(1, 0.5, 0.5)), 
             list(c(0.5, 0.5, 0.5, 0.5)), permn(c(1, 0.5, 0.5, 0.25)), 
             permn(c(1, 0.25, 0.25, 0.25, 0.25)), permn(c(0.5, 0.5, 0.5, 0.25, 0.25)),
             permn(c(0.5, 0.5, .25, .25, .25, .25)),
             permn(c(0.5, 0.25, .25, .25, .25, .25, .25)),
             list(c(0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25))
  )
  probs <- c(1/8, 1/8, rep.int(1/8, 6)/6, rep.int(1/8,25)/25,
             rep.int(1/8, 240)/240, rep.int(1/8, 720)/720, rep.int(1/8, 5040)/5040, 1/8)
  bar_samp <- unlist(sample(bars, num_bars, replace = TRUE, prob = probs), use.names = FALSE)
  
  P <- matrix(unlist(rerun(88,c(1:44,45:88))), 88, 88, byrow = TRUE)
  P <- P/rowSums(P)
  
  n <- length(bar_samp)
  steps <- numeric(n)
  steps[1] <- sample(1:88, 1)
  
  for (t in 1:(n-1)){
    steps[t + 1] <- sample(1:88, size = 1, prob = P[steps[t], ])
  }
  
  notes_samp <- notes[steps]
  map2(notes_samp, bar_samp, ~ sine(.x, .y, xunit = "time"))

}

