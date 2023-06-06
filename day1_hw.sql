-- 1. How many actors are there with the last name ‘Wahlberg’?
    SELECT COUNT(actor_id)
    FROM actor
    WHERE last_name = 'Wahlberg';
    -- There are 2 actors with last name Wahlberg in the database

-- 2. How many payments were made between $3.99 and $5.99?
    SELECT COUNT(payment_id)
    FROM payment
    WHERE amount BETWEEN 3.99 AND 5.99;
    -- There are 0 payments made between $3.99 and $5.99

-- 3. What film does the store have the most of? (search in inventory)
    SELECT film_id, COUNT(inventory_id)
    FROM inventory
    GROUP BY film_id
    ORDER BY COUNT(inventory_id) DESC;

    SELECT film_id, title
    FROM film
    WHERE film_id = 193 OR film_id = 789 OR film_id = 730;
    -- The store has the most (8) of several films, 3 of which are Crossroads Casualties, Ridgement Submarine, and Shock Cabin

-- 4. How many customers have the last name ‘William’?
    SELECT last_name, COUNT(customer_id)
    FROM customer
    WHERE last_name = 'William'
    GROUP BY last_name;
    -- There are 0 customers with the last name 'William'

    SELECT *
    FROM customer
    WHERE last_name LIKE 'Wi%';
    -- There is 1 Williams and 1 Williamson in customers

-- 5. What store employee (get the id) sold the most rentals?
    SELECT staff_id, COUNT(rental_id)
    FROM rental
    GROUP BY staff_id;

    SELECT *
    FROM staff
    WHERE staff_id = 1;
    -- Mike Hillyer (id =1) sold the most rentals

-- 6. How many different district names are there?
    SELECT COUNT(DISTINCT district)
    FROM address;
    -- There are 378 districts

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
    SELECT film_id, COUNT(actor_id)
    FROM film_actor
    GROUP BY film_id
    ORDER BY COUNT(actor_id) DESC;

    SELECT title, film_id
    FROM film
    WHERE film_id = 508;
    -- film_id 508 (Lambs Cincinatti) has the most actors in it (15)

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
    SELECT COUNT(customer_id)
    FROM customer
    WHERE store_id = 1 AND last_name LIKE '%es';
    -- 13 customers from store_id 1 have last names that end in 'es'

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
    SELECT amount
    FROM payment
    WHERE customer_id BETWEEN 380 AND 430
    GROUP BY amount
    HAVING COUNT(rental_id) > 250;
    -- There are 3 different payment amounts in this criteria

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
    SELECT COUNT(DISTINCT rating)
    FROM film;
    -- There are 5 rating categories

    SELECT rating, COUNT(film_id)
    FROM film
    GROUP BY rating
    ORDER BY COUNT(film_id) DESC;
    -- PG-13 rating has the most movies (223)
