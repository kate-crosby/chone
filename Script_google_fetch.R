rm(list=ls())

library(mosaic)

CHONedataweb <- fetchGoogle("https://docs.google.com/spreadsheet/pub?key=0AmsZcgcljAoodGhHaExkZlU1dHhtUkpnb0UtOEJ4THc&single=true&gid=0&output=html")


CHONedatacsv <- fetchGoogle("https://docs.google.com/spreadsheet/pub?key=0AmsZcgcljAoodGhHaExkZlU1dHhtUkpnb0UtOEJ4THc&single=true&gid=0&output=csv")
str(CHONedataweb)

summary(CHONedatacsv)

CHONedata$SpeciesTaxa
