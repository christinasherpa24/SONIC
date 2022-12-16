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
