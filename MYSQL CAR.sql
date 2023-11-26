CREATE DATABASE cars;
USE cars;
-- READ DATA--
SELECT* FROM cardekho;

-- TOTAL CARS --
SELECT count(*) FROM cardekho;

-- the manager asked the employee how many cars will be available in 2023?--
SELECT count(*) FROM cardekho
WHERE year =2023;

-- the manager asked the employee how many cars will be available in 2020,2021--
SELECT count(*) FROM cardekho
WHERE year =2020; #74
SELECT count(*) FROM cardekho
WHERE year =2021; #7
SELECT count(*) FROM cardekho
WHERE year =2022;#7
SELECT count(*) FROM cardekho
WHERE year IN (2020,2021,2022)
GROUP BY year;

-- total of the cars by year--
SELECT year, count(*) FROM cardekho
GROUP BY year;

-- diesel cars in 2020--
SELECT count(*) FROM cardekho 
WHERE year =2020 AND fuel ="Diesel"; #20

-- petrol cars in 2020--
SELECT count(*) FROM cardekho 
WHERE year =2020 AND fuel ="Petrol";#51

-- petrol, diesel, cng by all year--
SELECT year, count(*) FROM cardekho
WHERE fuel  ="Petrol"
GROUP by year;

SELECT year, count(*) FROM cardekho
WHERE fuel  ="Diesel"
GROUP by year;

SELECT year, count(*) FROM cardekho
WHERE fuel  ="CNG"
GROUP by year;

-- 100 cars--
SELECT year, count(*) FROM cardekho
GROUP BY year 
HAVING count(*)>100;
SELECT year, count(*) FROM cardekho
GROUP BY year 
HAVING count(*)<100;

-- between 2015 and 2023--
SELECT count(*) FROM cardekho
WHERE year BETWEEN 2015 AND 2023;#4124

-- complete list from 2015 to 2023--
SELECT * FROM cardekho
WHERE year BETWEEN 2015 AND 2023;
-- END--