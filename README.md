# Covid19_India: Data Analysis & Data Visualization
## 1. COVID-19 Data Analysis SQL Queries

### Overview
This repository contains a set of SQL queries designed to interact with a database storing COVID-19 data for India. These queries cover a range of operations, providing insights into total cases, recovery rates, death rates, and more. The dataset is assumed to be structured in a table named "Indiareport" within the "Covid19" database.

### SQL Queries: ([SQL_Queries.sql](https://github.com/Mahi4052/Covid19_India/blob/main/SQL_Quieres.sql))

#### Select All Records:
    Retrieve all columns and records from the "Indiareport" table.
    SELECT * FROM Covid19..Indiareport;

#### Select Specific Columns:
    Retrieve specific columns ("date," "State_UnionTerritory," and "total_cases") from the "Indiareport" table.
    SELECT date, State_UnionTerritory, total_cases FROM Covid19..Indiareport;
    
#### Filter Data using WHERE Clause:
    Filter records for the state of 'Kerala' on a specific date ('2020-09-02').
    SELECT * FROM Covid19..Indiareport WHERE State_UnionTerritory = 'Kerala' AND date = '2020-09-02';
    
#### Aggregate Functions (Total Cases for India):
    Calculate the total number of COVID-19 cases in India.
    SELECT SUM(total_cases) AS total_cases_in_india FROM Covid19..Indiareport;
    
#### Group By State and Get Total Cases:
    Group data by state and calculate total cases for each state.
    SELECT State_UnionTerritory, SUM(total_cases) AS total_cases_per_state FROM Covid19..Indiareport GROUP BY State_UnionTerritory;
    
#### Order By (Top States with Highest Total Cases):
    Retrieve the top 5 states with the highest total cases, ordered in descending order.
    SELECT TOP 5 State_UnionTerritory, SUM(total_cases) AS total_cases_per_state FROM Covid19..Indiareport GROUP BY State_UnionTerritory ORDER BY total_cases_per_state DESC;
    
#### Update Data (Increase Total Cases):
    Increase total cases by 100 for Maharashtra on a specific date ('2020-05-05').
    SET total_cases = total_cases + 100 WHERE State_UnionTerritory = 'Maharashtra' AND date = '2020-05-05';
    
#### Delete Records (Remove Data for a Specific Date):
    Delete records for a specific date ('2020-05-01').
    DELETE FROM Covid19..Indiareport WHERE date = '2020-05-01';
    
#### Filter Data with Date Range:
    Retrieve records within the date range ('2020-08-01' to '2020-08-31').
    SELECT * FROM Covid19..Indiareport WHERE date BETWEEN '2020-08-01' AND '2020-08-31';

#### Calculate Recovery Rate (Percentage):
    Calculate the recovery rate percentage for each state.
    SELECT State_UnionTerritory, (SUM(cured) * 100.0) / SUM(total_cases) AS recovery_rate_percentage FROM Covid19..Indiareport GROUP BY State_UnionTerritory;
    
#### Calculate Death Rate (Percentage):
    Calculate the death rate percentage for each state.
    SELECT State_UnionTerritory, (SUM(deaths) * 100.0) / SUM(total_cases) AS death_rate_percentage FROM Covid19..IndiaReport GROUP BY State_UnionTerritory;
    
#### Find States with No Deaths:
    Retrieve states where the "Deaths" column is null.
    SELECT State_UnionTerritory FROM Covid19..Indiareport WHERE Deaths = Null;
    
#### Count Distinct States in the Table:
    Count the number of distinct states in the "Indiareport" table.
    SELECT COUNT(DISTINCT State_UnionTerritory) AS distinct_states_count FROM Covid19..Indiareport;
    
#### Find States with Rapid Increase in Cases (Using Subquery):
    Identify states with total cases greater than half of the maximum total cases in the dataset.
    SELECT State_UnionTerritory, total_cases FROM Covid19..IndiaReport WHERE total_cases > (SELECT MAX(total_cases) / 2 FROM Covid19..Indiareport) ORDER BY total_cases DESC;
    
#### Calculate the Average Total Cases Per Day:
    Calculate the average total cases per day.
    SELECT AVG(total_cases) AS average_total_cases_per_day FROM Covid19..Indiareport;
    
#### Join Tables (if you have related data in another table):
    Join "Indiareport" and "Testingreport" tables to retrieve data on total samples collected.
    SELECT Covid19..Testingreport.Date, Covid19..Testingreport.TotalSamples_Collected FROM Covid19..Testingreport INNER JOIN Covid19..Indiareport ON Covid19..Indiareport.State_UnionTerritory = Covid19..Testingreport.State;

#### Using Aggregate Functions and Data Type Conversion:
    Find the maximum total cases and average cured cases for each state with data type conversion for the "Cured" column.
    SELECT State_UnionTerritory, MAX(Total_Cases) AS max_total_cases, AVG(CONVERT(FLOAT, Cured)) AS avg_cured_cases FROM Covid19..Indiareport GROUP BY State_UnionTerritory;


## 2. COVID-19 India Report Data Visualization
[![Dashboard](https://github.com/Mahi4052/Covid19_India/assets/95848665/6a1bfcc4-e942-4b90-b542-5f1ae307fcff)](https://public.tableau.com/app/profile/mahesh.ratnaparkhe/viz/Covid_19_17070654779450/Dashboard1)

### Overview
This GitHub repository includes an interactive data visualization created with Tableau, providing a detailed exploration of the COVID-19 situation in India across different states. The visualization focuses on three key metrics: cumulative number of cases, cumulative number of deaths caused by COVID-19, and cumulative number of recoveries from COVID-19.

### Visualization Components
#### Cumulative Bar Grpahs Statistics (Bar Graphs):
The visualization offers a comprehensive view of the cumulative COVID-19 cases, deaths, and recoveries for each state in India. Users can quickly assess the overall impact of the pandemic on a state-by-state basis.

#### State-wise Breakdown (Pie Chart):
A pie chart component allows users to explore the distribution of COVID-19 cases, deaths, and recoveries across different states. This interactive feature assists users in selecting specific state/states of interest to view their respective data.


### Accessing the Visualization
To access the complete Tableau visualization and interact with the state-wise data breakdown, click here [Covid19 India Tableau Dashboard](https://public.tableau.com/app/profile/mahesh.ratnaparkhe/viz/Covid_19_17070654779450/Dashboard1). First make the dashboard full screen and utilize the pie chart to focus on individual state/states and understand their cumulative COVID-19 metrics.


### More Information
This visualization is a powerful tool for gaining insights into the distribution of COVID-19 metrics across states in India. Regular updates and additional features may be added to enhance its utility. Contributions, feedback, and customization based on specific needs are welcome.




