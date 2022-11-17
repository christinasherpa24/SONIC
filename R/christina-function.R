
library(tidyverse)
library(ggplot2)

#' Title
#'
#' @param countryinp
#'
#' @return
#' @export
#'
#' @examples
#'
#'
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


carbon_timeseries<- function(countryinp){
  country_df1<<-carbon_emission %>%
    filter(country == countryinp)
  country_df2 <<- country_df1[!duplicated(country_df1$year), ]


  ggplot(data=country_df2, aes(x=year, y=value, group = 1)) +
    geom_line() +
    geom_point()

}



