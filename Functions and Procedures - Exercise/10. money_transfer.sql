CREATE OR REPLACE PROCEDURE sp_transfer_money(
	sender_id INT,
	receiver_id INT,
	amount NUMERIC(10, 4)
)
AS
$$
	DECLARE 
		current_balance NUMERIC;
	BEGIN
		CALL sp_withdraw_money(sender_id, amount);
		CALL sp_deposit_money(receiver_id, amount);

		current_balance := (SELECT balance FROM accounts WHERE sender_id = id);
		
		IF (current_balance < 0) THEN 
			ROLLBACK;
		END IF;
	END;
$$
LANGUAGE plpgsql;
