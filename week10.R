flights<-readRDS("data/flights_week10.rds")
flightsData <- flights$data[[1]]$data_frame
dplyr::glimpse(flightsData)
#How many departure time zone
flightsData$DepartureTimeZone|>
  table()|>
  sort(decreasing=T)->tb_departureTimeZone
flights$dataSummary$DepartureTimeZone<-tb_departureTimeZone
saveRDS(flights,file = "data/flights_week10_after.rds")  

length(tb_departureTimeZone)

# 3. parse time with time zone
## split flightsData according to its timezone
flightsData |> split(flightsData$DepartureTimeZone) -> split_flightsData

flightsData|>dplyr::group_by(DepartureTimeZone)

x=1
split_flightsData[[x]]|>dplyr::glimpse()
split_flightsData[[x]]|>view()
split_flightsData[[.x]]$DepartureTime<-
lubridate::ymd_hm(
  split_flightsData[[x]]$DepartureTime,
  tz=split_flightsData[[x]]$DepartureTimeZone[[1]]
)

split_flightsData[[x]]|>dplyr::glimpse()
flightsData <- flights$data[[1]]$data_frame
flightsData|>split(flightsData$DepartureTimeZone)
  lubridate::ymd_hm(split_flightsData[[.x]]$DepartureTime, tz = split_flightsData[[.x]]$DepartureTimeZone[[1]]) 

  split_flightsData[[.x]]$DepartureTime <- 
    lubridate::ymd_hm(
     split_flightsData[[.x]]$DepartureTime,
     tz = split_flightsData[[.x]]$DepartureTimeZone[[1]]) 

  flightsData|>
     dplyr::group_by(DepartureTimeZone)|>
     dplyr::mutate(
       DepartureTime=
         lubridate::ymd_hm(
           DepartureTime,
           tz=DepartureTimeZone[[1]])
)->
flightsData
  
  
  
  
  
  
  
  
  
  
