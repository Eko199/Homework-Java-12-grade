USE pc;

SELECT maker, p.model, p.type
FROM product p
LEFT JOIN pc on p.model = pc.model
LEFT JOIN laptop on p.model = laptop.model
LEFT JOIN printer on p.model = printer.model
WHERE pc.code IS NULL AND laptop.code IS NULL AND printer.code IS NULL;

SELECT DISTINCT p.maker
FROM product p
CROSS JOIN product ON p.maker = product.maker
WHERE p.type = 'Laptop' and product.type = 'Printer';

SELECT DISTINCT hd
FROM laptop
GROUP BY hd
HAVING COUNT(model) >= 2;

SELECT pc.model
FROM pc LEFT JOIN product p ON pc.model = p.model
WHERE maker IS NULL;