test_that("testing number of rows in countries_lgbt_acceptance", {
  expect_equal(nrow(countries_lgbt_acceptance("Albania")), 1)
})
