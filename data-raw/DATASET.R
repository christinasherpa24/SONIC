## code to prepare `DATASET` dataset goes here
library(tidyverse)
library(janitor)

world_population <- read_csv("data-raw/world_population.csv") %>%
  clean_names()

usethis::use_data(world_population, overwrite = TRUE)
