#for historical olympics
globalVariables(c("name", "event", "games", "city", "medal"))

#' Title
#'
#' @param athlete_inp: input athlete name

#'
#' @return returns data set and graphs given the function
#'
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#' @importFrom dplyr "select"
#'
#' @examples
#' library(genworld)
#' athlete_info("Nesar Ahmad Bahawi")
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
