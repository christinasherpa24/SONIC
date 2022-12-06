library(tidyverse)
library(janitor)

#carbon_emission

carbon_emission <- read.csv("data-raw/UN_Carbon_Emission_Estimates.csv") %>%
  rename("region" = "T27",
         "country" = "CO2.emission.estimates",
         "year" = "X",
         "series" = "X.1",
         "value" = "X.2",
         "footnotes" = "X.3",
         "source" = "X.4") %>%
  clean_names() %>%
  mutate(footnotes = str_replace(footnotes, "é", "e")) %>%
  mutate(value = str_replace(value, ",", ""))

carbon_emission$value<- as.numeric(carbon_emission$value)


carbon_emission = carbon_emission[-1,]


usethis::use_data(carbon_emission, overwrite = TRUE)

#world_population

world_population <- read_csv("data-raw/world_population.csv") %>%
  clean_names() %>%
  rename(population_2022 = x2022_population, population_2020 = x2020_population, population_2015 = x2015_population, population_2010 = x2010_population,
         population_2000 = x2000_population, population_1990 = x1990_population, population_1980  = x1980_population, population_1970 = x1970_population)

usethis::use_data(world_population, overwrite = TRUE)

#country_borders

country_borders <- read.csv("data-raw/GEODATASOURCE-COUNTRY-BORDERS.CSV") %>%
  clean_names() %>%
  mutate(country_name = str_replace(country_name, "Cote d’Ivoire", "Cote dIvoire")) %>%
  mutate(country_border_name = str_replace(country_border_name, "Cote d’Ivoire", "Cote dIvoire"))


usethis::use_data(country_borders, overwrite = TRUE)

#lgbtq_acceptance

lgbtq_acceptance <- read.csv("data-raw/GAI-Data-Download-2000-2020.csv") %>%
  clean_names()

usethis::use_data(lgbtq_acceptance, overwrite = TRUE)

#olympics data

historical_olympics <- read.csv("data-raw/olympics_data.csv") %>%
  clean_names()

usethis::use_data(historical_olympics, overwrite = TRUE)

#World happiness report
world_happiness <- read_csv("data-raw/Data2022.csv") %>%
  clean_names()

usethis::use_data(world_happiness, overwrite = TRUE)
