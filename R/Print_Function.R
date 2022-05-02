#' Print Function
#'
#' Prints Results of CI
#' @param x A variable
#' @param ... A table variable
#' @return A Confidence Intervale
#' @examples
#' \dontrun{print(obj)}
#' @export print.rttest
print.rttest <- function(x, ...)
{

  print(x$ci)

}
