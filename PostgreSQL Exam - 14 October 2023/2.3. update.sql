UPDATE coaches
SET 
	salary = salary * coach_level
WHERE 
	first_name LIKE 'C%'
AND EXISTS (
    SELECT 1
    FROM players_coaches
    WHERE coaches.id = players_coaches.coach_id
);
