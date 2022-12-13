USE movies;

SELECT STARNAME AS name
FROM starsin 
WHERE MOVIETITLE = 'Terms of Endearment'
AND STARNAME IN (SELECT NAME FROM moviestar WHERE GENDER = 'M');

SELECT STARNAME
FROM starsin
WHERE MOVIEYEAR = 1995
AND MOVIETITLE IN (SELECT TITLE FROM movie WHERE STUDIONAME = 'MGM');

SELECT NAME 
FROM movieexec
WHERE `CERT#` IN (SELECT `PRODUCERC#` FROM movie WHERE STUDIONAME = 'MGM');

SELECT TITLE
FROM movie
WHERE LENGTH > ALL (SELECT LENGTH FROM movie WHERE TITLE = 'Star Wars');

SELECT NAME
FROM movieexec
WHERE NETWORTH > ALL (SELECT NETWORTH FROM movieexec WHERE NAME = 'Merv Griffin');

SELECT TITLE
FROM movie JOIN movieexec ON `PRODUCERC#` = `CERT#`
WHERE NETWORTH >
(SELECT NETWORTH FROM movieexec WHERE NAME = 'Merv Griffin');