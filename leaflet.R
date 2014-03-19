rm(list=ls())



###load libraries####
library(rCharts)
library(rMaps)
library(leafletR)

####centre test of latitude minimums
#map <- Leaflet$new()
#map$setView(c(47.38, -84.66), zoom = 6)
#map$tileLayer(provider = 'Stamen.Watercolor')
#map$marker(
# c(47.38, -84.66),
#bindPopup = 'Hi. I am the centre of CHONe!'
#)
#map

map <- Leaflet$new()
map$setView(c(45.78300, -61.77770), zoom = 3)
map$tileLayer(provider = 'OpenStreetMap')
map$marker(
  c(44.47696, -64.03141),
  bindPopup = 'Investigator = Kira Krumhansl, Species number = 22, Species =  Agarum cribosum, Alaria esculenta, Bonnemasonia hamifera, Codium fragile, Desmarestia aculeata, Desmarestia virdis, Ecklonia cava, Ecklonia maxima, Ecklonia radiata, Lacuna vincta, Laminaria complanata, Laminaria digitata, Laminaria solidungula, Lessonia nigrescens, Lessonia trabeculata, Macrocystis integrifolia, Macrocystis pyrifera, Membranipora membranacea, Palmaria palmata, Saccharina latissima, Strongylocentrotus droebachiensis, Undaria pinnatifida'
)
map$marker(
  c(42.15000, -65.75000),
  bindPopup = 'Investigator = Myriam Lacharite, Species number = 2, Species = Primnoa resedaeformis, Paragorgia arborea'
)
map$marker(
  c(45.78300, -61.77770),
  bindPopup = 'Investigator = Michelle Lloyd, Species number = 16, Species = Margarites spp., Crepidula spp., Astyris lunata, Diaphana minuta, Littorini morpha, Arrhoges occidentalis, Ilyanassa spp., Bittiolum alternatum, Nudibranchia, Gastropoda, Bivalvia, Bryozoa, Brachyura, Polychaeta, Caridea, Asteroidea'
)
map


library(ggmap)
qmap('world', zoom = 2) + geom_point(aes(x = MinLong, y = MinLat), data=gps.df)
