CREATE DATABASE test_bank;
USE test_bank;

CREATE TABLE clients(
	id INT AUTO_INCREMENT,
	full_name VARCHAR(100),
	address VARCHAR(100),
	phone VARCHAR(20),
	egn VARCHAR(10),
	PRIMARY KEY(id)
);

CREATE TABLE accounts(
	id INT AUTO_INCREMENT,
	nummer VARCHAR(20),
	balance DECIMAL,
	account_type VARCHAR(100),
	client_id INT,
	PRIMARY KEY(id),
	FOREIGN KEY(client_id) REFERENCES clients(id)
);