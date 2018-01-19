context("Test utilities functions")
test_that("test_url function return error if host does not exists", {
  skip_on_cran()
  expect_error(test_url("www.google"))
})
test_that("test_url function return error if path on host does not exists", {
  skip_on_cran()
  expect_error(test_url("www.google.com/ Bad Request"))
})
