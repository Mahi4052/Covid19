# Covid19_India
----------------------------------------------------------------------------------------------------------------------------------------------------
# Overview
This repository contains a set of SQL queries designed to interact with a database storing COVID-19 data for India. These queries cover a range of operations, providing insights into total cases, recovery rates, death rates, and more. The dataset is assumed to be structured in a table named <bold "Indiareport" within the "Covid19" database./>

Queries
Select All Records:

Retrieve all columns and records from the "Indiareport" table.
Select Specific Columns:

Retrieve specific columns ("date," "State_UnionTerritory," and "total_cases") from the "Indiareport" table.
Filter Data using WHERE Clause:

Filter records for the state of 'Kerala' on a specific date ('2020-09-02').
Aggregate Functions (Total Cases for India):

Calculate the total number of COVID-19 cases in India.
Group By State and Get Total Cases:

Group data by state and calculate total cases for each state.
Order By (Top States with Highest Total Cases):

Retrieve the top 5 states with the highest total cases, ordered in descending order.
Update Data (Increase Total Cases):

Increase total cases by 100 for Maharashtra on a specific date ('2020-05-05').
Delete Records (Remove Data for a Specific Date):

Delete records for a specific date ('2020-05-01').
Filter Data with Date Range:

Retrieve records within the date range ('2020-08-01' to '2020-08-31').
Calculate Recovery Rate (Percentage):

Calculate the recovery rate percentage for each state.
Calculate Death Rate (Percentage):

Calculate the death rate percentage for each state.
Find States with No Deaths:

Retrieve states where the "Deaths" column is null.
Count Distinct States in the Table:

Count the number of distinct states in the "Indiareport" table.
Find States with Rapid Increase in Cases (Using Subquery):

Identify states with total cases greater than half of the maximum total cases in the dataset.
Calculate the Average Total Cases Per Day:

Calculate the average total cases per day.
Join Tables (if you have related data in another table):

Join "Indiareport" and "Testingreport" tables to retrieve data on total samples collected.
Using Aggregate Functions and Data Type Conversion:

Find the maximum total cases and average cured cases for each state with data type conversion for the "Cured" column.

# 2. Data Visualization
The COVID-19 report is visualized using Tableau.

In the visualization portfolio, we observe the total cases, total deaths, and total recoveries categorized by states on the horizontal (x-axis) and population on the vertical (y-axis).

Check out my protofolio:- https://public.tableau.com/app/profile/mahesh.ratnaparkhe/viz/Covid19_India_Report/Dashboard1#1

![Dashboard 1](https://github.com/Mahi4052/Covid19_India/assets/95848665/f645c5af-e5ad-4c7a-890a-02b4e8f19cc7)



