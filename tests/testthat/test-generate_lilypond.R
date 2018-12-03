context("test-generate_lilypond")

test_that("the input is error handled for non-wave lists", {
  expect_error(generate_lilypond(list(2,3),2))
})

#note that this function outputs a file, so I was not able to check the correctness of its output
#formally