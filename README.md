---
title: "README.Rmd"
author: "Allison DeLoache"
date: "`r Sys.Date()`"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```


## Introduction
My R package is designed to clean and manipulate data, as well as make a bar plot for visualization. This function is designed to alter data formats and create smaller chunks of data that might be helpful during the research process.  

This package is designed to work with species identifications and abundance and density data.  

The major outputs of this package are a csv file with no NA values, a pdf of the counts per family, and 2 variables that have been separated by stream site. 

## Downloading the Data 

Please download this data file from this link 
https://github.com/adeloache/DeLoache_pkg/blob/master/Data/Insect_Project.csv 
and upload it into your R studio following the path "/Cloud/project/Data/Insect_Project.csv"

```{r}
read_csv("/cloud/project/Data/Insect_Project.csv")
```

## Installation
This package depends on the tidyverse package 

```{r}
install.packages(tidyverse)
library(tidyverse)
```

## Usage Examples 
```{r}
clean_sweep <- function(filepath){
raw_data <- read.csv(filepath)
new_data <- raw_data %>%
drop_na() %>% 
write.csv("/cloud/project/Data/new_data.csv")
if(sum(is.na(new_data)) == 0){
return(new_data)
} else {print("NA still present")}
}
```
Removing NA values from data is useful for all types of data. NA values could be accidentally counted as a variable or produce errors when running different analysis's in R. 

```{r}
date_format <- function(){
  separate(North_Mills, Date, c("month", "day", "year")) -> North_Mills
  separate(South_Mills, Date, c("month", "day", "year")) -> South_Mills
  view(North_Mills)
  view(South_Mills)
  {
    return(North_Mills)
  }}
```
Date format changes might be useful for quickly sorting data based on the collection date. 

```{r}
plotting_function <- function(){
insect_proj <- read.csv("/cloud/project/Data/Insect_Project.csv")
family_plot <- ggplot(data = insect_proj, mapping = aes(x = Family)) + geom_bar()
ggsave("/cloud/project/Data/family.pdf", family_plot, width = 15, height = 10, dpi = 300)
{return(family_plot)}
}
```
A bar graph that shows count data is useful for visualizing your data and seeing trends. 

```{r}
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
```
It may also be useful to separate sites in your data so that you can run analysis on each individual site more easily. 

