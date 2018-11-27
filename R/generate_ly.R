generate_ly <- function(sample, file_name = "my_song.ly") {
  n <- length(sample)
  Wobj <- sample[[1]]
  for(i in 2:n){
    Wobj <- bind(Wobj, sample[[i]])
  }
 
  Wobjm <- mono(Wobj, "left")
  Wobjm11 <- downsample(Wobjm, 11025)
  Wobjm11s <- extractWave(Wobjm11, from = 1000, to = 17000)
  WspecObject <- periodogram(Wobjm11s, normalize = TRUE, width = 1024, overlap = 512)
  ff <- FF(WspecObject)
  notes <- smoother(noteFromFF(ff))
  
  qlily <- quantMerge(notes, 4, 4, 2)
  
  lilyinput(qlily, file = file_name)
}




