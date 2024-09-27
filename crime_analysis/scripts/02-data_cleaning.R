#### Preamble ####
# Purpose: Cleans the raw Neighbourhood Crime dataset obtained in
# "01-download_data.R".
# Author: Jack Zhou
# Date: 2024-09-27
# Contact: shuheng.zhou@mail.utoronto.ca
# Pre-requisites: Run the file "01-download_data.R".

# Load necessary library
library(dplyr)
library(tidyverse)
library(lintr)
library(styler)

# Read the raw data
raw_data <- read.csv("/Users/shuhengzhou/Desktop/crime_analysis/data/raw_data/raw_data.csv")

# Select and reorder the relevant columns
cleaned_data <- raw_data %>%
  select(POPULATION_2023, ASSAULT_2014, ASSAULT_2015, ASSAULT_2016, 
         ASSAULT_2017, ASSAULT_2018, ASSAULT_2019, ASSAULT_2020, 
         ASSAULT_2021, ASSAULT_2022, ASSAULT_2023, AREA_NAME)

# Save the cleaned data
write.csv(cleaned_data, "/Users/shuhengzhou/Desktop/crime_analysis/data/analysis_data/Cleaned_Data.csv", row.names = FALSE)

