test_that("check number of rows of outputted for Belgium", {
  expect_equal(nrow(daily_vaccinations_function('Belgium')),715)
})
