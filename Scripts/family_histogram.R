families_count <- insect_project_trim %>% 
  count(family)
ggplot(data = families_count, mapping = aes(x = family, y = n)) + geom_col() + theme(axis.text.x = element_text(angle = 45))