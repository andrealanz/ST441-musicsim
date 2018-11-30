generate_rhythm <- function(num_bars){
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
  probs <- c(2/32, 6/32, rep.int(10/32, 6)/6, rep.int(8/32,25)/25,
           rep.int(2/32, 240)/240, rep.int(2/32, 720)/720, rep.int(1/32, 5040)/5040, 1/32)
  bar_samp <- unlist(sample(bars, num_bars, replace = TRUE, prob = probs), use.names = FALSE)
  notes_samp <- sample(notes, length(bar_samp), replace = TRUE)
  map2(notes_samp, bar_samp, ~ sine(.x, .y, xunit = "time"))
}
