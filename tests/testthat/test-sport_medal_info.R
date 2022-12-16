
test_that("rows in total sport_medal_info for USA Basketball", {
  test <- sport_medal_info("United States", "Basketball")
  expect_equal(test[[2]],18 )
})

test_that("rows in total sport_medal_info for USA swimming", {
  test <- sport_medal_info("United States", "Swimming")
  expect_equal(test[[2]],23 )
})










