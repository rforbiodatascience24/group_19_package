# Additional tests for the extract_codons function
test_that("extract_codons function handles edge cases and incomplete codons correctly", {

  # Test 4: Sequence length not a multiple of 3, with extra bases at the end
  # Checks that only complete codons are returned, ignoring the extra base
  result <- extract_codons("ATGCGTTA")
  expect_equal(result, c("ATG", "CGT"), label = "Incomplete codon test failed")

  # Test 5: Single complete codon in sequence (exactly 3 characters)
  # Verifies that a sequence with one codon returns that codon
  result <- extract_codons("ATG")
  expect_equal(result, c("ATG"), label = "Single codon test failed")
})

Hello
