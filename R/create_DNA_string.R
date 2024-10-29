#' Title: Create a random DNA string
#'
#' @param length_of_DNA_string Length of returned DNA string
#'
#' @return a DNA string as a character with the length of the input parameter
#' @export
#'
#' @examples create_DNA_string(10)
create_DNA_string <- function(length_of_DNA_string){
  DNA_string_list <- sample(c("A", "T", "G", "C"), size = length_of_DNA_string, replace = TRUE)
  DNA_string <- paste0(DNA_string_list, collapse = "")
  return(DNA_string)
}
