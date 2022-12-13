USE pc;

SELECT maker, speed
FROM product p JOIN laptop l ON p.model = l.model
WHERE l.hd >= 9;


(SELECT p.model, price
FROM product p JOIN pc ON p.model = pc.model
WHERE maker = 'B')
UNION
(SELECT p.model, price
FROM product p JOIN laptop l ON p.model = l.model
WHERE maker = 'B')
UNION
(SELECT p.model, price
FROM product p JOIN printer ON p.model = printer.model
WHERE maker = 'B');

SELECT DISTINCT hd
FROM pc pc1
WHERE 2 <= (SELECT COUNT(hd) FROM pc pc2 WHERE pc1.hd = pc2.hd);

SELECT DISTINCT pc1.model, pc2.model
FROM pc pc1, pc pc2
WHERE pc1.model < pc2.model 
AND pc1.ram = pc2.ram 
AND pc1.cd = pc2.cd;

SELECT maker, COUNT(DISTINCT pc.code) AS CNT
FROM product, pc
WHERE type = 'PC'
AND product.model = pc.model 
AND speed >= 400
GROUP BY maker
HAVING COUNT(DISTINCT pc.code) >= 2;