#for historical olympics


#' Title
#'
#' @param athlete_inp: input athlete name
#' @param team_inp: input team name
#'
#' @return returns data set and graphs given the function
#'
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#' @importFrom dplyr "mutate"
#' @importFrom dplyr "summarise"
#' @importFrom dplyr "group_by"
#' @import ggplot2
#' @importfrom stats "na.omit"
#' @importfrom tibble "add_column"
#'
#' @examples
#' library(genworld)
#' # Say what your function is doing
#' team_sport_medal_info("China")
#' team_medal_info("Saudi Arabia")
#'
#'
#' @export

athlete_info<- function(athlete_inp){
  athlete_dataset<-historical_olympics %>%
    filter(name == athlete_inp) %>%
    select(name, event,  games, city, medal)
  athlete_inp<-as.data.frame(athlete_inp)

  return(athlete_dataset)
}


team_medal_info<- function(team_inp){
  team_dataset<-historical_olympics %>%
    filter(team == team_inp) %>%
    na.omit() %>%
    add_column(value = 1) %>%
    group_by(year,medal) %>%
    summarise(total_med = sum(value))%>%
    mutate(year = as.character(year))

  team_plot<-ggplot(team_dataset, aes(fill=medal, y= total_med, x=year)) +
    geom_bar(position="stack", stat="identity")+
    #geom_text(aes(label = total_med), vjust = 1.5, size = 2)+
    ggtitle("Medals throughout the years for: ", team_inp) +
    xlab("Year") + ylab("Medals Won") +
    theme(axis.text.x = element_text(angle = 90))

  total_row<- nrow(team_dataset)

  return(list(team_plot, total_row))
}

team_sport_medal_info<- function( team_inp){
  sport_dataset<-historical_olympics %>%
    filter(team == team_inp) %>%
    na.omit() %>%
    add_column(value = 1) %>%
    group_by( team, sport) %>%
    summarise(total_med = sum(value))

  sport_plot<-ggplot(sport_dataset, aes( y= total_med, x=sport)) +
    geom_bar(position="stack", stat="identity")+
    geom_text(aes(label = total_med), vjust = 1.5, size = 2)+
    ggtitle("Total medal for sports: ", team_inp) +
    xlab("Sport") + ylab("Medals Won") +
    theme(axis.text.x = element_text(angle = 90))

  total_row<- nrow(sport_dataset)

  return(list(sport_plot, total_row))

}







