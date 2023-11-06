CREATE OR REPLACE FUNCTION fn_calculate_future_value(
	initial_sum INT,
	yearly_interest_rate DECIMAL,
	number_of_years INT
) RETURNS DECIMAL
AS
$$	
	DECLARE
		future_value DECIMAL;
	BEGIN
		future_value := TRUNC(initial_sum * POWER(1 + yearly_interest_rate, number_of_years), 4);
		RETURN future_value;
	END;
$$
LANGUAGE plpgsql;

SELECT * FROM fn_calculate_future_value (1000, 0.1, 5);
