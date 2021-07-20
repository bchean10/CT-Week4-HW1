-- 1. How many actors are there with the last name ‘Wahlberg’?
-- My Query:
SELECT * 
FROM actor
WHERE last_name = 'Wahlberg';
-- Answer:
2

-- 2. How many payments were made between $3.99 and $5.99?
-- My Query:
SELECT * 
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;
-- Answer:
5607

-- 3. What film does the store have the most of? (search in inventory)
-- My Query:
SELECT COUNT(film_id)
FROM inventory;

-- Answer:
4581

-- 4. How many customers have the last name ‘William’?
-- My Query:
SELECT COUNT(last_name) 
FROM customer
WHERE last_name = 'William';
-- Answer:
0

-- 5. What store employee (get the id) sold the most rentals?
-- My Query:
SELECT COUNT(rental_id), staff_id 
FROM rental
GROUP BY staff_id;
-- Answer:
staff_id = 1 with 8040 rental_id

-- 6. How many different district names are there?
-- My Query:
SELECT COUNT(district)
FROM address;
-- Answer:
603

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- My Query:
SELECT COUNT(*), film_id 
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(*) DESC limit 1;
-- Answer:
film_id = 508

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- My Query:
SELECT store_id, COUNT(last_name)
FROM customer
WHERE last_name LIKE "%es%"
GROUP BY store_id

-- Answer:
2

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
-- My Query:
SELECT COUNT(amount), customer_id
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY customer_id
HAVING COUNT(amount) > 250;
-- Answer:
2

-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
-- My Query:
SELECT COUNT(rating), film_id
FROM film 
GROUP BY film_id, rating
ORDER BY COUNT(rating) DESC;
-- Answer:
2
