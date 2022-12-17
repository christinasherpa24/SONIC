globalVariables(c("country", "type", "type", "number", "jewish_deaths"))
#' graph_jewish_killed Function
#'
#' @description A function that takes a European country in quotes ("") and returns a graph of the Jewish people killed during the Holocaust compared to the Jewish people alive before the Holocaust.
#'
#' @param country_name : A European country of your choosing from the jewish_deaths dataset
#'
#' @return A graph of the Jewish people killed during the Holocaust compared to the Jewish people alive before the Holocaust and the number of Jewish people killed.
#'
#' @importFrom plotly "ggplotly"
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#'
#' @import ggplot2
#'
#' @examples
#' graph_jewish_killed("France")
#' graph_jewish_killed("Austria")
#'
#' @export



graph_jewish_killed <- function(country_name){
  if (!(country_name %in% jewish_deaths$country)){
    stop("This country does not exist in the jewish_deaths dataset. Check for misspellings or run jewish_deaths$country to see a list of all country names.")
  }
  jewish_deaths_tidy <- jewish_deaths %>%
    filter(country == country_name)

  graph <- ggplot(data = jewish_deaths_tidy, aes(x = type, y= number, fill = type))+
    geom_bar(stat = "identity")+
    labs(y = "Jewish People", x = "", title = "Jews murdered during the war compared to Jews alive before the war")+
    scale_fill_manual(values=c("red", "black"))
  graph <- ggplotly(graph)
  jews_killed <- jewish_deaths_tidy %>%
    filter(type == "murdered_jews")
  jews_killed <- jews_killed$number
  return(list(jews_killed, graph))
}
