# Higher Levels of Education in the U.S. May Positively Correlate to Greater Levels of Financial Satisfaction and Social Worth

## Overview

This repository contains all files necessary to conduct an analysis of the United States population levels of education in relation to selected indicators of life satisfaction. The aim of this analysis is to determine if level of education achieved by US citizens influences life satisfaction as measured by wellness by financial satisfaction, job satisfaction, self-ascribed social class and self-perceived financial ranking against other US households.

## Requirements

This analysis requires RStudio and Quarto. To complete this project you will need to install both of these. We recommend using RStudio on your local computer or Posit Cloud as your IDE.

Following the download of your environment, you will need to download the packages associated with this project. These are:

-   `tidyverse`
-   `ggplot2`
-   `RColorBrewer`
-   `kableExtra`
-   `knitr`
-   `dplyr`
-   `here`
-   `labelled`
-   `haven`
-   `janitor`
-   `readr`
-   `tibble`

## Downloading Data

As the data for this project comes from the US General Social Survey (GSS), we do not have permission to store the data within our repository. To access this data, you will need to download the data physically from the [GSS website](https://gss.norc.org/get-the-data/stata) and select "2021." You will need to store this data in your inputs folder at,

`inputs/data/2021_stata`

Following this, you can download the data by running the script, 01-download_data.R which is located in the scripts folder. This will download the data and save the raw data as a .csv file to your main folder. Please move this file to,

`inputs/data/2021_data`

to ensure that GSS data is not being pushed to GitHub.

## Cleaning Data

Next, we will clean the data to help use better use and understand the data. Within the scripts folder, you will find the script, 02-data_cleaning.R. This script handles all of our data cleaning, including filtering of NA data.

## Analyzing Data

For this project, data analysis occurs within the paper.qmd file which is located at

`outputs/paper/paper.qmd`

This is a Quarto document and can be used to generate the paper.pdf file which is located at

`outputs/paper/paper.pdf`

Raw references used within the .qmd file are available at

`outputs/paper/references.bib`

## Supplementary Survey

The supplementary survey used within the paper can be accessed [here](https://forms.gle/tf5AtYfkH2ksJdMc9) or can be accessed in .png files at

`outputs/paper/supplementary_survey`

## Simulating Data

Simulated data for this project is located at

`scripts/00-simulate_data.R`

## Testing data

Three tests for this project are located at

`scripts/04-test_data.R`
