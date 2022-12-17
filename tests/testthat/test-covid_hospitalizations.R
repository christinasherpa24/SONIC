test_that("check number of rows of covid_hospitalizations data set", {
  expect_equal(nrow(covid_hospitalizations), 32871)
})
