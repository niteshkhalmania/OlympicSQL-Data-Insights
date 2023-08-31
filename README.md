# Unlocking Olympic Data: SQL Insights into Decades of Games

## About the Project
This project provides an in-depth analysis of 120 years of Olympics history using SQL queries. Two primary datasets form the foundation of this analysis:

- **dataset_olympics.csv**: This dataset offers a comprehensive view of the athletes, capturing their affiliations, participation details in various Olympic Games, and the medals they secured.
- **noc_region.csv**: This auxiliary dataset serves as a bridge, mapping the National Olympic Committee codes (NOC) to their respective regions or countries.

To ensure the integrity and quality of the data, we employed Python coupled with the Pandas library for data cleaning and preprocessing. This meticulous step is crucial as clean data forms the cornerstone of reliable analysis.

## Files in the Project and Their Content:

- **Analyzing Data using SQL.sql**: This file contains SQL queries that dissect the Olympic data, uncovering patterns, insights, and interesting facts about the games and participants.
- **README.md**: A descriptive file providing an overview of the project, its structure, and its contents.
- **db.py**: Python script responsible for database-related operations, like connecting to the database, executing SQL queries, and handling data retrieval or insertion.
- **noc_regions.py**: A script that focuses on operations related to the `noc_region.csv` dataset, including cleaning and preprocessing tasks.
- **olympics_history.py**: This script is dedicated to processing the `dataset_olympics.csv` file, involving tasks like data cleaning, transformation, and any other required preprocessing.
- **olympics_history_Table.sql**: Contains the SQL commands to create the table structure for the `dataset_olympics.csv` in the database.
- **olympics_history_cleaned.csv**: The cleaned and processed version of the `dataset_olympics.csv` dataset, ready for analysis.
- **olympics_history_noc_regions_cleaned.csv**: The cleaned and processed version of the `noc_region.csv` dataset.
- **olympics_history_noc_regions_table.sql**: Includes the SQL commands to create the table structure for the `noc_region.csv` in the database.
