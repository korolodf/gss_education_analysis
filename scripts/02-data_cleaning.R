#### Preamble ####
# Purpose: Cleans data from the 2021 US General Social Survey downloaded from https://gss.norc.org/get-the-data/stata
# Author: Chloe Thierstein, Huda Sahaf, Emily Kim 
# Contact: chloe.thierstein@utoronto.ca, huda.sahaf@mail.utoronto.ca, emilyuna.kim@mail.utoronto.ca
# Date: 10 March 2023 
# License: MIT
# Pre-requisites: Need to be able to access and download 2021 GSS data from https://gss.norc.org/get-the-data/stata
# Any other information needed? Need to be able to access the 2021 GSS Codebook to understand how values were relabelled.

#### Need to Install These Packages to Run Script ####
# install.packages("dplyr")
# install.packages("tidyverse")
# install.packages("janitor")
# install.packages("readr")
# install.packages("haven")
# install.packages("labelled")

#### Workspace Setup ####
library(tidyverse)
library(janitor)
library(dplyr)
library(haven)
library(here)
library(labelled)

#### Load Raw Data ####
raw_gss_2021 <- read.csv(here::here("./inputs/data/2021_data/raw_gss_2021.csv"))

#### Data Cleaning ####

#### Clean Names ####
cleaned_gss_2021 <- 
  clean_names(raw_gss_2021)
  
#### Select Relevant Columns ####
cleaned_gss_2021 <-
  cleaned_gss_2021 |>
  select(happy, degree, sex, satjob, richwork, class, satfin, finrela)

#### Removing NA Rows from Data ####
cleaned_gss_2021 <- 
  cleaned_gss_2021|>
  na.omit(datacollected) 

#### Removing Label to be Able to Make Data More Meaningful ####
unlabelled(cleaned_gss_2021)

#### Re-coding How Respondent's Describe Their Financial Ranking against Other Americans to be More Meaningful ####
cleaned_gss_2021 <- cleaned_gss_2021 |>
  mutate(
    happy =
      recode(
        happy,
        "1" = "Very Happy",
        "2" = "Pretty Happy",
        "3" = "Not Too Happy"
      )
  )



#### Re-coding Respondent's Highest Degree of Education to be More Meaningful ####
cleaned_gss_2021 <- cleaned_gss_2021 |>
  mutate(
    degree =
      recode(
        degree,
        "0" = "Less Than High School",
        "1" = "High School",
        "2" = "Associate / Junior College",
        "3" = "Bachelors Degree",
        "4" = "Graduate Degree"
      )
      )

#### Re-coding Respondent's Sex to be More Meaningful ####
cleaned_gss_2021 <- cleaned_gss_2021 |>
  mutate(
    sex = 
      recode(
        sex,
        "1" = "Male",
        "2" = "Female"
      )
  )

#### Re-coding Respondent's Job Satisfaction to be More Meaningful ####
cleaned_gss_2021 <- cleaned_gss_2021 |>
  mutate(
    satjob =
      recode(
        satjob,
        "1" = "Very Satisfied",
        "2" = "Moderately Satisfied",
        "3" = "A Little Dissatisfied",
        "4" = "Very Dissatisfied"
      )
  )

#### Re-coding Respondent's Willingness to Stop Working if They Become Rich to be More Meaningful ####
cleaned_gss_2021 <- cleaned_gss_2021 |>
  mutate(
    richwork = 
      recode(
        richwork,
        "1" = "Continue to Work",
        "2" = "Stop Working"
      )
  )

#### Re-coding Respondent's Self-Ascribed Social Class to be More Meaningful ####
cleaned_gss_2021 <- cleaned_gss_2021 |>
  mutate(
    class = 
      recode(
        class,
        "1" = "Lower Class",
        "2" = "Working Class",
        "3" = "Middle Class",
        "4" = "Upper Class"
      )
  )

#### Re-coding Respondent's Financial Satisfaction to be More Meaningful ####
cleaned_gss_2021 <- cleaned_gss_2021 |>
  mutate(
    satfin =
      recode(
        satfin,
        "1" = "Pretty Well Satisfied",
        "2" = "More or Less Satisfied",
        "3" = "Not Satisfied at All"
      )
  )




#### Re-coding How Respondent's Describe Their Financial Ranking against Other Americans to be More Meaningful ####
cleaned_gss_2021 <- cleaned_gss_2021 |>
  mutate(
    finrela =
      recode(
        finrela,
        "1" = "Far Below Average",
        "2" = "Below Average",
        "3" = "Average",
        "4" = "Above Average",
        "5" = "Far Above Average"
      )
  )

#### Save Data ####
write_csv(
  x = cleaned_gss_2021,
  file = "cleaned_gss_2021.csv"
) #move this .csv to 2021_data folder


