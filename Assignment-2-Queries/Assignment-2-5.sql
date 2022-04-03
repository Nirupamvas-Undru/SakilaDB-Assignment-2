SELECT COUNT(*) FROM film_list
JOIN inventory
ON film_list.FID = inventory.film_id
JOIN rental
ON inventory.inventory_id = rental.inventory_id
join customer_list
on customer_list.ID = rental.customer_id
WHERE customer_list.name = "SUSAN WILSON" and film_list.rating = "R";