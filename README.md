# Audit Survey: Availability of the influenza and shingles vaccines in U.S. pharmacies during the 2020 flu season


## Project overview

This was a telephone audit survey study of a national sample of 480 chain and independent pharmacies across the U.S. to assess availability of the shingles (Shingrix), regular-dose influenza, and 65+ flu vaccines (Fluad & Fluzone) in the 2020-2021 flu season. This telephone survey was conducted in October - November 2020.

## Data files

| File name | Description |
| --- | ----------- |
| analytic_sample.csv | final analytic sample including 384 pharmacies |
| responses_coded.csv | thematically coded qualitative responses to the open-ended survey question |
| survey_inclusion.csv | inclusion/exclusion codes for 480 pharmacies in sample |


## Code files

| File name | Description |
| --- | ----------- |
| tables.Rmd | R Markdown script generating full tables for manuscript |
| analyses.R | R console script for individual hypothesis tests |
| tables_inclusion.Rmd | R Markdown script generating table of included & excluded pharmacies |


Note: Raw data & data cleaning files are available upon request. 

## Demographic and pharmacy data sources

| Source | Variables |
| --- | ----------- |
| Hayes' Directories | Directory of pharmacies in the U.S. with contact information (available for purchase at: ) |
| U.S. Census data | Demographic data for counties in sample |
| National Center for Health Statistics Urban-Rural Codes | Codes (1-6) classifying rurality |



### R packages used for cleaning & analyses


+ **Data conversion & manipulation:** `dplyr`, `tidyr`
+ **Table generation:** `table1`, `janitor`
+ **Census variable import:** `tidycensus`
