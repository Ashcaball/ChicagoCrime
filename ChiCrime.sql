/* What blocks experience the most crime */

SELECT block, count(block) AS HighCrimeBlock
FROM `bigquery-public-data.chicago_crime.crime` 
Group by block
order by HighCrimeBlock desc

 -- result: 100XX W OHARE ST 0.21%, 001XX N STATE ST 0.19%, 076XX S CICERO AVE 0.13% out of 62252 blocks that exisy in Chicago

/* Top 3 crimes commited?*/

SELECT primary_type, count(primary_type) AS AmountCommited
FROM `bigquery-public-data.chicago_crime.crime` 
Group by primary_type 
order by AmountCommited desc

 -- result: THEFT 21.07%, BATTERY 18.34%, CRIMINAL DAMAGE 11.4%

/* What percentage of crimes result in arrest? */

SELECT count(arrest) AS Arrested
FROM `bigquery-public-data.chicago_crime.crime` 
WHERE arrest = false 

 -- Result: 26.52%

/* What locations do most crimes occur at? (ex: sidewalk, alley, school) */

SELECT location_description, count(location_description) AS location_of_crime
FROM `bigquery-public-data.chicago_crime.crime` 
Group by location_description

 -- Result: Residence 16.89% 
 
 /* Which years had highest and lowest amount of crimes commited?*/
 
 SELECT year, count(year) AS CrimeYear
FROM `bigquery-public-data.chicago_crime.crime` 
Group BY year
order by CrimeYear desc

 -- result: HIGHh: 2002 with 486788 crimes commited, LOW: 2021 with 207594 crimes commited
 
 
 
 
