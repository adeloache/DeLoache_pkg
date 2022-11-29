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

## Installation
This package depends on the tidyverse package 

```{r}
install.packages(tidyverse)
library(tidyverse)
```

## Usage Examples 
Removing NA values from data is useful for all types of data. NA values could be accidentally counted as a variable or produce errors when running different analysis's in R. 
Date format changes might be useful for quickly sorting data based on the collection date. 
A bar graph that shows count data is useful for visualizing your data and seeing trends. 
It may also be useful to separate sites in your data so that you can run analysis on each individual site more easily. 

