# Add the dependencies
usethis::use_package("stringr", min_version = TRUE)
usethis::use_package("ggplot2", min_version = TRUE)

#' Extract and Plot Character Counts
#'
#' This function extracts unique characters from a given string, counts their occurrences,
#' and generates a bar plot of these counts.
#'
#' @param split_char A character string to analyze.
#'
#' @return A ggplot2 bar plot displaying unique characters and their counts.
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#' @export
#'
#' @examples
#' # Example usage of extract_char
#' sample_string <- "ABCAABB"
#' extract_char(sample_string)
#'
extract_char <- function(split_char) {
  # Split into unique characters
  unique_char <- split_char |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |> #Splits by each individual character
    as.character() |> #converts to character vector
    unique() #keeps only unique characters

  # Count occurrences of each character
  counts <- sapply(unique_char, function(amino_acid) stringr::str_count(string = split_char, pattern = amino_acid)) |>
    as.data.frame() #counts unique characters

  colnames(counts) <- c("Counts")
  counts[["counts_char"]] <- rownames(counts)

  # Create the bar plot
  counts_char_bar <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = counts_char, y = Counts, fill = counts_char)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(counts_char_bar)
}

