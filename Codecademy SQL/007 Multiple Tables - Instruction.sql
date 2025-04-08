
-- Multiple Tables
-- Combining Tables Manually

-- Combining Tables with SQL

-- JOIN

SELECT * -- all columns
FROM orders -- which table
JOIN customers -- combine orders + customers
  ON orders.customer_id = customers.customer_id;


-- OR we could use


SELECT orders.order_id,
   customers.customer_name
FROM orders
JOIN customers
  ON orders.customer_id = customers.customer_id;

-- 1. Join orders table and subscriptions table and select all columns.
-- Make sure to join on the subscription_id column.

-- 2. Don’t remove the previous query.
-- Add a second query after your first one that only selects rows from the join where description is equal to ‘Fashion Magazine’.

SELECT * -- all columns
FROM orders
JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id;

SELECT * 
FROM orders
JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id
WHERE subscriptions.description = 'Fashion Magazine';

-- Inner Joins


-- Codecademy Times

SELECT COUNT(id) FROM newspaper;
SELECT COUNT(id) FROM online;

SELECT COUNT(*) AS 'Rows'-- all columns
FROM newspaper
JOIN online
  ON newspaper.id = online.id;

-- Left Joins

SELECT * -- select all the columns
FROM newspaper -- selects table1 (the “left” table)
LEFT JOIN online -- performs a LEFT JOIN on table2 (the “right” table).
  ON newspaper.id = online.id;

SELECT * -- select all the columns
FROM newspaper -- selects table1 (the “left” table)
LEFT JOIN online -- performs a LEFT JOIN on table2 (the “right” table).
  ON newspaper.id = online.id
  WHERE online.id IS NULL;



-- Primary Key vs Foreign Key


SELECT * -- select all the columns
FROM classes -- selects table1 (the “left” table)
JOIN students -- performs a LEFT JOIN on table2 (the “right” table).
  ON classes.id = students.class_id;


-- Cross join

SELECT COUNT(*)
FROM newspaper
WHERE start_month <= 3 AND end_month >= 3;

SELECT *
FROM newspaper
CROSS JOIN months;

SELECT *
FROM newspaper
CROSS JOIN months
WHERE start_month <= month AND end_month >= month;

SELECT month,
  COUNT(*)
FROM newspaper
CROSS JOIN months
WHERE start_month <= month AND end_month >= month
GROUP BY month;


-- UNION

SELECT *
FROM newspaper
UNION
SELECT *
FROM online;


-- With

WITH previous_query AS (
   SELECT customer_id,
   COUNT(subscription_id) AS 'subscriptions'
FROM orders
GROUP BY customer_id
)

SELECT customers.customer_name, 
   previous_query.subscriptions
FROM previous_query
JOIN customers
  ON previous_query.customer_id = customers.customer_id;


