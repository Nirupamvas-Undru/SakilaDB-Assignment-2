SELECT SUM(film_list.price*film.rental_duration) FROM film_list
JOIN film
ON film.film_id = film_list.FID
WHERE film_list.category = "Animation";