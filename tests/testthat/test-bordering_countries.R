test_that("Testing that size of the dataset outputted", {
  expect_equal(nrow(bordering_countries("Albania")), 4)
})
