#' World Population data set
#'
#' Data set containing information related to world population over the years for each country/region
#'
#'
#' @format ## `world_population`
#' A data frame with 234 rows and 17 columns:
#' \describe{
#'   \item{rank}{rank by population}
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
#'   \item{x1980_population}Population of country in 1980}
#'   \item{x1970_population}{Population of country in 1970}
#'   \item{area_km2}{Area size of country/territory}
#'   \item{density_per_km2}{Population density per square km}
#'   \item{growth_rate}{population growth rate for each country}
#'   \item{world_population_percentage}{the population for each country}
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
#' A data set containing information about countries that boarder eachother
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
