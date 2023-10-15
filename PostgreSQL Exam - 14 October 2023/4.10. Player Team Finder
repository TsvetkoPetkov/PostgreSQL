CREATE OR REPLACE PROCEDURE sp_players_team_name(
	IN player_name VARCHAR(50),
	OUT outp_name VARCHAR(50)
)
AS 
$$	
	BEGIN
		SELECT 
			t.name
		FROM
			players AS p
		JOIN
			teams AS t
		ON 
			t.id = p.team_id
		WHERE 
			CONCAT(p.first_name, ' ', p.last_name) = player_name INTO outp_name;
		
		IF outp_name IS NULL THEN outp_name := 'The player currently has no team'; 
		END IF;
		RETURN;
	END;
$$
LANGUAGE plpgsql;

CALL sp_players_team_name('Thor Serrels', '');
