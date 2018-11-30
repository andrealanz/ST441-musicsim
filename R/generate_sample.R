
generate_sample <- function(num_bars){
  notes <- (read.csv("data/note_freq.csv"))$Frequency..Hz.
  samp <- sample(notes, num_bars*4, replace = TRUE)
  map(samp, ~ updateWave(sine(.)))
}

