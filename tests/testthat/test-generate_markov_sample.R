context("test-generate_markov_sample")

test_that("the output is a list", {
  P <- matrix(unlist(rerun(88,exp(c(1:44,44:1)))), 88, 88, byrow = TRUE)
  P <- P/rowSums(P)
  sample1 <- generate_markov_sample(5, P)
  expect_is(sample1, "list")
})

test_that("the input is error handled for doubles", {
  expect_error(generate_markov_sample(2.5))
})

test_that("the input is error handled for non-matrix input", {
  P <- rep(1, 88^2)
  expect_error(generate_markov_sample(2, P))
})

test_that("the input is error handled for invalid matrix input", {
  P <- matrix(1:80, nrow = 80, ncol = 80)
  expect_error(generate_markov_sample(2, P))
})