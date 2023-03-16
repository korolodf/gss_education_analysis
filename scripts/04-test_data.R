#### Preamble ####
# Purpose: Test the simulated data of the 2021 US General Social Survey. The real data can be downloaded from https://gss.norc.org/get-the-data/stata
# Author: Chloe Thierstein, Huda Sahaf, Emily Kim 
# Contact: chloe.thierstein@utoronto.ca, huda.sahaf@mail.utoronto.ca, emilyuna.kim@mail.utoronto.ca
# Date: 6 March 2023 
# License: MIT
# Pre-requisites: Need to be able to load in simulated data

#### Need to install these packages to run script ####
# install.packages("here")

#### Workspace setup ####
library(here)

#### Load in Simulated Data ####
simulated_gss_2021 <- read.csv(here::here("./inputs/data/2021_simulated_data/simulated_gss_2021.csv"))

#### Testing Simulated Data ####

#### Test 1 ####
simulated_gss_2021$"highest_level_of_education" |>
  unique()|>
  length() == 5

#### Test 2 ####
simulated_gss_2021$"compare_financial_status_against_other_us_families" |>
  class() == "character"

#### Test 3 ####
simulated_gss_2021$"financial_satisfaction" |>
  unique()

