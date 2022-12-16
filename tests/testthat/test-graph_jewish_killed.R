test_that("test that graph_jewish_killed function works", {
  test <- graph_jewish_killed("France")
  test <- test[[1]]
  expect_equal(test, 76000)
})
