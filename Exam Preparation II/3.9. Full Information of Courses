SELECT 
	a.name,
	CASE
		WHEN EXTRACT(HOUR FROM co.start) BETWEEN 6 AND 20 THEN 'Day'
		ELSE 'Night'
	END AS day_time,
	co.bill,
	cl.full_name,
	cr.make,
	cr.model,
	ca.name
FROM
	addresses AS a
JOIN 
	courses AS co 
ON 
	co.from_address_id = a.id
JOIN 
	clients AS cl
ON
	co.client_id = cl.id
JOIN 
	cars AS cr
ON
	co.car_id = cr.id
JOIN 
	categories AS ca
ON 
	cr.category_id = ca.id
ORDER BY 
	co.id;
