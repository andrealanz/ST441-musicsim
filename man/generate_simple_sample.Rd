% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_simple_sample.R
\name{generate_simple_sample}
\alias{generate_simple_sample}
\title{Create a sample of random music notes.}
\usage{
generate_simple_sample(num_bars)
}
\arguments{
\item{num_bars}{number of bars/measures, in common time signature, that will be produced.}
}
\value{
a list of Wave objects
}
\description{
Allows you to create a sample of Wave objects with notes of equal length. Where the notes are 
sampled randomly from the notes found on a standard 88 note piano.
}
\examples{
simple_sample <- generate_simple_sample(5)
generate_lilypond(simple_sample, 5)
}
