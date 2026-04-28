library(dplyr)
library(readr)
library(lubridate)

args <- commandArgs(trailingOnly = TRUE)

file_to_process <- args[1]

output_dir <- "/home/groups/STAT_DSCP/Group4_NYCTaxi/extracted"

print("=================")
print(file_to_process)

data <- read_csv(file_to_process, show_col_types = FALSE) %>% select(pickup_datetime, PULocationID, trip_miles, trip_time,  base_passenger_fare, tips, shared_request_flag, shared_match_flag )%>% mutate(pickup_datetime = ymd_hms(pickup_datetime))


#data <- read_csv("fhvhv_tripdata_2021-02.csv", show_col_types = FALSE, n_max=100) %>% select(pickup_datetime, PULocationID, trip_miles, trip_time,  base_passenger_fare, tips, shared_request_flag, shared_match_flag )%>% mutate(pickup_datetime = ymd_hms(pickup_datetime))

#base_name <- basename(file_to_process)
#name_no_ext <- tools::file_path_sans_ext(base_name)
#out_file <- paste0(name_no_ext, ".csv")
#write.csv(data, out_file, row.names = FALSE)

write.csv(data, file_to_process, row.names = FALSE)
