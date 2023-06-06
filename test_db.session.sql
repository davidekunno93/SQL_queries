SELECT first_name, last_name 
FROM actor
WHERE actor_id > 10;

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'N__%';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J__%n';

SELECT customer_id, amount
FROM payment
WHERE amount >= -415;

SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN -420 AND -415;

SELECT *
FROM payment
WHERE amount > 70;

SELECT *
FROM customer
WHERE customer_id = 341;

SELECT SUM(amount)
FROM payment
WHERE customer_id = 341;

SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 0;