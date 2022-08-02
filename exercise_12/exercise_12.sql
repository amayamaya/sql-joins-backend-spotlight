-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT city, SUM(payment.amount) from city
LEFT JOIN address ON city.city_id = address.city_id
LEFT JOIN customer ON address.address_id = customer.address_id
LEFT JOIN rental ON customer.customer_id = rental.customer_id
LEFT JOIN payment ON rental.rental_id = payment.rental_id
WHERE payment.amount IS NOT NULL
GROUP BY city.city_id
ORDER BY SUM(payment.amount) DESC
LIMIT 10