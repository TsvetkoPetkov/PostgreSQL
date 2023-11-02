CREATE OR REPLACE PROCEDURE sp_increase_salaries(
	department_name VARCHAR(100)
)
AS
$$
	BEGIN
		UPDATE employees
		SET salary = salary + salary * 0.05
		WHERE department_id = (
			SELECT 
				d.department_id
			FROM
				departments AS d
			JOIN 
				employees AS e
			ON
				d.department_id = e.department_id
			WHERE
				d.name = department_name
			GROUP BY d.department_id
		);
	END;
$$
LANGUAGE plpgsql;
