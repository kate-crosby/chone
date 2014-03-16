rm(list=ls())

# Stable version from CRAN
#install.packages('rAltmetric')

# or install the development version from our GitHub repo.
#install.packages('devtools')
library(devtools)
#install_github('rAltmetric', 'ropensci')

library(rAltmetric)


mora<-altmetrics(doi='10.1371/journal.pbio.1001682')
mora

plot(mora)

altmetric_data(mora)

archam<-altmetrics(doi='10.1371/journal.pone.0012182')
archam

plot(archam)

altmetric_data(archam)

lacharite<-altmetrics(doi='10.1371/journal.pone.0065394')
lacharite 

plot(lacharite)

lacharite1<-altmetrics(doi='10.5061/dryad.30kt0')
lacharite1 

plot(lacharite1)


altmetric_data(lacharite)

barrell<-altmetrics(doi='10.1007/s10980-013-9937-2')
barrell
plot(barrell)

krumhansl<-altmetrics(doi='10.1890/13-0228.1')
krumhansl
plot(krumhansl)

lloyd<-altmetrics(doi='10.5061/dryad.9js2m')
lloyd
plot(lloyd)


doi_data <- read.csv(file='dois.csv', header = TRUE)

doi_data

doi_list <- paste0("doi","/", doi_data$DOI)

library(plyr)
raw_metrics <- llply(doi_list, altmetrics, .progress = 'text')

metric_data <- ldply(raw_metrics, altmetric_data)

write.csv(metric_data, file = "metric_data.csv")

summary(metric_data)


dotchart(metric_data$score, groups=metric_data$journal, col="blue", 
         pch=20, xlab="Altmetric Score", ylab="Journal")

stripchart(metric_data$score~metric_data$journal, col="blue", pch=18)
