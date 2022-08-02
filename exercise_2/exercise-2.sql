-- find all rental dates for customers with the first_name Patricia
-- use INNER JOIN FROM customer onto rental
select rental_date from customer inner join rental on customer.customer_id = rental.customer_id where customer.first_name = 'Patricia'