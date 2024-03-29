rm(list=ls())

library(mosaic)

CHONedataweb <- fetchGoogle("https://docs.google.com/spreadsheet/pub?key=0AmsZcgcljAoodGhHaExkZlU1dHhtUkpnb0UtOEJ4THc&single=true&gid=0&output=html")


CHONedatacsv <- fetchGoogle("https://docs.google.com/spreadsheet/pub?key=0AmsZcgcljAoodGhHaExkZlU1dHhtUkpnb0UtOEJ4THc&single=true&gid=0&output=csv")
str(CHONedataweb)

summary(CHONedatacsv)

CHONedata$SpeciesTaxa

species <- CHONedatacsv$SpeciesTaxa

## \n simply indicates separation between taxa
head(species)
lastName <- CHONedatacsv$LastName
firstName <- CHONedatacsv$FirstName
df <- data.frame(firstName, lastName, species)

head(df)
#### Quick bar plot of oceans
oceans<-CHONedatacsv$Ocean
oceans
library(ggplot2)
ocean <- ggplot(CHONedatacsv, aes(factor(Ocean)))

# By default, uses stat="bin", which gives the count in each category
ocean + geom_bar()

### Quick map!
summary(CHONedatacsv)

library(ggmap)
qmap("world", location = c(lon = -61, lat = 45), zoom = 6, source="stamen", maptype="watercolor")

