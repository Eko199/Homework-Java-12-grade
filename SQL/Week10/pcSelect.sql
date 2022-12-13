USE pc;

SELECT MODEL, speed AS MHZ, hd GB
FROM pc
WHERE price < 1200;

SELECT DISTINCT MAKER
FROM product
WHERE type = 'Printer';

SELECT MODEL, RAM, SCREEN
FROM laptop
WHERE price > 1000;

SELECT * FROM printer
WHERE color = 'y';

SELECT MODEL, SPEED, HD
FROM pc
WHERE (cd = '12x' OR cd = '16x') AND price < 2000;