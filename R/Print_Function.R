#' Print Function
#'
#' S3 method for printing confidence interval and test type of myttest function
#' @param x A variable
#' @param ... A table variable
#' @return A confidence intervale and test type from myttest
#' @examples
#' \dontrun{print(obj)}
#' @export print.rttest
#' @export
print.rttest <- function(x, ...)
{

  print(x$ci)

}
