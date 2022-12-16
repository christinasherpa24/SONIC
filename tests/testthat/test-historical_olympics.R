test_that("athlete info check dataset rows", {
  expect_equal(nrow(athlete_info("Michael Fred Phelps, II")),30)
})


test_that("athlete info check dataset rows ", {
  expect_equal(nrow(athlete_info("Nesar Ahmad Bahawi")),2)
})

test_that("rows in total team_medal_info for Saudi Arabia", {
  test <- team_medal_info("Saudi Arabia")
  expect_equal(test[[2]],3 )
})

test_that("rows in total team_medal_info for Nepal", {
  test <- team_medal_info("Nepal")
  expect_equal(test[[2]],0 )
})

test_that("rows in total team_medal_info for Italy", {
  test <- team_medal_info("Italy")
  expect_equal(test[[2]],84 )
})


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


sport_medal_info


test_that("rows in total sport_medal_info for USA Basketball", {
  test <- sport_medal_info("United States", "Basketball")
  expect_equal(test[[2]],18 )
})

test_that("rows in total sport_medal_info for USA swimming", {
  test <- sport_medal_info("United States", "Swimming")
  expect_equal(test[[2]],23 )
})










