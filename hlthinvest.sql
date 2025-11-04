Use oecdhlth;
select * from hlthinvest;
/*Getting descriptives*/
SELECT COUNT(distinct Year) FROM hlthinvest;
SELECT COUNT(distinct country) FROM hlthinvest;
SELECT MIN(YEAR) AS Earliest_Year
FROM hlthinvest;
SELECT MAX(YEAR) AS Last_Year
FROM hlthinvest;
SELECT COUNTRY,YEAR
/*COUNT(COUNTRY) AS total_country*/
FROM hlthinvest
ORDER BY YEAR desc, country;
/*List of countries by year, and sorted by latest year (2018)*/
SELECT COUNTRY,YEAR
FROM hlthinvest
GROUP BY YEAR,COUNTRY
ORDER BY YEAR DESC;
SELECT COUNTRY,YEAR
FROM hlthinvest
GROUP BY COUNTRY,YEAR
ORDER BY YEAR DESC;
/*List of countries by year and including MRI_Units, and sorted by latest year (2018)*/
SELECT YEAR,COUNTRY,mri_units
FROM hlthinvest
GROUP BY COUNTRY,YEAR,mri_units
ORDER BY YEAR DESC;
SELECT* FROM HLTHINVEST;
/*List of countries,YEAR and CT_Scanners, and sorted first by latest year then by no. of CT_Scanners*/
SELECT YEAR,COUNTRY,CT_Scanners
FROM hlthinvest
GROUP BY COUNTRY,YEAR,CT_Scanners
ORDER BY YEAR DESC,CT_Scanners DESC;
/*List of countries,YEAR and Hospital_Beds, and sorted first by latest year then by no. of Hospital_Beds*/
SELECT YEAR,COUNTRY,Hospital_Beds
FROM hlthinvest
GROUP BY COUNTRY,YEAR,Hospital_Beds
ORDER BY YEAR DESC,Hospital_Beds DESC;
/*List of countries,YEAR and Hospital_Stay, and sorted first by latest year then by no. of Hospital_Stay*/
SELECT YEAR,COUNTRY,Hospital_Stay
FROM hlthinvest
GROUP BY COUNTRY,YEAR,Hospital_Stay
ORDER BY YEAR DESC,Hospital_Stay DESC;
/*Top 5 of each Health Indicator*/
SELECT YEAR,COUNTRY,Hospital_Stay
FROM hlthinvest
GROUP BY COUNTRY,YEAR,Hospital_Stay
ORDER BY Hospital_Stay DESC
Limit 5;
SELECT YEAR,COUNTRY,MRI_Units
FROM hlthinvest
GROUP BY COUNTRY,YEAR,MRI_Units
ORDER BY MRI_Units DESC
Limit 5;
SELECT YEAR,COUNTRY,CT_Scanners
FROM hlthinvest
GROUP BY COUNTRY,YEAR,CT_Scanners
ORDER BY CT_Scanners DESC
Limit 5;
SELECT YEAR,COUNTRY,Hospital_Beds
FROM hlthinvest
GROUP BY COUNTRY,YEAR,Hospital_Beds
ORDER BY Hospital_Beds DESC
Limit 5;
/*Lowest 5 of each Health Indicator*/
SELECT YEAR,COUNTRY,Hospital_Stay
FROM hlthinvest
GROUP BY COUNTRY,YEAR,Hospital_Stay
ORDER BY Hospital_Stay
Limit 5;
SELECT YEAR,COUNTRY,MRI_Units
FROM hlthinvest
GROUP BY COUNTRY,YEAR,MRI_Units
ORDER BY MRI_Units
Limit 5;
SELECT YEAR,COUNTRY,CT_Scanners
FROM hlthinvest
GROUP BY COUNTRY,YEAR,CT_Scanners
ORDER BY CT_Scanners
Limit 5;
SELECT YEAR,COUNTRY,Hospital_Beds
FROM hlthinvest
GROUP BY COUNTRY,YEAR,Hospital_Beds
ORDER BY Hospital_Beds
Limit 5;
SELECT MRI_Units,CT_Scanners,Hospital_Beds,Hospital_Stay,
(MRI_Units+CT_Scanners+Hospital_Beds+Hospital_Stay) as Rank1
FROM hlthinvest;
