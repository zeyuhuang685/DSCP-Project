# Spatiotemporal Patterns of Ride Demand and Determinants of Tip Ratio in NYC High Volume For-Hire Vehicle Trips

## Project Overview
This project analyzes open-source New York City Taxi & Limousine Commission (TLC) high-volume for-hire vehicle (HVFHV) trip data from 2021 to 2025. The primary objective is to study spatiotemporal variations in ride demand and investigate the factors influencing the tip ratio for services like Uber and Lyft.

## Research Questions
1.  **Demand Patterns:** How does ride demand vary across time and space in NYC high-volume for-hire vehicle trips?
2.  **Tipping Determinants:** To what extent do factors such as trip distance, pickup time period, trip duration, and shared ride status influence the tip ratio (tips divided by passenger fare)?
3.  **Variable Correlation:** How do trip distance, travel time, passenger cost, and driver pay vary across different times and locations?

## Dataset
The project utilizes the **TLC Trip Record Data** provided by the City of New York.
* **Data Source:** [NYC TLC Trip Record Data](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page)
* **Format:** `.parquet` files partitioned by month.
* **Key Variables:**
    * `pickup_datetime` & `dropoff_datetime`
    * `PULocationID` & `DOLocationID` (Taxi Zones)
    * `trip_miles` & `trip_time`
    * `base_passenger_fare`, `tips`, `tolls`, and `driver_pay`
    * `shared_request_flag` & `shared_match_flag`
    * `airport_fee` and `congestion_surcharge`

## Methodology & Computational Steps
Given the large-scale nature of the dataset (monthly files from 2021–2025), this project leverages **parallel computing** for efficient processing.

1.  **Parallel Processing:** Data is processed by month. Each job reads, cleans, and summarizes one monthly file.
2.  **Data Cleaning:** Removal of invalid observations and construction of ratio variables (e.g., tip ratio).
3.  **Aggregation:** Combining monthly outputs for comprehensive spatiotemporal analysis.
4.  **Statistical Analysis:** * Descriptive summaries and visualizations.
    * Spatiotemporal aggregation to identify high-demand clusters.
    * Regression models (Linear, Logistic, etc.) to evaluate determinants of tipping behavior.

## Technologies Used
* **Languages:** R and Python
* **Data Handling:** `arrow` (for Parquet files)
* **Computing Environment:** CHTC / HTCondor for distributed parallel processing.

## How to Read the Data (R Example)
```r
# The raw data is divided into monthly parquet files.
# Example for January 2021:
df_2021_01 <- arrow::read_parquet("fhvhv_tripdata_2021-01.parquet")
