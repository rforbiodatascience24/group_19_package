
#' Creating codons
#'
#' @param sequence Clarifies that this input is a DNA/RNA sequence
#' @param start An argument specifying the starting position in the sequence to extract codons
#'
#' @return This code defines a function, base_pairs, that takes a DNA or RNA sequence (sequence_length) and divides it into codons
#' @export
#'
#' @examples
extract_codons <- function(sequence, start = 1){
  sequence_length <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = sequence_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_length, by = 3))
  return(codons)
}

Hello
