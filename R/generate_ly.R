
generate_ly_rhythm <- function(sample, bars, file_name = "my_song.ly") {
  Wobj <- reduce(sample, bind)
  WspecObject <- periodogram(Wobj, normalize = TRUE, width = 1024)
  ff <- FF(WspecObject)
  notes <- smoother(noteFromFF(ff))
  melodyplot(WspecObject, notes)
  qlily <- quantMerge(notes = notes, bars = bars, barsize = 8, minlength = 8)
  
  lilyinput(qlily, file = file_name)
}




