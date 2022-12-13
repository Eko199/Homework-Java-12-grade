USE pc;

SELECT AVG(speed) AS AvgSpeed
FROM pc;

SELECT product.maker, AVG(laptop.screen) AS AvgScreen
FROM product JOIN laptop USING (model)
GROUP BY product.maker;

SELECT AVG(speed) AS AvgSpeed
FROM laptop
WHERE price > 1000;

SELECT product.maker, AVG(pc.price) AS AvgPrice
FROM product JOIN pc USING(model)
WHERE product.maker = 'A';

SELECT speed, AVG(price) AS AvgPrice
FROM pc
GROUP BY speed;

SELECT maker, COUNT(DISTINCT model) AS CNT
FROM product
GROUP BY maker
HAVING COUNT(DISTINCT model) > 2;

SELECT product.maker, pc.price
FROM pc JOIN product USING(model)
ORDER BY price DESC
LIMIT 1;

SELECT speed, AVG(price) AS AvgPrice
FROM pc
GROUP BY speed
HAVING speed > 800;