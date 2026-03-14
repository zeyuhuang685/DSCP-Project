# DSCP-Project
Group project for STAT605 : Data Science Computing Project
 
# Analysis of High-volume for-hire vehicle Trips Dataset

This project uses open source NYC Taxi & Limousine Commission datasets through from 2021 - 2025. Dataset taxi ride information along with relevant information like trip miles, tips, airport fees and other information which allows to perform statistical analysis like correlation between trip distance, travel time, passenger cost, and driver pay vary across time and location. 

## Overview

This project analyzes the **TLC Trip Record Data** using **Python and R programming language**.

Goals of the project:
- Understand patterns in the data
- Build statistical models like Linear Regression, Logistic Regression, etc. 
- Generate visualizations and insights for presentation

Main statistical questions proposed to be explored : 

<ul> a) How does ride demand vary across time and space in NYC high-volume for-hire vehicle trips?</ul>
<ul> b) How do trip distance, travel time, passenger cost, and driver pay vary across time and location?</ul>


## Dataset

Source of the dataset: <a href="https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page"> Link </a>


Dataset includes variables such as:

| Variable | Type | Description |
|----------|------|-------------|
| hvfhs_license_num | Categorical | License number of the High-Volume For-Hire Service provider (e.g., Uber, Lyft). |
| dispatching_base_num | Categorical | Identifier for the base company that dispatched the trip. |
| originating_base_num | Categorical | Identifier for the base where the trip originated. |
| request_datetime | Datetime | Timestamp when the passenger requested the ride. |
| on_scene_datetime | Datetime | Time when the driver arrived at the pickup location. |
| pickup_datetime | Datetime | Timestamp when the passenger was picked up and the trip began. |
| dropoff_datetime | Datetime | Timestamp when the passenger was dropped off and the trip ended. |
| PULocationID | Categorical (ID) | Taxi zone ID where the passenger was picked up. |
| DOLocationID | Categorical (ID) | Taxi zone ID where the passenger was dropped off. |
| trip_miles | Numeric (continuous) | Distance of the trip in miles. |
| trip_time | Numeric (continuous) | Duration of the trip in seconds. |
| base_passenger_fare | Numeric (continuous) | Base fare charged to the passenger. |
| tolls | Numeric (continuous) | Total toll charges incurred during the trip. |
| bcf | Numeric (continuous) | Black Car Fund fee applied to the trip. |
| sales_tax | Numeric (continuous) | Sales tax applied to the trip fare. |
| congestion_surcharge | Numeric (continuous) | Surcharge applied for trips in congestion pricing zones. |
| airport_fee | Numeric (continuous) | Fee applied for airport pickups or drop-offs. |
| tips | Numeric (continuous) | Tip amount paid by the passenger. |
| driver_pay | Numeric (continuous) | Amount paid to the driver for the trip. |
| shared_request_flag | Binary / Categorical | Indicates whether a shared ride was requested (Y/N). |
| shared_match_flag | Binary / Categorical | Indicates whether the ride was successfully matched with another passenger. |
| access_a_ride_flag | Binary / Categorical | Indicates whether the trip was part of the Access-A-Ride accessible transportation program. |
| wav_request_flag | Binary / Categorical | Indicates whether a wheelchair-accessible vehicle was requested. |
| wav_match_flag | Binary / Categorical | Indicates whether a wheelchair-accessible vehicle was successfully matched. |
| cbd_congestion_fee | Numeric (continuous) | Congestion fee applied for trips entering the Central Business District (CBD). |

Data format:
- `.parquet`



