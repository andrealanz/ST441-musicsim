context("test-generate_simple_sample")

test_that("output is of the correct length", {
  n <- 2
  sample1 <- generate_simple_sample(n)
  expect_equal(length(sample1), 4*n)
})

test_that("the output is a list", {
    sample2 <- generate_simple_sample(5)
    expect_is(sample2, "list")
})

test_that("the input is error handled", {
  expect_error(generate_simple_sample(2.5))
})