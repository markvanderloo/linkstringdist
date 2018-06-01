
context("Test calling R_soundex from linkstringdist")

test_that("simple soundex calculation",{
  expect_equal(my_soundex("Hubert Farnsworth"),"H163")
})

