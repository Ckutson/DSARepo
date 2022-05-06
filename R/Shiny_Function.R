
#' Dynamic plotting and printing of Boxplot and Confidence Interval
#'
#' A website-like app that is used to select one of the datasets and plot a boxplot and confidence interval
#'
#' @importFrom shiny runApp
#' @return Boxplot and Confidence Interval
#' @examples
#' \dontrun{shinyplots()}
#' @export shinyfunction
#' @export
shinyfunction <- function(){
  mypackage <- NULL
  shiny::runApp(system.file("shiny/shinyapp", package = "mypackage"), launch.browser = TRUE)
}
