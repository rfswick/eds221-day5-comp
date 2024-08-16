rm(list = ls())

source(here::here("src", "max_sustainable_harvest.R"))

max_sustainable_harvest(K = 36000, r = 0.31)


library(palmerpenguins)

