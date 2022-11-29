#' Function to edit the date into separate columns

#' @return one of the 2 new variables with the date separated into 3 columns 

date_format <- function(){
  separate(North_Mills, Date, c("month", "day", "year")) -> North_Mills
  separate(South_Mills, Date, c("month", "day", "year")) -> South_Mills
  view(North_Mills)
  view(South_Mills)
  {
    return(North_Mills)
  }}