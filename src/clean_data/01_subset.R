library(dplyr)
library(readr)
library(lubridate)

args <- commandArgs(trailingOnly = TRUE)

file_to_process <- args[1]

output_dir <- "/home/groups/STAT_DSCP/Group4_NYCTaxi/extracted"

print(file_to_process)

data <- read_csv("fhvhv_tripdata_2021-01.csv", show_col_types = FALSE, n_max=100) %>% select(pickup_datetime, PULocationID, trip_miles, trip_time,  base_passenger_fare, tips, shared_request_flag, shared_match_flag )%>% mutate(pickup_datetime = ymd_hms(pickup_datetime))

# write.csv(df, "/home/yourname/data/output.csv", row.names = FALSE)
write.csv(data, "fhvhv_tripdata_2021-01.csv", row.names = FALSE)


