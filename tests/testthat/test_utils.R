context("Test utilities functions")
test_that("test_url function return error if host does not exists", {
  skip_on_cran()
  expect_error(test_url("www.google"))
})
test_that("test_url function return error if path on host does not exists", {
  skip_on_cran()
  expect_error(test_url("www.google.com/ Bad Request"))
})

#
context("Translitetation")

test_that("trasnlit_all returns a tibble", {

  df <- data.frame(x1 = c("te", "xc"),
                   x2 = c("ddd", "asd"))
  df2 <- data.frame()
  expect_is(trasnlit_all(df), "tbl_df")
  expect_is(trasnlit_all(df2), "tbl_df")
})
