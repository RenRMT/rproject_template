test_that("hello returns correct string", {
  expect_equal(hello("world"), "Hello, world!")
  expect_equal(hello("R"), "Hello, R!")
})

test_that("hello validates input", {
  expect_error(hello(123), class = "rlang_error")
  expect_error(hello(c("a", "b")), class = "rlang_error")
})
