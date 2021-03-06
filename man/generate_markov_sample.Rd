% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_markov_sample.R
\name{generate_markov_sample}
\alias{generate_markov_sample}
\title{Create a sample of music notes with rhythm and consonance.}
\usage{
generate_markov_sample(num_bars, P)
}
\arguments{
\item{num_bars}{number of bars/measures that will be produced, where each bar has four beats, with
one beat considered a quarter note.}

\item{P}{an 88 x 88 Markov transition matrix, where the first element corresponds to the first 
note that can be found on a standard 88 key piano. For this function to work properly, \code{P}
must have non-zero rows summing to 1.}
}
\value{
a list of Wave objects
}
\description{
Allows you to create a sample of Wave objects with notes of varying speeds, and relationship
between notes by providing a Markov transition matrix.
}
\examples{
P <- matrix(unlist(rerun(88,exp(c(1:44,44:1)))), 88, 88, byrow = TRUE)
P <- P/rowSums(P)
generate_markov_sample(5, P)
}
