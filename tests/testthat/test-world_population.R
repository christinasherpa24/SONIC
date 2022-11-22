test_that("check number of rows of world_population data set", {
  expect_equal(nrow(world_population), 234)
})

test_that("check number of rows of world_function data set", {
  expect_equal(nrow(world_function), NULL)
})

test_that("check number of columns of world_function ", {
  expect_equal(ncol(world_function), NULL)
})

