flights=readRDS("data/flights.rds")

flightsData <- flights$data[[1]]$data_frame

dplyr::glimpse(flightsData)

#summaise AirlineID

levels(flightsData$AirlineID)

levels(flightsData$AirlineID)|>length()

length(levels(flightsData$AirlineID))

sum(c(29,23,1,17))

c(29,23,1,17)|>sum()

c(1,2,2,4,6,4,6)|>
  table()

flightsData$AirlineID|>
  table()

levels(flightsData$AirlineID)

class(tb_airlineID)
typeof(tb_airlineID)

tb_airlineID|>sort(decreasing=TRUE)
sort(tb_airlineID,decreasing=TRUE)

sort(x)




