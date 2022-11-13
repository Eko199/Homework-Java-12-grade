USE test_bank;

INSERT INTO clients (full_name, address, phone, egn)
VALUES 
	("Viktor", "asdf", "088", "11111"),
	("Az", "asdf1", "0888", "22222"),
	("Toi", "asdf2", "08888", "33333");

INSERT INTO accounts (nummer, balance, account_type, client_id)
VALUES 
	("0001230", 0.0, "main", 1),
	("4679", 99.99, "side", 1),
	("576786", 11.01, "main", 2);

UPDATE clients
SET egn="06969"
WHERE id > 1;

USE teams_and_fans;

INSERT INTO players (full_name)
VALUES 
	("Viktor"),
	("Az"),
	("Toi");
	
INSERT INTO teams (team_name, captain_id)
VALUES 
	("Team1", 1),
	("Team2", 2),
	("Team3", 1);

DELETE FROM players
WHERE id = 3;