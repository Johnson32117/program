#my economic grades

myEconomicGrades <- c (100,99)

my_economic_Grades <- c (100,99)

#import json file----

flights <- jsonlite::fromJSON("data/international_flights.json")

##data information----
data1 <- list(
  file = "data/international_flights.json",
  meta =list(name = "國際航空定期時刻表",
             source_link = "https://data.gov.tw/dataset/161167")
  )
flights <- list(
  data = list(data1)
)
saveRDS(flights,"data/flights.rds")

#data1$file
#data1$meta$name
#data$meta$source_link

data1 <- list(
  file = "data/international_flights.json",
  meta =list(name = "國際航空定期時刻表",
             source_link = "https://data.gov.tw/dataset/161167")
)

#flights$data[[1]]#Give me the first data's information

flight<-list(
  data=list(data1)#vector of many data
  )

#data1$filepath
#data1$title
#data1$source_link
#
#data<-list(
#   filepath= ,
#   title= ,
#   source_link= ,
#)
#
#saveRDS(something,...)

#import json----

filepath=flights$data[[1]]$file
flightsData<-jsonlite::fromJson(filepath)

flights$data[[1]]$data_frame<-flightsData

flights$data[[1]]$data_frame


saveRDS(flight,file="data/flights.rds")



