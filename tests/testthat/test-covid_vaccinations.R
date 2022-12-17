test_that("check number of rows of covid_vaccinations data set", {
  expect_equal(nrow(covid_vaccinations), 145221)
})
