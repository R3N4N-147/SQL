-- Create the 'friends' table
CREATE TABLE friends (
  id INTEGER PRIMARY KEY,
  full_name TEXT,
  birthday DATE,
  instagram TEXT UNIQUE
);
-- Insert initial data
INSERT INTO friends (id, full_name, birthday, instagram)
VALUES 
  (1, 'Ororo Munroe', '1940-05-30', '@ororo'),
  (2, 'Renops', '1960-08-15', '@renops'),
  (3, 'Dalila', '1962-07-28', '@alilad');
-- Update Ororo's name to Storm
UPDATE friends
SET full_name = 'Storm'
WHERE id = 1;
-- Add email column
ALTER TABLE friends
ADD email TEXT;
-- Update email addresses
UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

UPDATE friends
SET email = 'Renops@codecademy.com'
WHERE id = 2;

UPDATE friends
SET email = 'Dalila@codecademy.com'
WHERE id = 3;

-- Verify the entry before deletion
SELECT * FROM friends WHERE id = 1;

-- Remove Storm from the table
DELETE FROM friends
WHERE id = 1;
-- Select all entries from 'friends'
SELECT * FROM friends;

