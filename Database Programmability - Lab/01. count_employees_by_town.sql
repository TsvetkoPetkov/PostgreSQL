CREATE OR REPLACE FUNCTION fn_count_employees_by_town(
	town_name VARCHAR(20)
)RETURNS INT
AS
$$	
	DECLARE
	count_of_employees INT;
	BEGIN
		count_of_employees := (
			SELECT
				COUNT(e.employee_id)
			FROM
				towns AS t
			JOIN 
				addresses AS a
			ON 
				a.town_id = t.town_id
			JOIN
				employees AS e
			ON 
				e.address_id = a.address_id
			WHERE 
				t.name = town_name
		);
		RETURN count_of_employees;
	END;
$$
LANGUAGE plpgsql;

SELECT fn_count_employees_by_town('Sofia');
