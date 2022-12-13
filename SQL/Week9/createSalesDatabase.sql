DROP DATABASE IF EXISTS SalesDB;
CREATE DATABASE SalesDB;
USE SalesDB;

CREATE TABLE WareTypes (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(20)
);

CREATE TABLE Wares (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(20),
    price DECIMAL(9, 2),
    typeId INT NOT NULL,

    FOREIGN KEY (typeId) REFERENCES WareTypes(id)
);

CREATE TABLE Cities (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(20),
    district VARCHAR(20),
    municipality VARCHAR(20)
);

CREATE TABLE Clients (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    fName VARCHAR(20),
    lName VARCHAR(20),
    ucn VARCHAR(10),
    cityId INT NOT NULL,
    address VARCHAR(100),
    phone VARCHAR(50),
    eMail VARCHAR(50),

    FOREIGN KEY (cityId) REFERENCES Cities(id)
);

CREATE TABLE Sales (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    date DATE,
    clientId INT,
    paymentType VARCHAR(20),

    FOREIGN KEY (clientId) REFERENCES Clients(id)
);

CREATE TABLE WareSales (
    saleId INT NOT NULL,
    wareId INT NOT NULL,
    quantity DECIMAL(10, 3),

    FOREIGN KEY (saleId) REFERENCES Sales(id),
    FOREIGN KEY (wareId) REFERENCES Wares(id)
);