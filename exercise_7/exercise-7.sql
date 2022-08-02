-- find all film titles rented out by customers who live in the city of Dundee
-- Similar to exercise 6 but you need a few more joins to get the city name

select title from customer 
left join rental on customer.customer_id = rental.customer_id
left join inventory on rental.inventory_id = inventory.inventory_id
left join film on inventory.film_id = film.film_id
left join address on customer.address_id = address.address_id
left join city on address.city_id = city.city_id
where city.city = 'Dundee'