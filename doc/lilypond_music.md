---
title: "lilypond_music"
output:
  html_document:
    keep_md: true
---



This document includes my notes and reproduction of code from following along from a resource from a textbook:

Braun W., Murdoch D. (2016). A First Course in Statistical Programming with R. Cambridge: Cambridge University Press, 143-147.

Which can be found in the 'doc' directory.

### Reproduction of Textbook Example:

Save lines of Beethoven's "Ode to Joy" in Lilypond format:

```r
notes <- scan(file = "data/ode.ly", skip = 3, nlines = 4, what = character())
```

Writes a function that takes a random sample of the notes and writes it to a Lilypond file:

```r
random <- sample(notes, 63, replace = TRUE)

writeLilypond <- function(notes, filename = "") {
  cat(c("\\score{\n {\n  \\tempo 4 = 120",
        paste(" ",  strwrap(paste(notes,collapse = " "))),
        " }\n \\layout{}\n \\midi{}\n}"),
      sep = "\n", file = filename)
}

writeLilypond(random, filename = "test.ly")
```

Writes a function to count the transitions in the original song:

```r
countTransitions <- function(notes, n) {
  len <- length(notes)
  notes <- c(rep("START", n), notes, "STOP")
  result <- list(n = n)
  for(i in 1:(len+1)) {
    index <- notes[ seq_len(n+1) + i - 1 ]
    
    for( j in seq_len(n)) {
     if(is.null(result[[ index[1:j] ]]))
       result[[ index[1:j] ]] <- list()
    }
    prevcount <- result[[ index ]]
    if(is.null(prevcount))
      result[[ index ]] <- 1
     else
      result[[ index ]] <- result[[ index ]] + 1
  }
  result
}
```

Generate new music:

```r
generateTransitions <- function(counts, len, filename = "") {
  n <- counts$n 
  len <- len + n
  notes <- rep("START", len)
  i <- n
  while(i < len && notes[i] != "STOP") {
    i <- i + 1
    index <- notes[i - n:1]
    distn <- counts[[ index ]]
    notes[i] <- sample(names(distn), 1, prob = distn)
  }
  notes[ !(notes %in% c("START", "STOP")) ]
}
```

Textbook's example:

```r
counts <- countTransitions(notes,2)
writeLilypond(generateTransitions(counts, 100), filename = "new_song.ly")
```

Using the LilyPond app, I can convert the file to .midi and listen to it.


```r
new_song <- writeLilypond(generateTransitions(counts, 100))
```

```
## \score{
##  {
##   \tempo 4 = 120
##   e'4 e'4 f'4 g'4 g'4 f'4 e'4 d'4 c'4 c'4 d'4 e'8 f'8 e'4 d'4 g2 e'4
##   e'4 f'4 g'4 g'4 f'4 e'4 d'4 g2 e'4 e'4 f'4 g'4 g'4 f'4 e'4 d'4 g2
##   e'4 e'4 f'4 g'4 g'4 f'4 e'4 d'4 g2 e'4 e'4 f'4 g'4 g'4 f'4 e'4 d'4
##   c'4 c'4 d'4 e'4 d'4. c'8 c'2 d'4 d'4 e'4 d'4. c'8 c'2 d'4 d'4 e'4
##   d'4. c'8 c'2
##  }
##  \layout{}
##  \midi{}
## }
```

