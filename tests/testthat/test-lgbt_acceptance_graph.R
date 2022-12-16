test_that("test that the GAI comes out correct", {
  test <- lgbt_acceptance_graph("France")
  test <- test[[1]]
  expect_equal(test, 7.73)
})
