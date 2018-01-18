context("Test get table functions")
test_that("noa_get_latest function returns a tibble", {
  skip_on_cran()
  expect_is(noa_get_latest(), "tbl_df")
})
