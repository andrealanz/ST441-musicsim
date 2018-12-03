context("test-generate_rhythm_sample")

test_that("the output is a list", {
  sample1 <- generate_rhythm_sample(5)
  expect_is(sample1, "list")
})

test_that("the input is error handled for doubles", {
  expect_error(generate_rhythm_sample(2.5))
})

test_that("the input is error handled for characters", {
  expect_error(generate_rhythm_sample('2.5'))
})