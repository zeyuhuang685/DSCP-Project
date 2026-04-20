library(arrow)
library(dplyr)

args <- commandArgs(trailingOnly = TRUE)
file <- args[1]

#local_file <- basename(file)
df <- read_parquet(file)

# do your analysis
result <- df %>%
  summarise(mean_val = mean(some_column, na.rm = TRUE))

write.csv(result, paste0("result_", basename(file), ".csv"))
