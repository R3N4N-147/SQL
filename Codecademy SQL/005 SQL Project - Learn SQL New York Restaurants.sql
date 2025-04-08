-- New York Restaurants

-- Retriving the 'nomnom' table
SELECT * FROM nomnom;

-- Checkin the distinct neighborhoods
SELECT DISTINCT neighborhood
FROM nomnom;

-- Checkin the distinct neighborhoods
SELECT DISTINCT cuisine
FROM nomnom;

-- finding chinese takeout
SELECT name, neighborhood, cuisine -- column_name(s)
FROM nomnom -- table_name
WHERE cuisine = 'Chinese'; -- condition;

-- Return all the restaurants 4+
SELECT name, cuisine, review
FROM nomnom 
WHERE review >= 4
ORDER BY review DESC;

-- Return all the restaurants 
-- condition: Italian and $$$
SELECT name, cuisine, price
FROM nomnom 
WHERE cuisine = 'Italian' AND price = '$$$';

-- name of a restaurant
-- SELECT * FROM table WHERE column LIKE '%H%';
SELECT * 
FROM nomnom 
WHERE name LIKE '%meatball%';

-- delivery; spots close to min, down, china
SELECT * 
FROM nomnom 
WHERE neighborhood IN ('Midtown', 'Downtown', 'Chinatown');

-- health grade pending
SELECT * 
FROM nomnom 
WHERE health IS NULL; 

-- top 10 Restaurants
SELECT *
FROM nomnom 
WHERE review >= 4
ORDER BY review DESC
LIMIT 10;

-- Rating
SELECT name, review,
  CASE
    WHEN review > 4.5 THEN 'Extraordinary'
    WHEN review > 4 THEN 'Excellent'
    WHEN review > 3 THEN 'Good'
    ELSE 'Fair'
  END AS 'Rating'
FROM nomnom;




