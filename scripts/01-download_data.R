#### Preamble ####
# Purpose: Read in data from GSS Link:https://gss.norc.org/get-the-data/stata
# Author: Chloe Thierstein, Huda Sahaf, Emily Kim 
# Contact: chloe.thierstein@utoronto.ca, huda.sahaf@mail.utoronto.ca, emilyuna.kim@mail.utoronto.ca
# Date: 10 March 2023 
# License: MIT
# Prerequisites: Need to be able to access and download 2021 GSS data from https://gss.norc.org/get-the-data/stata


#### Workspace Set-up ####

#### Installing Packages ####
# install.packages("tidyverse") 
# install.packages("haven") 
# install.packages("here") 
# install.packages("readr")
# install.packages("dplyr")

#### Opening Libraries ####

library(tidyverse)
library(haven)
library(here)
library(readr)
library(dplyr)

#### Read in Data ####

#### Download data ####
raw_gss_2021 <- read_dta("inputs/data/2021_stata/GSS2021.dta") # download .dta file from US GSS first and put "GSS2021.dta" folder into data folder 



#### Save Data as CSV File ####
write_csv(
  x = raw_gss_2021, # name .csv file 
  file = "raw_gss_2021.csv" # create raw data .csv file and store it in inputs folder
)



         