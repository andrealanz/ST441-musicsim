
generate_ly_rhythm <- function(sample, bars, file_name = "my_song.ly") {
  n <- length(sample)
  Wobj <- sample[[1]]
  for(i in 2:n){
    Wobj <- bind(Wobj, sample[[i]])
  }
  
  WspecObject <- periodogram(Wobj, normalize = TRUE, width = 1024)
  ff <- FF(WspecObject)
  notes <- smoother(noteFromFF(ff))
  melodyplot(WspecObject, notes)
  qlily <- quantMerge(notes = notes, bars = bars, barsize = 8, minlength = 8)
  
  lilyinput(qlily, file = file_name)
}




