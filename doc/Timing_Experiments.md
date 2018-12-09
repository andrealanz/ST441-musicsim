---
title: "Timing Experiments"
author: "Andrea Lanz"
date: "12/2/2018"
output: 
  html_document:
    keep_md: true
---



The purpose of this document is to show the increase in the efficiency of the code found in this project through the use of vectorization and implementation in C++.

### Example 1

The first example of efficiency increase includes reworking code from [Implement_Consonance.Rmd](https://github.com/ST541-Fall2018/andrealanz-project-musicsim/blob/master/doc/Implement_Consonance.Rmd). 

Code required for the following to function:

```r
notes <- (read.csv(here("data", "note_freq.csv")))$Frequency..Hz.

#note that the extraction of notes from the notes data is important for identifying the scale we are using
note_A <- seq(from = 1, to = 85, by = 12)
note_B <- seq(from = 3, to = 87, by = 12)
note_C <- seq(from = 4, to = 88, by = 12)
note_D <- seq(from = 6, to = 78, by = 12)
note_E <- seq(from = 8, to = 80, by = 12)
note_F <- seq(from = 9, to = 81, by = 12)
note_G <- seq(from = 11, to = 83, by = 12)
C_major <- c(note_C,note_D, note_E, note_F, note_G, note_A)
sorted_C_major <- sort(C_major) 
```

Original code:

```r
sorted_C_major <- sort(C_major) #sort the notes

tic()
octaves <- list() #create an empty list
count <- 2 #the first note is at position 2
for( i in 1:7){
   octaves[i] <- list(sorted_C_major[count:(count+5)]) #each octave is 6 notes before a note is repeated
   count <- count + 6
} 
octaves
```

```
## [[1]]
## [1]  4  6  8  9 11 13
## 
## [[2]]
## [1] 16 18 20 21 23 25
## 
## [[3]]
## [1] 28 30 32 33 35 37
## 
## [[4]]
## [1] 40 42 44 45 47 49
## 
## [[5]]
## [1] 52 54 56 57 59 61
## 
## [[6]]
## [1] 64 66 68 69 71 73
## 
## [[7]]
## [1] 76 78 80 81 83 85
```

```r
toc()
```

```
## 0.024 sec elapsed
```

More efficient version:

```r
tic()
octaves <- split(sorted_C_major[2:43], ceiling(seq_along(sorted_C_major[2:43])/6))
octaves
```

```
## $`1`
## [1]  4  6  8  9 11 13
## 
## $`2`
## [1] 16 18 20 21 23 25
## 
## $`3`
## [1] 28 30 32 33 35 37
## 
## $`4`
## [1] 40 42 44 45 47 49
## 
## $`5`
## [1] 52 54 56 57 59 61
## 
## $`6`
## [1] 64 66 68 69 71 73
## 
## $`7`
## [1] 76 78 80 81 83 85
```

```r
toc()
```

```
## 0.036 sec elapsed
```
 The second version is slightly faster, so I will replace the code with faster version in the original document.
 
### Example 2
 
The second example includes implementing a C++ function to increase efficiency when generating a transition matrix to create consonance.

Original Code:

```r
tic()
p1 <- 1 #weight for sampling from a different octave
p2 <- 2 #weight for sampling from the same octave
P2 <- matrix(numeric(88), nrow = 88, ncol = 88)
for (i in 1:7){
   for(j in 1:7){
      if(j != i){
         P2[unlist(octaves[i]), unlist(octaves[j])] <- p1/(p1*36 + p2*6) #ensures the rows sum to one
      }else{
         P2[unlist(octaves[i]), unlist(octaves[i])] <- p2/(p1*36 + p2*6)
      }
   }
}
sum(P2)
```

```
## [1] 42
```

```r
toc()
```

```
## 0.052 sec elapsed
```

C++ implementation:

```cpp
#include <algorithm>
#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
NumericMatrix weighted_octaves(double p1, double p2, NumericVector octaves){
   NumericMatrix new_mat(88, 88);
   for(int i = 1; i < 43; i = i + 6){
      for(int j = i; j <= i+5 && j >= i; j++){
         for(int k = 1; k <= 42; k++){
            if(k < i || k > (i + 5)){
               new_mat(octaves(j-1), octaves(k-1)) = p1/(p1*36 + p2*6);
            }
            else{
               new_mat(octaves(j-1), octaves(k-1)) = p2/(p1*36 + p2*6);
            }
         }
      }
   }

 return new_mat;     
}
```


```r
tic()
octaves <- unlist(octaves)
sum(weighted_octaves(1, 1, octaves))
```

```
## [1] 42
```

```r
toc()
```

```
## 0.004 sec elapsed
```

Again the C++ implementation is slightly faster than the original implementation.
