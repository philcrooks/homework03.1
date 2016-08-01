-- Phil's answers
-- Section 1
-- Q1
SELECT name FROM users;
-- Q2
SELECT name FROM shows WHERE price < 15;
-- Q3
INSERT INTO users (name) VALUES ('Val Gibson');
-- Q4
INSERT INTO shows_users (show_id, user_id) VALUES (12, 19);
-- Q5
UPDATE users SET name = 'Valerie Gibson' WHERE name = 'Val Gibson';
-- Q6
DELETE FROM users WHERE name = 'Valerie Gibson';
-- Q7
DELETE FROM shows_users WHERE user_id = 19;

-- Section 2
-- Q1
SELECT name, price FROM shows ORDER BY price ASC;
-- Q2
SELECT AVG(price) FROM shows;
-- Q3
SELECT MIN(price) FROM shows;
-- Q4
SELECT SUM(price) FROM shows;
-- Q5
SELECT SUM(price) FROM shows WHERE price < 20;
-- Q6
SELECT name, price FROM shows ORDER BY price DESC LIMIT 1;
-- Q7
SELECT name, price FROM (SELECT * FROM shows ORDER BY price ASC LIMIT 2) AS bottom_two ORDER BY price DESC LIMIT 1;
-- OFFSET provides a neater solution
SELECT name, price FROM shows ORDER BY price ASC LIMIT 1 OFFSET 1;
-- Q8
SELECT name FROM users WHERE name SIMILAR TO 'N%';
-- Q9
SELECT name FROM users WHERE name SIMILAR TO '%er%';

-- Section 3
-- Q1
SELECT time FROM shows INNER JOIN times ON times.show_id = shows.id WHERE name = 'Edinburgh Royal Tattoo';
-- Q2
SELECT COUNT(*) FROM shows_users INNER JOIN shows ON shows.id = shows_users.show_id WHERE name = 'Shitfaced Shakespeare';
-- Q3
SELECT name, COUNT(*) FROM shows_users INNER JOIN users ON shows_users.user_id = users.id GROUP BY users.name;
-- Q4
SELECT name FROM shows_users INNER JOIN times on shows_users.show_id = times.show_id INNER JOIN users ON shows_users.user_id = users.id WHERE time = '17:15';