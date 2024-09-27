# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")
}

ds<-function(x){
  # 1 row and 2 colmns
  par(mfrow=c(1,2))
  # Histogram
  hist(x, col = rainbow(30))
  # Box  plot
  boxplot(x, col= 'green')
  par(mfrow=c(1,1))
  # Numaric summary
  data.fram(min=min(x),
            median=median(x),
            max=max(x))
}


#' Title: Description of the dataset
#'
#' Detailed description.
#'
#' @format A data frame with X rows and Y variables:
#' \describe{
#'   \item{variable1}{Description of variable 1.}
#'   \item{variable2}{Description of variable 2.}
#' }
#' @source Source of the data
"ds"
devtools::check()

library('discriptivestat')
