#' Constructor Function
#'
#' Takes in two sets of data and produces a list containing: test results,
#' a dataframe, and the confidence interval and P - value
#' @param x The x variable data
#' @param y The y variable data
#' @param alpha an alpha value, normally set to 0.05
#' @param paired Is data paired or unpaired
#' @importFrom stats t.test var.test
#' @return A list containing: test results, a dataframe of the two combined datasets, confidence interval and P-Value
#' @examples
#' \dontrun{myttest(x, y, alpha = 0.05, paired = FALSE)}
#' @export myttest
myttest <- function (x, y, alpha = 0.05, paired = FALSE)
{
  ## Checking variance of x and y data
  variance <- var.test(x, y)

  ## If else statement that analyzes PAIRED and VARIANCE to determine which
  ## test to run
  if (paired == "FALSE") {
    if (variance$p.value > 0.05) {
      t_test <- t.test(x, y, var.equal = TRUE, conf.level = 0.95)
    }
    else {
      t_test <- t.test(x, y, var.equal = FALSE, conf.level = 0.95)
    }
  }
  else {
    t_test <- t.test(x, y, paired = TRUE, conf.level = 0.95)
  }

  ## Creating list of class rttest
  structure(list(result = t_test, df = data.frame(x,y),
                 ci = t_test$conf.int, p = t_test$p.value),
            class = "rttest")
}
