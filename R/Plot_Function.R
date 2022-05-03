#' Plot Function
#'
#' S3 method for plotting results of data from myttest
#' @param x A variable
#' @param ... A variable
#' @importFrom graphics boxplot
#' @return A boxplot of data from myttest
#' @examples
#' \dontrun{plot(obj)}
#' @export plot.rttest
#' @export
plot.rttest <- function(x, ...)
{
  df <- x$df

  boxplot(df)
}
