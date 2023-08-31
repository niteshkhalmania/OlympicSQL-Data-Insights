/*
This SQL script creates a table named 'olympics_history_noc_regions' to store information about National Olympic Committee (NOC) regions.

Table Name: olympics_history_noc_regions

Columns:
1. NOC (CHAR(3)): The National Olympic Committee code representing the country.
   - PRIMARY KEY: The 'NOC' column is set as the primary key to ensure unique identification of each country.

2. region (VARCHAR(255)): The name of the region to which the NOC belongs.

Note:
- The 'NOC' column is set as the primary key to ensure that each NOC code is unique and there are no duplicates in the table.
- The 'region' column stores the name of the region corresponding to each NOC code.
- The data types for each column are specified to enforce data integrity and optimize storage.
- This table can be used to establish a relationship between NOCs and their corresponding regions in the 'olympics_history' table.
*/
CREATE TABLE olympics_history_noc_regions (
    NOC CHAR(3) PRIMARY KEY,
    region VARCHAR(255)
);
