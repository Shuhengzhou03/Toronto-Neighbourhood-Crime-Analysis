#### Preamble ####
# Purpose:Generates a simulated version of assault incidents from 2014 to 2024
# dataset from this analysis and uses tests to ensure that the simulated data
# is reasonable and realistic.
# Author: Jack Zhou
# Date: September 27, 2024
# Contact: shuheng.zhou@mail.utoronto.ca
# Pre-requisites: Install the janitor (Firke 2023) and tidyverse
# (Wickham et al. 2019) packages.

#### Loading Packages ####

# install.packages("janitor")
# install.packages("tidyverse")
#install.packages("lintr")
#install.packages("styler")
library(janitor)
library(tidyverse)
library(lintr)
library(styler)

#### Data Simulation ####

## POPULATION_2023
# Set a seed for reproducibility
set.seed(100)

# Simulate population data based on assumed distribution (Normal Distribution)
# Assuming the mean and standard deviation are based on the summary of your original data
simulated_data <- data.frame(
  POPULATION_2023 = round(rnorm(n = 100, mean = 5000, sd = 1500))
)

# Ensure no negative values for population
simulated_data$POPULATION_2023[simulated_data$POPULATION_2023 < 0] <- 0

# View the simulated population data
head(simulated_data)


## ASSAULT_2014
# Set a seed for reproducibility
set.seed(100)

# Simulate assault data for 2014 based on assumed distribution (Poisson Distribution)
# Assuming the lambda (rate) parameter is based on summary statistics of your data
simulated_data <- data.frame(
  ASSAULT_2014 = rpois(n = 100, lambda = 20)
)

# View the first few rows of the simulated assault data
head(simulated_data)

## ASSAULT_2015
# Set a seed for reproducibility
set.seed(100)

# Simulate assault data for 2015 using a Poisson distribution
# Assuming the lambda (rate) parameter is based on typical values for assaults
simulated_data <- data.frame(
  ASSAULT_2015 = rpois(n = 100, lambda = 22)  # Adjust lambda based on your real data
)

# View the first few rows of the simulated assault data
head(simulated_data)

## ASSAULT_2016
# Set a seed for reproducibility
set.seed(100)

# Simulate assault data for 2016 using a Poisson distribution
# Assuming the lambda (rate) parameter based on the likely number of assaults
simulated_data <- data.frame(
  ASSAULT_2016 = rpois(n = 100, lambda = 25)  # Adjust lambda based on your real data
)

# View the first few rows of the simulated assault data
head(simulated_data)

## ASSAULT_2017
# Set a seed for reproducibility
set.seed(100)

# Simulate assault data for 2017 using a Poisson distribution
# Assuming the lambda (rate) parameter is based on expected assault counts
simulated_data <- data.frame(
  ASSAULT_2017 = rpois(n = 100, lambda = 27)  # Adjust lambda based on real data insights
)

# View the first few rows of the simulated assault data
head(simulated_data)

## ASSAULT_2018
# Set a seed for reproducibility
set.seed(100)

# Simulate assault data for 2018 using a Poisson distribution
# Assuming the lambda (rate) parameter is based on expected assault counts
simulated_data <- data.frame(
  ASSAULT_2018 = rpois(n = 100, lambda = 30)  # Adjust lambda based on your real data
)

# View the first few rows of the simulated assault data
head(simulated_data)

## ASSAULT_2019
# Set a seed for reproducibility
set.seed(100)

# Simulate assault data for 2019 using a Poisson distribution
# Assuming the lambda (rate) parameter is based on expected assault counts
simulated_data <- data.frame(
  ASSAULT_2019 = rpois(n = 100, lambda = 35)  # Adjust lambda based on your real data
)

# View the first few rows of the simulated assault data
head(simulated_data)

## ASSAULT_2020
# Set a seed for reproducibility
set.seed(100)

# Simulate assault data for 2020 using a Poisson distribution
# Assuming the lambda (rate) parameter is based on expected assault counts
simulated_data <- data.frame(
  ASSAULT_2020 = rpois(n = 100, lambda = 32)  # Adjust lambda based on your real data
)

# View the first few rows of the simulated assault data
head(simulated_data)

## ASSAULT_2021
# Set a seed for reproducibility
set.seed(100)

# Simulate assault data for 2021 using a Poisson distribution
# Assuming the lambda (rate) parameter is based on expected assault counts
simulated_data <- data.frame(
  ASSAULT_2021 = rpois(n = 100, lambda = 34)  # Adjust lambda based on your real data
)

# View the first few rows of the simulated assault data
head(simulated_data)

## ASSAULT_2022
# Set a seed for reproducibility
set.seed(100)

# Simulate assault data for 2022 using a Poisson distribution
# Assuming the lambda (rate) parameter is based on expected assault counts
simulated_data <- data.frame(
  ASSAULT_2022 = rpois(n = 100, lambda = 36)  # Adjust lambda based on your real data
)

# View the first few rows of the simulated assault data
head(simulated_data)

## ASSAULT_2023
# Set a seed for reproducibility
set.seed(100)

# Simulate assault data for 2023 using a Poisson distribution
# Assuming the lambda (rate) parameter is based on expected assault counts
simulated_data <- data.frame(
  ASSAULT_2023 = rpois(n = 100, lambda = 38)  # Adjust lambda based on your real data
)

# View the first few rows of the simulated assault data
head(simulated_data)

## ASSAULT_2024
# Set a seed for reproducibility
set.seed(100)

# Simulate assault data for 2024 using a Poisson distribution
# Assuming the lambda (rate) parameter is based on expected assault counts
simulated_data <- data.frame(
  ASSAULT_2024 = rpois(n = 100, lambda = 40)  # Adjust lambda based on your expected data for 2024
)

# View the first few rows of the simulated assault data
head(simulated_data)