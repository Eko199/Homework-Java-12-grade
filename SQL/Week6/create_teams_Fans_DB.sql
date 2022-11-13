CREATE DATABASE teams_and_fans;
USE teams_and_fans;

CREATE TABLE players(
	id INT AUTO_INCREMENT,
	full_name VARCHAR(100),
	birth_date DATE,
	team_id INT,
	PRIMARY KEY(id)
);

CREATE TABLE teams(
	id INT AUTO_INCREMENT,
	team_name VARCHAR(100),
	original_color VARCHAR(20),
	reserve_color VARCHAR(20),
	captain_id INT,
	PRIMARY KEY(id),
	FOREIGN KEY(captain_id) REFERENCES players(id)
);

ALTER TABLE players
ADD FOREIGN KEY(team_id)
REFERENCES teams(id);

CREATE TABLE fans(
	id INT AUTO_INCREMENT,
	full_name VARCHAR(100),
	egn VARCHAR(10),
	PRIMARY KEY(id)
);

CREATE TABLE favorite_players(
	id INT AUTO_INCREMENT,
	fan_id INT NOT NULL,
	player_id INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(fan_id) REFERENCES fans(id),
	FOREIGN KEY(player_id) REFERENCES players(id)
);

CREATE TABLE favorite_teams(
	id INT AUTO_INCREMENT,
	fan_id INT NOT NULL,
	team_id INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(fan_id) REFERENCES fans(id),
	FOREIGN KEY(team_id) REFERENCES teams(id)
);