#'Separates the stream sites in my original csv file and returns 2 separate new csv files 

#' @param filename - the filepath to my original CSV
#' 
#' @return two new csv files, titled South mills and North mills 
#'

stream_separation <- function(){
insect_project <- read_csv("/cloud/project/Data/Insect_Project.csv")
insect_project_trim <- na.omit(insect_project)
North_Mills <- insect_project_trim %>%
  filter(Stream == "NM") %>% 
  write_csv("/cloud/project/Data/North_Mills")
South_Mills <- insect_project_trim %>% 
  filter(Stream == "SM") %>% 
  write_csv("/cloud/project/Data/South_Mills")
return(view(South_Mills))}