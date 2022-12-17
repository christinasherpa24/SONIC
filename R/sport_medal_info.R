#for historical olympics
globalVariables(c( "team", "sport", "year", "value", "total_med", "historical_olympics"))

#' Title
#'

#' @param team_inp : input team name
#' @param sport_inp : input sport name
#'
#' @return returns data set and graphs given the function
#'
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#' @importFrom dplyr "mutate"
#' @importFrom dplyr "summarise"
#' @importFrom dplyr "group_by"
#' @import ggplot2
#' @importFrom stats "na.omit"
#' @importFrom tibble "add_column"
#'
#' @examples
#' sport_medal_info("United States", "Basketball")
#'
#'
#' @export


sport_medal_info<-function(team_inp, sport_inp){
  sport_dataset<-historical_olympics %>%
    filter(team == team_inp) %>%
    filter(sport == sport_inp) %>%
    na.omit() %>%
    add_column(value = 1) %>%
    group_by(year) %>%
    mutate(year = as.character(year)) %>%
    summarise(total_med = sum(value))

  sport_team_plot<-ggplot(sport_dataset, aes( y= total_med, x=year)) +
    geom_bar(position="stack", stat="identity")+
    geom_text(aes(label = total_med), vjust = 1.5, size = 2)+
    ggtitle("Total medal for: ", team_inp) +
    ggtitle(sport_inp)+
    xlab("Year") + ylab("Medals Won") +
    theme(axis.text.x = element_text(angle = 90))

  total_row<- nrow(sport_dataset)
  return(list(sport_team_plot, total_row))
}






