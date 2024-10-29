# Sample codon table for testing
codon_table <- c(
  "AUG" = "M",   # Methionine (start codon)
  "UUU" = "F",   # Phenylalanine
  "UUC" = "F",   # Phenylalanine
  "UUA" = "L",   # Leucine
  "UUG" = "L"    # Leucine
)

# Define the translate_codons function
translate_codons <- function(codons) {
  amino_acid_sequence <- paste0(codon_table[codons], collapse = "")
  return(amino_acid_sequence)
}

# Test cases
test_translate_codons <- function() {
  # Test case 1: Single codon
  codons <- c("AUG")
  expected <- "M"
  result <- translate_codons(codons)
  if (result == expected) {
    print("Test 1 passed!")
  } else {
    print("Test 1 failed.")
  }

  # Test case 2: Multiple codons
  codons <- c("AUG", "UUU", "UUA")
  expected <- "MFL"
  result <- translate_codons(codons)
  if (result == expected) {
    print("Test 2 passed!")
  } else {
    print("Test 2 failed.")
  }

  # Test case 3: Unknown codon
  codons <- c("AUG", "XXX")
  expected <- "MNA"  # Adjust based on how you handle unknowns
  result <- translate_codons(codons)
  if (result == expected) {
    print("Test 3 passed!")
  } else {
    print("Test 3 failed.")
  }
}

# Run tests
test_translate_codons()
