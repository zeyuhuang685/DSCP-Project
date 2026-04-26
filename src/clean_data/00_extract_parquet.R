library(arrow)
library(readr)
library(tools)

args <- commandArgs(trailingOnly = TRUE)
file_to_process <- args[1]
output_dir <- "/home/groups/STAT_DSCP/Group4_NYCTaxi" 

if(is.na(file_to_process)){
	stop("No File Provided.") 
}

if (file.exists(file_to_process)){
	df <- read_parquet(file_to_process)
	#out_file <- paste0(file_path_sans_ext(file_to_process), ".csv")
	out_file <- file.path(output_dir, paste0(basename(file_path_sans_ext(file_to_process)), ".csv"))
	write_csv_arrow(df, out_file)
	message("Success! Saved to : ", out_file)} else{
		cat("I was looking for :", file_to_process, "\n")
		    cat("Files actually present: ", list.files(), sep=", ")
		stop("File not found on compute node.")}
