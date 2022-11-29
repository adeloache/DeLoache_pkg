#'Cleaning function to remove NA values from the original CSV file and save that as a new CSV  

#' @param filename - the filepath to my original CSV
#' 
#' @return a new CSV file with no NA values called new_data
#' 

clean_sweep <- function(filepath){
raw_data <- read.csv(filepath)
new_data <- raw_data %>%
drop_na() %>% 
write.csv("/cloud/project/Data/new_data.csv")
if(sum(is.na(new_data)) == 0){
return(new_data)
} else {print("NA still present")}
}