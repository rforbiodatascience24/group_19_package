#' Translate codon sequence to amino acids
#'
#' @param codons translate codon sequence to amino acids
#'
#' @return function output is an amino acid sequence
#' @export
#'
#' @examples
translate_codons <- function(codons){
  amino_acid_sequence <- paste0(codon_table[codons], collapse = "")
  return(amino_acid_sequence)
}

