#' My soundex
#' 
#' A soundex encoder with a message.
#'
#' @useDynLib linkstringdist
#' @import stringdist 
#'
#' @param strings \code{[character]} vector. Strings to encode to soundex.
#' @param useBytes \code{[logical]} scalar. Should the strings be treated
#'  as a byte sequence or by \code{UTF} code point? 
#'
#' @section Details:
#' \code{strings} is coerced to \code{character} using \code{\link[base]{as.character}}
#' If \code{useBytes==FALSE}, the input string is converted to \code{UTF-8} prior
#' to soundex encoding (this has no effect on \code{ASCII} strings).
#' 
#' @section References:
#'
#' See \code{\link[stringdist]{stringdist}} for details on the soundex algorithm.
#'
#' @examples
#' 
#' names <- c("Hubert Farnsworth","Bender Bending Rodriquez")
#' my_soundex(names)
#'
#' @export
my_soundex <- function(strings, useBytes=FALSE){
   strings <- as.character(strings)
   if (!useBytes){
     strings <- enc2utf8(strings)
   }
  result <- .Call("my_soundex", strings, as.integer(useBytes))
  sapply(result, intToUtf8)
}
