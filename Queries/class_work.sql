SELECT  AVG (rental_rate)  AS "AVG_RENTAL" from film
SELECT rating FROM public.film

SELECT MAX (rating) AS "MAX_RATING" ,AVG (rental_rate)  AS "AVG_RENTAL" from film
GROUP BY rating
SELECT sum(replacement_cost) AS "Total_maxcoast" from film

-- 2. Retrieve the latest rental date for each title. 

select  distinct on (f.title) f.title,
 r.rental_date
 from rental r
 left join inventory i
 on r.inventory_id= i.inventory_id
 join film f
 on i.film_id=i.film_id
 order by title,rental_date desc;
 
 SELECT film_id, title
FROM film 
WHERE film_id NOT IN
  (SELECT film_id 
   FROM inventory);

