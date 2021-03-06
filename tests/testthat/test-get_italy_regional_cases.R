test_that("get_italy_regional_cases cases works as expected", {
  
  base <- get_italy_regional_cases()
  expect_is(base, "data.frame")
  expect_is(base$date, "Date")
  expect_true(sum(as.numeric(base$cases) < 0) == 0)
  
})