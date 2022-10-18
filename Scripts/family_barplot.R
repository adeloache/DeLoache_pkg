insect_proj <- read.csv("/cloud/project/Data/Insect_Project.csv")
plotting_function <- function(){
  family_plot <- ggplot(data = insect_proj, mapping = aes(x = Family)) + geom_bar()
  ggsave("/cloud/project/Data/family.pdf", family_plot, width = 15, height = 10, dpi = 300)
}