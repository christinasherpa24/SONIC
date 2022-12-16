test_that("athlete info check dataset rows", {
  expect_equal(nrow(athlete_info("Michael Fred Phelps, II")),30)
})


test_that("athlete info check dataset rows ", {
  expect_equal(nrow(athlete_info("Nesar Ahmad Bahawi")),2)
})
