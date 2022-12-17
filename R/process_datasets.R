#' World Population data set
#'
#' Data set containing information related to world population over the years for each country/region
#'
#'
#' @format ## `world_population`
#' A data frame with 234 rows and 17 columns:
#' \describe{
#'   \item{rank}{Rank by population}
#'   \item{cca3}{Country codes}
#'   \item{country_territory}{Name of the country/territory}
#'   \item{capital}{Capital Name}
#'   \item{continent}{Continent Name}
#'   \item{x2022_population}{Population of country in 2022}
#'   \item{x2020_population}{Population of country in 2020}
#'   \item{x2015_population}{Population of country in 2015}
#'   \item{x2010_population}{Population of country in 2010}
#'   \item{x2000_population}{Population of country in 2000}
#'   \item{x1990_population}{Population of country in 1990}
#'   \item{x1980_population}{Population of country in 1980}
#'   \item{x1970_population}{Population of country in 1970}
#'   \item{area_km2}{Area size of country/territory}
#'   \item{density_per_km2}{Population density per square km}
#'   \item{growth_rate}{Population growth rate for each country}
#'   \item{world_population_percentage}{Percentage of world population for each country}
#'   ...
#' }
#' @source <https://www.kaggle.com/datasets/d893bc6eb4370c2fd7b87bcf41972963b607202a1683f576700c52e6ecd4ab2a?resource=download>
"world_population"


#' World Carbon Emissions Dataset
#'
#' A subset of data from the World Health Organization Global Tuberculosis
#' Report ...
#'
#' @format ## `carbon_emission`
#' A data frame with 2,203 rows and 7 columns:
#' \describe{
#'   \item{region}{country region number}
#'   \item{country}{name of country}
#'   \item{year}{year}
#'   \item{series}{series}
#'   \item{value}{number of Co2}
#'   \item{footnotes}{notes on data}
#'   \item{source}{source of data}
#'   ...
#' }
#' @source <https://data.un.org/>
"carbon_emission"


#' Country Boarders Dataset
#'
#' A data set containing information about countries that boarder each other
#'
#' @format ## `country_borders`
#' A data frame with 728 rows and 4 columns:
#' \describe{
#'   \item{country_code}{two letter country code}
#'   \item{country_name}{name of country}
#'   \item{country_border_code}{two letter country code that borders the country in the first column}
#'   \item{country_border_name}{name of country that borders the country in the first column}
#'   ...
#' }
#' @source <https://github.com/geodatasource/country-borders/blob/master/GEODATASOURCE-COUNTRY-BORDERS.CSV>
"country_borders"


#' LGBTQ+ Acceptance Dataset
#'
#' A data set containing information about the acceptance of LGBTQ+ peoples:
#' Social attitudes can heavily influence whether LGBT people are accepted or rejected by employers,
#' family members, teachers, clergy, and society as a whole. The Global Acceptance Index (GAI) uses data
#' from more than 2,750 surveys conducted over 30 years to measure changing levels of acceptance toward
#' LGBT people and issues in 175 countries. The GAI provides each nation with a score of 0 to 10 to indicate their level of acceptance.
#'
#' @format ## `lgbtq_acceptance`
#' A data frame with 174 rows and 2 columns:
#' \describe{
#'   \item{country_name}{name of country}
#'   \item{gai}{The Global Acceptance Index of the country taken in the range of 2017-2020}
#'   ...
#' }
#' @source <https://williamsinstitute.law.ucla.edu/projects/gai/>
"lgbtq_acceptance"






#' Historial Olympics Dataset: 1896 - 2016
#'
#' A subset of data from the World Health Organization Global Tuberculosis
#' Report ...
#'
#' @format ## `historical_olympics`
#' A data frame with 2,203 rows and 7 columns:
#' \describe{
#'   \item{id}{Player ID}
#'   \item{name}{Player Name}
#'   \item{sex}{Player Sex}
#'   \item{age}{Player age}
#'   \item{height}{Player height}
#'   \item{weight}{Player weight}
#'   \item{team}{Player team country}
#'   \item{noc}{Country code}
#'   \item{games}{Summer vs. Winter games}
#'   \item{year}{Olympic year}
#'   \item{season}{Olympic season}
#'   \item{city}{Hosting city}
#'   \item{sport}{Sport}
#'   \item{event}{Olympic event}
#'   \item{medal}{Medal won by player}
#'   ...
#' }
#' @source <https://www.kaggle.com/datasets/heesoo37/120-years-of-olympic-history-athletes-and-results>
"historical_olympics"


#' Jewish Deaths Data Set
#'
#' Data set containing information pertaining to Jewish deaths in Europe from the Holocaust
#'
#' @format ## `jewish_deaths`
#' A data frame with 44 rows and 3 columns:
#' \describe{
#'   \item{country}{Name of country}
#'   \item{number}{Number of Jewish people}
#'   \item{type}{whether the number in the number column pertains to Jews alive before the war or Jews killed in the Holocaust}
#'   ...
#' }
#' @source <https://www.statista.com/statistics/1070564/jewish-populations-deaths-by-country/>
"jewish_deaths"



#' COVID vaccinations data set
#'
#' Data set containing COVID daily vaccinations from 2020-2022, separated by each country.
#'
#' @format ## `covid_vaccinations`
#' A data frame with 145221 rows and 3 columns:
#' \describe{
#'   \item{location}{Country where vaccine was administrated}
#'   \item{date}{Date of vaccine}
#'   \item{daily_vaccinations}{Number of doses administered daily}
#'   ...
#' }
#' @source <https://www.kaggle.com/datasets/rsrishav/covid-vaccination-dataset>
"covid_vaccinations"

#' COVID hospitalizations data set
#'
#' Data set containing COVID daily vaccinations from 2020-2022, separated by each country.
#'
#' @format ## `covid_hospitalizations`
#' A data frame with 145221 rows and 3 columns:
#' \describe{
#'   \item{entity}{Country where vaccine was administrated}
#'   \item{indicator}{Date of vaccine}
#'   \item{value}{Number of doses administered daily}
#'   ...
#' }
#' @source <https://www.kaggle.com/datasets/rsrishav/covid-vaccination-dataset>
"covid_hospitalizations"

