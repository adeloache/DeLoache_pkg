cleaning_function <- function(){
  raw_data <- read.csv("/cloud/project/Data/Insect_Project.csv")
  na_removed_data <- raw_data %>% 
    na.omit(raw_data)
  if(sum(is.na(na_removed_data)) == 0){
    return(na_removed_data)
  } else {print("NA still present")}
}