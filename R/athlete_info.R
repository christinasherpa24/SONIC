#for historical olympics
globalVariables(c("name", "event", "games", "city", "medal", "historical_olympics"))

#' Title
#'
#' @param athlete_inp : input athlete name

#'
#' @return returns data set and graphs given the function
#'
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#' @importFrom dplyr "select"
#'
#' @examples
#' athlete_info("Nesar Ahmad Bahawi")
#'
#'
#' @export
athlete_info<- function(athlete_inp){

  if (!(athlete_inp %in% historical_olympics$name)){
    stop("This entry does not exist in the historical_olympics dataset. Check for misspellings or run historical_olympics$name to see a list of all valid inputs")
  }
  athlete_dataset<-historical_olympics %>%
    filter(name == athlete_inp) %>%
    select(name, event,  games, city, medal)
  athlete_inp<-as.data.frame(athlete_inp)


  return(athlete_dataset)
}
