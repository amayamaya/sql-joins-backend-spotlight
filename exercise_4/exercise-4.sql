-- find all customers first_name, last_name, address, and city
-- Similar to exercise 3 but with customer, address, city
select first_name, last_name, address, city from customer 
left join address on customer.address_id = address.address_id 
left join city on address.city_id = city.city_id
