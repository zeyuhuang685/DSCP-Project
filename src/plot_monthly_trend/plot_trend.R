library(data.table)
library(ggplot2)
library(scales)

args <- commandArgs(trailingOnly = TRUE)
file_to_process <- args[1]

# 1. Load ONLY necessary columns (massive memory savings)
df <- fread(file_to_process, select = c("pickup_datetime"))

# 2. Use data.table's internal fast date parsing
# as.IDate is much faster and uses less RAM than ymd_hms
df[, date_only := as.IDate(pickup_datetime)]

# 3. Aggregate 
monthly_demand <- df[, .(total_trips = .N), 
                     by = .(year = year(date_only), 
                            month = month(date_only))]

# Create a first-of-the-month date for plotting
monthly_demand[, plot_date := as.Date(ISOdate(year, month, 1))]
setorder(monthly_demand, plot_date)

# 4. Plot
p <- ggplot(monthly_demand, aes(x = plot_date, y = total_trips)) +
  geom_line(color = "#2c3e50", linewidth = 1) +
  geom_point() +
  scale_y_continuous(labels = label_comma()) +
  labs(title = "Monthly Ride Demand Trend", x = "Time", y = "Trips") +
  theme_minimal()

ggsave("monthly_trend.png", p, width = 8, height = 5)
