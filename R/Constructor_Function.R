#' Constructor Function
#'
#' Takes in Data and produces a list
#' @param x The x dataset
#' @param y The y dataset
#' @param alpha an alpha value
#' @param paired Paired Data
#' @return A list
#' @examples 
#' \dontrun {myttest(x, y, alpha = 0.05, paired = FALSE)}
#' @export myttest
myttest <- function (x, y, alpha = 0.05, paired = FALSE) 
{
  variance <- var.test(x, y)
  
  if (paired == "FALSE") {
    if (variance$p.value > 0.05) {
      t_test <- t.test(x, y, var.equal = TRUE, conf.level = 1 - 0.05)
    }
    else {
      t_test <- t.test(x, y, var.equal = FALSE, conf.level = 1 - 0.05)
    }
  }
  else {
    t_test <- t.test(x, y, paired = TRUE, conf.level = 1 - 0.05)
  }
  
  structure(list(result = t_test, df = data.frame(x,y), 
                 ci = t_test$conf.int, p = t_test$p.value), 
            class = "rttest")
}
