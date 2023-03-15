#### Preamble ####
# Purpose: Simulates relevant data from the 2021 US General Social Survey which can be downloaded from https://gss.norc.org/get-the-data/stata
# Author: Chloe Thierstein, Huda Sahaf, Emily Kim 
# Contact: chloe.thierstein@utoronto.ca, huda.sahaf@mail.utoronto.ca, emilyuna.kim@mail.utoronto.ca
# Date: 6 March 2023 
# License: MIT
# Pre-requisites: To understand data need to know where to find the 2021 US General Social Survey data


#### Need to Install These Packages to Run Script ####
# install.packages("tibble")


#### Workspace setup ####
library(tibble)

#### Simulate data ####

set.seed(853)

simulated_gss_2021 <-
  tibble(
    "highest_year_of_education" = sample(
      x = c(
        "7th Grade",
        "8th Grade",
        "9th Grade",
        "10th Grade",
        "11th Grade",
        "12th Grade",
        "1 Year of College",
        "2 Years of College",
        "3 Years of College",
        "4 Years of College",
        "5 Years of College",
        "6 Years of College",
        "7 Years of College",
        "8 Years of College"
      ),
      size = 4032,
      replace = TRUE
    ),
    "highest_level_of_education" = sample(
      x = c(
        "Less Than High School",
        "High School",
        "Associate / Junior College",
        "Bachelors Degree",
        "Graduate Degree"
      ),
      size = 4032,
      replace = TRUE
    ),
    "respondents_sex" = sample(
      x = c(
        "Male",
        "Female"
      ),
      size = 4032,
      replace = TRUE
    ),
    "job_satisfaction" = sample(
      x = c(
        "Very Satisfied",
        "Moderately Satisfied",
        "A Little Dissatisfied",
        "Very Dissatisfied"
      ),
      size = 4032,
      replace = TRUE
    ),
    "impact_of_winning_money_on_maintaining_employment" = sample(
      x = c(
        "Continue to Work",
        "Stop Working"
      ),
      size = 4032,
      replace = TRUE
    ),
    "self_ascribed_social_class" = sample(
      x = c(
        "Lower Class",
        "Working Class",
        "Middle Class",
        "Upper Class"
      ),
      size = 4032,
      replace = TRUE
    ),
    "financial_satisfaction" = sample(
      x = c(
        "Pretty Well Satisfied",
        "More or Less Satisfied",
        "Not Satisfied at All"
      ),
      size = 4032,
      replace = TRUE
    ),
    "self_ascribed_comparison_of_financial_status_against_other_american_families" = sample(
      x = c(
        "Far Below Average",
        "Below Average",
        "Average",
        "Above Average",
        "Far Above Average"
      ),
      size = 4032,
      replace = TRUE
    )
  )


#### Save Simulated Data ####
write.csv(
  x = simulated_gss_2021,
  file = "simulated_gss_2021.csv"
) #move this .csv to 2021_data folder


