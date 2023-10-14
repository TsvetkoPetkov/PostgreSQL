SELECT 
	o.name,
	COUNT(a.owner_id) AS count_of_animals
FROM
	owners AS o
JOIN 
	animals AS a
ON 
	o.id = a.owner_id
GROUP BY o.name
ORDER BY COUNT(a.owner_id) DESC, o.name ASC
LIMIT 5;
