USE SalesDB;

ALTER TABLE WareTypes
ADD UNIQUE (name);

ALTER TABLE Wares
ADD CHECK (price > 0);