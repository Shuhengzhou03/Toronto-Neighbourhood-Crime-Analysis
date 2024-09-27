#### Preamble ####
# Purpose: Runs tests on the cleaned dataset to check the validity
# of the entries.
# Author: Jack Zhou
# Date: 2024-09-27
# Contact: shuheng.zhou@mail.utoronto.ca
# Pre-requisites: Run the files "01-download_data.R" and "02-data_cleaning.R".

#### Loading Packages ####

library(tidyverse)
library(lintr)
library(styler)

# Load the cleaned dataset
cleaned_data <- read_csv("/Users/shuhengzhou/Desktop/crime_analysis/data/analysis_data/Cleaned_Data.csv")

#### Running the tests ####

# 1. Checking that AREA_NAME is of character type
class(cleaned_data$AREA_NAME) == "character"

# 2. Checking that population and assault counts are non-negative
all(cleaned_data$POPULATION_2023 >= 0)
all(cleaned_data$ASSAULT_2014 >= 0)
all(cleaned_data$ASSAULT_2015 >= 0)
all(cleaned_data$ASSAULT_2016 >= 0)
all(cleaned_data$ASSAULT_2017 >= 0)
all(cleaned_data$ASSAULT_2018 >= 0)
all(cleaned_data$ASSAULT_2019 >= 0)
all(cleaned_data$ASSAULT_2020 >= 0)
all(cleaned_data$ASSAULT_2021 >= 0)
all(cleaned_data$ASSAULT_2022 >= 0)
all(cleaned_data$ASSAULT_2023 >= 0)

# 3. Checking that AREA_NAME has unique values
length(unique(cleaned_data$AREA_NAME)) == nrow(cleaned_data)