CREATE TABLE friends (
  id INTEGER PRIMARY KEY,
  full_name TEXT,
  birthday DATE,
  instagram TEXT UNIQUE
);

INSERT INTO friends (id, full_name, birthday, instagram)
VALUES (1, 'Ororo Munroe', '1940-05-30', '@ororo');

INSERT INTO friends (id, full_name, birthday, instagram)
VALUES (2, 'Renops', '1960-08-15', '@renops');

INSERT INTO friends (id, full_name, birthday, instagram)
VALUES (3, 'Dalila', '1962-07-28', '@alilad');

UPDATE friends
SET full_name = 'Storm'
WHERE id = 1;

ALTER TABLE friends
ADD email TEXT;

UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

DELETE FROM friends
WHERE id = 1;

SELECT * FROM friends;










