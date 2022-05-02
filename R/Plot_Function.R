#' Plot Function
#' 
#' Plots Results of Data Using ggplot2
#' @param x A variable
#' @param y A variable
#' @param ... A variable
#' @return A boxplot
#' @examples 
#' \dontrun{plot(obj)}
#' @export plot.rttest
plot.rttest <- function(x, ...)
{
  df <- x$df
  
  boxplot(df)
}
