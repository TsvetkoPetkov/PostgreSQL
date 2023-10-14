SELECT 
	v.name AS volunteers,
	v.phone_number,
	SUBSTRING(TRIM(REPLACE(v.address, 'Sofia', '')), 3) AS address
FROM 
	volunteers AS v
JOIN 
	volunteers_departments AS vd
ON 
	vd.id = v.department_id
WHERE 
	v.address LIKE '%Sofia%'
		AND
	vd.department_name = 'Education program assistant'
ORDER BY v.name ASC;
