-- Let’s count how many apps are in the table.


SELECT COUNT(*) FROM fake_apps;

-- Add a WHERE clause in the previous query to count how many free apps are in the table.

SELECT COUNT(*) FROM fake_apps;
WHERE price = 0.0;


-- SUM()

SELECT SUM(downloads)
FROM fake_apps;

-- The MAX() and MIN()

SELECT MAX(downloads) FROM fake_apps;

SELECT MIN(downloads) FROM fake_apps;

SELECT MAX(price) FROM fake_apps;

SELECT AVG(downloads) FROM fake_apps;

SELECT AVG(price) FROM fake_apps;


-- ROUND()

SELECT AVG(price)
FROM fake_apps;

SELECT ROUND(AVG(price), 2)
FROM fake_apps; 

SELECT ROUND(AVG(price), 3)
FROM fake_apps; 

SELECT ROUND(AVG(price), 4)
FROM fake_apps; 


-- Group By I

SELECT price, COUNT(*) 
FROM fake_apps
WHERE downloads > 20000
GROUP BY price;


SELECT category, SUM(downloads) 
FROM fake_apps
GROUP BY category;


-- Group By II


SELECT category, 
   price,
   AVG(downloads)
FROM fake_apps
GROUP BY 1
ORDER BY 1;

SELECT category, 
   price,
   AVG(downloads)
FROM fake_apps
GROUP BY 1
ORDER BY 2;

SELECT category, 
   price,
   AVG(downloads)
FROM fake_apps
GROUP BY 2
ORDER BY 2;

SELECT category, 
   price,
   AVG(downloads)
FROM fake_apps
GROUP BY 2
ORDER BY 1;


-- Having

SELECT price, 
   ROUND(AVG(downloads)),
   COUNT(name)
FROM fake_apps
GROUP BY 1
HAVING COUNT(name) > 10;












