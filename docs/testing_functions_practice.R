# install.packages("testthat")
# install.packages("devtools")
# install.packages("remotes")

library(testthat)
library(devtools)
library(remotes)

rm(list = ls())

mean_range <- function(df) {
  
  col_means <- apply(X = df, MARGIN = 2, FUN = mean, na.rm = TRUE)
  col_mean_max <- max(col_means)
  col_mean_min <- min(col_means)
  
  return(c(col_mean_min, col_mean_max))
}


mean_range(mtcars)

expect_length(mean_range(mtcars), 2)
expect_true(mean_range(mtcars)[1] < mean_range(mtcars)[2]) # passes!
expect_true(mean_range(mtcars)[1] > mean_range(mtcars)[2]) # fails

