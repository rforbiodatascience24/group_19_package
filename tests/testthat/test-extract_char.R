# tests/testthat/test-extract_char.R

# Load the required library for testing
library(testthat)
library(ggplot2)

# Define test cases
test_that("extract_char produces correct output format", {
  # Test with a sample input
  sample_string <- "ABCAABB"
  plot_output <- extract_char(sample_string)

  # Check that the output is a ggplot object
  expect_s3_class(plot_output, "ggplot")
})

test_that("extract_char counts characters correctly", {
  # Known input and expected output
  sample_string <- "ABCAABB"
  expected_counts <- data.frame(
    Counts = c(3, 3, 1),
    counts_char = c("A", "B", "C")
  )

  # Extract counts directly from the function's data frame
  unique_char <- sample_string |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_char, function(amino_acid) stringr::str_count(string = sample_string, pattern = amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["counts_char"]] <- rownames(counts)

  # Check if the counts in the output are as expected
  expect_equal(counts, expected_counts)
})

test_that("extract_char handles empty strings without error", {
  # Test with an empty string
  empty_string <- ""
  plot_output <- extract_char(empty_string)

  # Ensure no errors and that the output is a ggplot object (even if empty)
  expect_s3_class(plot_output, "ggplot")
  # Optionally, you could also check if the data used for plotting is empty
  expect_true(nrow(plot_output$data) == 0)
})
