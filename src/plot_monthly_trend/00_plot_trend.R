library(dplyr)
library(ggplot2)
library(lubridate)
library(readr)
library(scales)

args <- commandArgs(trailingOnly = TRUE)

file_to_process <- args[1]

#data_path <- "/home/groups/STAT_DSCP/Group4_NYCTaxi/extracted/merge.csv"

df <- read_csv(file_to_process, show_col_types = FALSE)

colnames(df)
summary(df)

# Monthly Demand Trend
monthly_demand <- df %>%
  mutate(
    pickup_datetime = ymd_hms(pickup_datetime),
    year = year(pickup_datetime),
    month = month(pickup_datetime)
  ) %>%
  group_by(year, month) %>%
  summarize(total_trips = n(), .groups = "drop") %>%
  mutate(date = make_date(year, month, 1)) %>%
  arrange(date)

# Visualization
ggplot(monthly_demand, aes(x = date, y = total_trips)) +
  geom_line(color = "#2c3e50", linewidth = 1) +
  geom_point() +
  scale_y_continuous(labels = label_comma()) +
  labs(
    title = "Monthly Ride Demand Trend",
    subtitle = "Total HVFHV Trips",
    x = "Time",
    y = "Number of Trips"
  ) +
  theme_minimal()
