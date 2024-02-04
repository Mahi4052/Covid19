# Covid19_India
## 1. COVID-19 Data Analysis SQL Queries

### Overview
This repository contains a set of SQL queries designed to interact with a database storing COVID-19 data for India. These queries cover a range of operations, providing insights into total cases, recovery rates, death rates, and more. The dataset is assumed to be structured in a table named "Indiareport" within the "Covid19" database.

### Queries Description: ([SQL_Queries.sql](https://github.com/Mahi4052/Covid19_India/blob/main/SQL_Quieres.sql))

#### Select All Records:
    Retrieve all columns and records from the "Indiareport" table.
#### Select Specific Columns:
    Retrieve specific columns ("date," "State_UnionTerritory," and "total_cases") from the "Indiareport" table.
#### Filter Data using WHERE Clause:
    Filter records for the state of 'Kerala' on a specific date ('2020-09-02').
#### Aggregate Functions (Total Cases for India):
    Calculate the total number of COVID-19 cases in India.
#### Group By State and Get Total Cases:
    Group data by state and calculate total cases for each state.
#### Order By (Top States with Highest Total Cases):
    Retrieve the top 5 states with the highest total cases, ordered in descending order.
#### Update Data (Increase Total Cases):
    Increase total cases by 100 for Maharashtra on a specific date ('2020-05-05').
#### Delete Records (Remove Data for a Specific Date):
    Delete records for a specific date ('2020-05-01').
#### Filter Data with Date Range:
    Retrieve records within the date range ('2020-08-01' to '2020-08-31').
#### Calculate Recovery Rate (Percentage):
    Calculate the recovery rate percentage for each state.
#### Calculate Death Rate (Percentage):
    Calculate the death rate percentage for each state.
#### Find States with No Deaths:
    Retrieve states where the "Deaths" column is null.
#### Count Distinct States in the Table:
    Count the number of distinct states in the "Indiareport" table.
#### Find States with Rapid Increase in Cases (Using Subquery):
    Identify states with total cases greater than half of the maximum total cases in the dataset.
#### Calculate the Average Total Cases Per Day:
    Calculate the average total cases per day.
#### Join Tables (if you have related data in another table):
    Join "Indiareport" and "Testingreport" tables to retrieve data on total samples collected.
#### Using Aggregate Functions and Data Type Conversion:
    Find the maximum total cases and average cured cases for each state with data type conversion for the "Cured" column.

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




