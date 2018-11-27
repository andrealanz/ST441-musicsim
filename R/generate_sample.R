generate_sample <- function(num_notes){
  notes <- (readxl::read_xlsx("data/note_freqs.xlsx"))$`Frequency (Hz)`
  samp <- sample(notes, num_notes, replace = TRUE)
  map(samp, sine)
}