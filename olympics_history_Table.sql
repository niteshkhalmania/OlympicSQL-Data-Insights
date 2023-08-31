/*
This SQL script creates a table named 'olympics_history' to store information about Olympic history.

Table Name: olympics_history

Columns:
1. ID (INT): Primary key for unique identification of each record.
2. Name (VARCHAR(255)): The name of the athlete participating in the Olympic event.
3. Sex (CHAR(1)): The gender of the athlete ('M' for male, 'F' for female).
4. Age (INT): The age of the athlete at the time of the Olympic event.
5. Team (VARCHAR(255)): The name of the team the athlete belongs to.
6. NOC (CHAR(3)): The National Olympic Committee code representing the country of the athlete.
7. Games (VARCHAR(255)): The name of the Olympic games.
8. Year (INT): The year in which the Olympic event took place.
9. Season (VARCHAR(255)): The season of the Olympic event ('Summer' or 'Winter').
10. City (VARCHAR(255)): The city where the Olympic event took place.
11. Sport (VARCHAR(255)): The sport in which the athlete participated.
12. Event (VARCHAR(255)): The specific event within the sport the athlete participated in.
13. Medal (VARCHAR(255)): The type of medal won by the athlete ('Gold', 'Silver', 'Bronze', or 'NA' for no medal).

Note:
- The 'ID' column is set as the primary key to ensure unique identification of each record in the table.
- The data types for each column are specified to enforce data integrity and optimize storage.
*/
CREATE TABLE olympics_history (
    ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Sex CHAR(1),
    Age INT,
    Team VARCHAR(255),
    NOC CHAR(3),
    Games VARCHAR(255),
    Year INT,
    Season VARCHAR(255),
    City VARCHAR(255),
    Sport VARCHAR(255),
    Event VARCHAR(255),
    Medal VARCHAR(255)
);
