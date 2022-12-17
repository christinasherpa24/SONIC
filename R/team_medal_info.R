
globalVariables(c( "medal", "team", "sport", "year", "value", "total_med", "historical_olympics"))

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
#' team_medal_info("United States")
#'
#' @export



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
