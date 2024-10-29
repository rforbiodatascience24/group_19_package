#' Title: DNA sequences to RNA sequences
#'
#' @param DNA_string A DNA sequence to be changed to an RNA sequence
#'
#' @return Returns the corresponding RNA sequence to the input DNA sequence
#' @export
#'
#' @examples
DNA_to_RNA <- function(DNA_string){
  RNA_string <- gsub("T", "U", DNA_string)
  return(RNA_string)
}

