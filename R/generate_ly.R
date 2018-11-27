generate_ly <- function(sample, file_name = "my_song.ly") {
  n <- length(sample)
  Wobj <- sample[[1]]
  for(i in 2:n){
    Wobj <- bind(Wobj, sample[[i]])
  }
 
  if(n <= 4){
    bars <- 1
  }else{
    if(n %% 4 == 0){
      bars <- n/4
    }else{
      bars <- n %/% 4 + 1
    }
  }
  
  WspecObject <- periodogram(Wobj, normalize = TRUE, width = 1024)
  ff <- FF(WspecObject)
  notes <- smoother(noteFromFF(ff))
  
  melodyplot(WspecObject, notes)
  qlily <- quantMerge(notes = notes, bars = bars , barsize = 4, minlength = 4)
  
  lilyinput(qlily, file = file_name)
}




