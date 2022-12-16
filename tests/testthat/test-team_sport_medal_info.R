test_that("rows in total team_sport_medal_info for China", {
  test <- team_sport_medal_info("China")
  expect_equal(test[[2]],34 )
})

test_that("rows in total team_sport_medal_info for USA", {
  test <- team_sport_medal_info("United States")
  expect_equal(test[[2]],42 )
})

test_that("rows in total team_sport_medal_info for USA", {
  test <- team_sport_medal_info("United States")
  expect_equal(test[[2]],42 )
})

