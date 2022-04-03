SELECT count(distinct FL.title) From film_list AS FL
JOIN inventory
ON FL.FID = inventory.film_id
JOIN rental
ON inventory.inventory_id = rental.inventory_id
JOIN staff_list AS SL
ON SL.SID = rental.staff_id
WHERE SL.name = "Jon Stephens" and FL.Category = "Sci-Fi";