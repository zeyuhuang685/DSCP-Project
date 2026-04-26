library(dplyr)

args <- commandArgs(trailingOnly = TRUE)
file <- args[1]

<<<<<<< Updated upstream
#local_file <- basename(file)
df <- read.csv(file)

cat("Hello")

print(summary(df))
# do your analysis
#result <- df %>%
#  summarise(mean_val = mean(some_column, na.rm = TRUE))

#write.csv(result, paste0("result_", basename(file), ".csv"))
=======
file <- basename(file)
df <- read.csv(file)

cat("Hello")

print(summary(df))
>>>>>>> Stashed changes
