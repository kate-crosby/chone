rm(list=ls())

require(devtools)

require(rdryad)

xml_file<-download_dryadmetadata(52360, transform=T, url = "http://www.datadryad.org/oai")

getalldryad_metadata(transform=T, progress = "text", write=T, dir = T)

search_dryad(xml_file, terms = 'CHONe', fuzzy=T)
