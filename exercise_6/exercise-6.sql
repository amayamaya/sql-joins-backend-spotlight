-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5

select title from customer 
left join rental on customer.customer_id = rental.customer_id
left join inventory on rental.inventory_id = inventory.inventory_id
left join film on inventory.film_id = film.film_id
where customer.first_name = 'Roberta'