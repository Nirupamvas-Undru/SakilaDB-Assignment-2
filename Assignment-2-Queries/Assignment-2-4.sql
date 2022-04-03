SELECT COUNT(film_list.category), film_list.category FROM customer_list
JOIN rental
ON customer_list.ID = rental.customer_id
JOIN inventory
ON rental.inventory_id = inventory.inventory_id
JOIN film_list
on film_list.FID = inventory.film_id
WHERE customer_list.name = "PATRICIA JOHNSON"
GROUP BY film_list.category
ORDER BY COUNT(film_list.category) DESC limit 1;