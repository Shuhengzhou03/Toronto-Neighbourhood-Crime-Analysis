#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto.
# Author: Jack Zhou
# Date: 2024-09-27
# Contact: shuheng.zhou@mail.utoronto.ca
# Pre-requisites: Install the opendatatoronto (Gelfand 2022) and
# tidyverse (Wickham et al. 2019) packages.

#This code is based on knowledge from Alexander (2023).

# Install and load necessary packages
# install.packages("opendatatoronto")
# install.packages("tidyverse")
library(opendatatoronto)
library(tidyverse)
library(lintr)
library(styler)

#### Downloading the Dataset ####

# Replace the search term and dataset name with your dataset's name and file name
raw_data <- 
  search_packages("Neighbourhood Crime Rates") |>    # Adjust this to the actual dataset you need
  list_package_resources() |> 
  filter(name == "neighbourhood-crime-rates - 4326.csv") |>  # Replace this with the exact CSV name in the resource
  get_resource()

#### Saving the Dataset ####

write_csv(raw_data, "/Users/shuhengzhou/Desktop/crime_analysis/data/raw_data/raw_data.csv")
