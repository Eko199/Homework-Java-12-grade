USE movies;

SELECT ADDRESS
FROM studio
WHERE NAME = 'MGM';

SELECT BIRTHDATE
FROM moviestar
WHERE NAME = 'Sandra Bullock';

SELECT STARNAME
FROM starsin
WHERE MOVIEYEAR = 1980 AND MOVIETITLE LIKE '%Empire%';

SELECT NAME
FROM movieexec
WHERE NETWORTH > 10000000;

SELECT NAME
FROM moviestar
WHERE GENDER = 'M' OR ADDRESS = 'Prefect Rd.';