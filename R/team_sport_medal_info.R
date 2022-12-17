#for historical olympics
globalVariables(c( "team", "sport", "year", "value", "total_med", "historical_olympics"))

#' Title

#' @param team_inp : input team name

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
#' team_sport_medal_info("China")
#'
#'
#' @export



team_sport_medal_info<- function( team_inp){
  if (!(team_inp %in% historical_olympics$team)){
    stop("This entry does not exist in the historical_olympics dataset. Check for misspellings or run historical_olympics$team to see a list of all valid inputs")
  }
  sport_team_dataset<-historical_olympics %>%
    filter(team == team_inp) %>%
    na.omit() %>%
    add_column(value = 1) %>%
    group_by( team, sport) %>%
    summarise(total_med = sum(value))

  sport_team_plot<-ggplot(sport_team_dataset, aes( y= total_med, x=sport)) +
    geom_bar(position="stack", stat="identity")+
    geom_text(aes(label = total_med), vjust = 1.5, size = 2)+
    ggtitle("Total medal for sports: ", team_inp) +
    xlab("Sport") + ylab("Medals Won") +
    theme(axis.text.x = element_text(angle = 90))

  total_row<- nrow(sport_team_dataset)

  return(list(sport_team_plot, total_row))
}
