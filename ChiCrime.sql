/* What blocks experience the most crime */
/* What kind of crime is experience the most?*/

SELECT count(primary_type) AS Robbery
FROM `bigquery-public-data.chicago_crime.crime` 
WHERE primary_type = 'ROBBERY'

 -- result: 284935 out of 7585046 
 -- Robbery makes up 3.76% 

/* What dates is crime highest at?*/
/* What percentage of crimes result in arrest? */
/* What locations do most crimes occur at */
