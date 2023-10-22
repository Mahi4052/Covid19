--Select All Records:
SELECT * FROM Covid19..Indiareport;


--Select Specific Columns:
SELECT date, State_UnionTerritory, total_cases FROM Covid19..Indiareport;


--Filter Data using WHERE Clause:
SELECT * FROM Covid19..Indiareport WHERE State_UnionTerritory = 'Kerala' AND date = '2020-09-02';


--Aggregate Functions (Total Cases for India):
SELECT SUM(total_cases) AS total_cases_in_india FROM Covid19..Indiareport;


--Group By State and Get Total Cases:
SELECT State_UnionTerritory, SUM(total_cases) AS total_cases_per_state FROM Covid19..Indiareport 
GROUP BY State_UnionTerritory;


--Order By (Top States with Highest Total Cases):
SELECT TOP 5 State_UnionTerritory, SUM(total_cases) AS total_cases_per_state FROM Covid19..Indiareport
GROUP BY State_UnionTerritory ORDER BY total_cases_per_state DESC;


--Update Data (Increase Total Cases):
UPDATE Covid19..Indiareport
SET total_cases = total_cases + 100
WHERE State_UnionTerritory = 'Maharashtra' AND date = '2020-05-05';


--Delete Records (Remove Data for a Specific Date):
DELETE FROM Covid19..Indiareport WHERE date = '2020-05-01';


--Filter Data with Date Range:
SELECT * FROM Covid19..Indiareport
WHERE date BETWEEN '2020-08-01' AND '2020-08-31';


--Calculate Recovery Rate (Percentage):
SELECT State_UnionTerritory, (SUM(cured) * 100.0) / SUM(total_cases) AS recovery_rate_percentage
FROM Covid19..Indiareport GROUP BY State_UnionTerritory; 


--Calculate Death Rate (Percentage):
SELECT State_UnionTerritory, (SUM(deaths) * 100.0) / SUM(total_cases) AS death_rate_percentage
FROM Covid19..IndiaReport GROUP BY State_UnionTerritory;


--Find States with No Deaths:
SELECT State_UnionTerritory FROM Covid19..Indiareport WHERE Deaths = Null;


--Count Distinct States in the Table:
SELECT COUNT(DISTINCT State_UnionTerritory) AS distinct_states_count FROM Covid19..Indiareport;


--Find States with Rapid Increase in Cases (Using Subquery):
SELECT State_UnionTerritory, total_cases FROM Covid19..IndiaReport
WHERE total_cases > (SELECT MAX(total_cases) / 2 FROM Covid19..Indiareport)
ORDER BY total_cases DESC;

--Calculate the Average Total Cases Per Day:
SELECT AVG(total_cases) AS average_total_cases_per_day FROM Covid19..Indiareport;


--Join Tables (if you have related data in another table):
SELECT Covid19..Testingreport.Date, Covid19..Testingreport.TotalSamples_Collected
FROM Covid19..Testingreport INNER JOIN Covid19..Indiareport ON Covid19..Indiareport.State_UnionTerritory = Covid19..Testingreport.State;


--Using Aggregate Functions and Data Type Conversion:
SELECT State_UnionTerritory, MAX(Total_Cases) AS max_total_cases, AVG(CONVERT(FLOAT, Cured)) AS avg_cured_cases
FROM Covid19..Indiareport GROUP BY State_UnionTerritory;




	


