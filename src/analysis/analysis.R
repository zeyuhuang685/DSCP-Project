# Capture command line arguments
args <- commandArgs(trailingOnly = TRUE)
if (length(args) == 0) {
	  stop("No filename provided to the R script")
}

file_name <- args[1]

# Read the data
data <- read.csv(file_name)

# Create a simple summary
cat("--- Summary for file:", file_name, "---\n")
print(summary(data))

# Optional: Save summary to a file
# write.csv(summary(data), paste0("summary_", file_name))
