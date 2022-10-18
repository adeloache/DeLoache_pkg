insect_project <- read_csv("Insect_Project.csv")
insect_project_trim <- na.omit(insect_project)

North_Mills <- insect_project_trim %>%
  filter(Stream == "NM")

South_Mills <- insect_project_trim %>% 
  filter(Stream == "SM")