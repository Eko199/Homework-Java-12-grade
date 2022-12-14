USE AIR;

ALTER TABLE AIRLINES
ADD UNIQUE (NAME);

ALTER TABLE AIRPLANES
ADD CHECK (SEATS > 0);

ALTER TABLE BOOKINGS
ADD CHECK (STATUS = 0 OR STATUS = 1);

ALTER TABLE FLIGHTS
ADD CHECK (FLIGHT_DURATION > 0);