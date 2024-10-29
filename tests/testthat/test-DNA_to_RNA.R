
test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("DNA to RNA conversion works correctly", {
  expect_equal(DNA_to_RNA("ATGC"), "AUGC")
})

#test_that("Handles lowercase input", {
 # expect_equal(DNA_to_RNA("atgc"), "AUGC")
#})

#test_that("Returns error for invalid DNA sequences", {
 # expect_error(DNA_to_RNA("XYZ"), "Invalid DNA sequence")
#})
