-- Write a query that returns the first 10 rows of ADMISSIONS
SELECT *
FROM admissions

LIMIT 10;

-- Now limit to rows where the admission happened before July 7th, 3033
SELECT *
FROM admissions
WHERE admittime <= '3033-07-08 00:00:00'
LIMIT 10;

/**
There are a lot of columns here, so now limit to these:
	- subject_id 
    - hadm_id 
    - admittime 
    - dischtime
    - deathtime 
    - ethnicity
    - diagnosis
*/

SELECT 
	subject_id 
    ,hadm_id 
    ,admittime 
    ,dischtime
    ,deathtime 
    ,ethnicity
    ,diagnosis
FROM admissions
LIMIT 10;

-- How many patients are in this table?
SELECT COUNT(1) FROM admissions;

-- Do patients appear multiple times?
SELECT subject_id, COUNT(1)
FROM ADMISSIONS
GROUP BY subject_id
HAVING COUNT(1) > 1
ORDER BY COUNT(1) DESC;

-- What is the distribution of race/ethnicity in our dataset?
SELECT ethnicity, COUNT(1)
FROM ADMISSIONS
GROUP BY ethnicity
ORDER BY COUNT(1) DESC;

-- What are the most common diagnoses in the dataset?
SELECT diagnosis, COUNT(1)
FROM ADMISSIONS 
GROUP BY diagnosis 
ORDER BY COUNT(1) DESC;

