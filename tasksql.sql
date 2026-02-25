--Q1 — Film prices From film, show: film_id, title, rental_rate Get only 
---the films where rental_rate is 9.99 or 4.99.
select film_id,title,rental_rate  from film where rental_rate=9.99 or  rental_rate=4.99; 

--Q2 — Film length + rating From film, show: title, length, rating Find films that
--are 90 to 120 minutes (inclusive) and rating is PG or PG-13.
select title, f.length,rating from film f where  f.length between 90 and 120;

select*from  film;
-- Q3 — Actor last names From actor, show: actor_id, first_name, last_name 
--Find actors whose last_name starts with S OR ends with N.
select actor_id, first_name, last_name from actor where  last_name Ilike 's%' or  last_name Ilike '%n';
select * from actor;
--_ Q4 — Active customers + email filter From customer, show: customer_id, first_name, last_name, email Find active customers
--whose email contains “.org” OR “.net”.
select customer_id, first_name, last_name, email from customer where email Ilike '%.org' or email Ilike '%.net';
select * from customer
--Q5 — Inactive customers in store 1 From customer, show: customer_id, store_id, active Find customers from store 1
--who are not active.

select  customer_id, store_id, active from customer  where  store_id=1 and active=0; 
select * from customer;
select * from store;
----Q6 — Payment amount + date range From payment, show: payment_id, customer_id, amount, payment_date Find payments with amount
--between 2.00 and 5.00 and made in February 2007. 
select* from payment;
select  payment_id, customer_id, amount,payment_date::date from payment where extract(month from payment_date)=2 and extract (year from payment_date)=2007 and  amount between 2.00 and 5.00 ;

select  payment_id, customer_id, amount,payment_date::date from payment
WHERE amount BETWEEN 2.00 AND 5.00
  AND payment_date >= '2007-02-01'
  AND payment_date <  '2007-03-01';

--Q7 — Rentals not returned From rental, show: rental_id, rental_date, return_date, customer_id Find rentals
--where return_date is NULL.
select rental_id, rental_date, return_date, customer_id  from rental where return_date is NULL;
--Q8 — Address district + postal code present From address, show: address_id, address, district, postal_code Find addresses 
--where district is Texas or California AND postal_code is not NULL. 
select *from address;
select address_id, address, district, postal_code from address WHERE district IN ('Texas','California')
AND postal_code IS NOT NULL;
Q9 — Replacement cost + exclude titles From film, show: film_id, title, replacement_cost Find films where replacement_cost is 12.99, 16.99, or 28.99 AND the title does NOT contain the letter A.
select film_id, title, replacement_cost from film
where replacement_cost IN (12.99, 16.99, 28.99)
and title NOT ILIKE '%A%';




--Q10 — Inventory logic challenge From inventory, show: inventory_id, film_id, store_id Find inventory items 
--where: • (store_id = 1 AND film_id between 1 and 50) OR • (store_id = 2 AND film_id between 51 and 100)
select  inventory_id, film_id, store_id  from inventory  where(store_id = 1 AND film_id between 1 and 50) OR  (store_id = 2 AND film_id between 51 and 100);



