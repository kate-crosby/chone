rm(list=ls())

library(rAltmetric)
library(plyr)

doi_data <- read.csv(file='KateDois.csv', header = TRUE)

doi_data

doi_list <- paste0("doi","/", doi_data$DOI)

library(plyr)
raw_metrics <- llply(doi_list, altmetrics, .progress = 'text')

metric_data <- ldply(raw_metrics, altmetric_data)
