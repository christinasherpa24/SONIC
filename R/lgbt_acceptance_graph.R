globalVariables(c("lgbtq_acceptance", "gai"))
#' lgbt_acceptance_graph Function
#'
#' @description A function that takes in a country name and returns a graph of the GAI's of all the countries in the lgbtq_acceptance data set with yours highlighted in red.
#'
#' @param country_name : A country of your choosing from the lgbtq_acceptance data set
#'
#' @return A graph of the GAI's of all the countries in the lgbtq_acceptance data set with country_name highlighted in red and the country's GAI.
#'
#' @import ggplot2
#'
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#' @importFrom plotly "ggplotly"
#'
#' @examples
#' lgbt_acceptance_graph("China")
#' lgbt_acceptance_graph("Somalia")
#'
#'
#' @export


lgbt_acceptance_graph <- function(country_name) {
  if (!(country_name %in% lgbtq_acceptance$country_name)){
    stop("This country does not exist in the lgbtq_acceptance dataset. Check for misspellings or run lgbtq_acceptance$country_name to see a list of all country names.")
  }
  data_point <- countries_lgbt_acceptance(country_name)
  gai_country <- data_point$gai
  graph <- ggplot()+
    geom_point(data = lgbtq_acceptance, aes(x = gai, y = country_name))+
    geom_point(data = data_point, aes(x = gai, y = country_name, color = "red", size = 10))+
    labs(x = "GAI Score", y = "Country Name", title = "Where does your country stand in terms of LGBT+ acceptance compared to others?")+
    theme(axis.text.y = element_blank(),
          axis.ticks = element_blank())+
    geom_jitter()
  graph <- ggplotly(graph)
  gai_country <- as.numeric(gai_country)
  return(list(gai_country,graph))
}
