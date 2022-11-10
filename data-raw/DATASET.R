## code to prepare `DATASET` dataset goes here

library(tidyverse)
library(janitor)
carbon_emission <- read.csv("data-raw/UN_Carbon_Emission_Estimates.csv") %>%
  rename("region" = "T27",
         "country" = "CO2.emission.estimates",
         "year" = "X",
         "series" = "X.1",
         "value" = "X.2",
         "footnotes" = "X.3",
         "source" = "X.4") %>%
  clean_names()

carbon_emission = carbon_emission[-1,]



usethis::use_data(carbon_emission, overwrite = TRUE)



#sariah's stuff


## code to prepare `DATASET` dataset goes here
library(tidyverse)
library(janitor)

world_population <- read_csv("data-raw/world_population.csv") %>%
  clean_names()

usethis::use_data(world_population, overwrite = TRUE)

#Naomi's Stuff
library(tidyverse)
library(janitor)
library(readr)

country_boarders <- read_csv("data-raw/GEODATASOURCE-COUNTRY-BORDERS.CSV") %>%
  clean_names()

usethis::use_data(country_boarders, overwrite = TRUE)

