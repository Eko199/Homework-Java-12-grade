USE geography;

SELECT mountain_range, peak_name, elevation
FROM mountains m JOIN peaks ON m.id = mountain_id
WHERE mountain_range = 'Rila'
ORDER BY elevation DESC;

SELECT COUNT(c.country_code) AS country_count
FROM countries c LEFT JOIN mountains_countries mc ON c.country_code = mc.country_code
WHERE mountain_id IS NULL;

SELECT country_name
FROM countries c LEFT JOIN mountains_countries mc ON c.country_code = mc.country_code
WHERE mountain_id IS NULL;

SELECT country_code, mountain_range, peak_name, elevation
FROM mountains_countries mc
JOIN mountains m ON mc.mountain_id = m.id
JOIN peaks p ON m.id = p.mountain_id
WHERE country_code = 'BG' AND elevation > 2835
ORDER BY elevation DESC;

SELECT c.country_code, country_name, mountain_range
FROM mountains_countries mc
JOIN mountains ON mountain_id = id
JOIN countries c ON mc.country_code = c.country_code
WHERE c.country_code = 'BG' OR c.country_code = "RU" OR c.country_code = 'US'
ORDER BY c.country_code, mountain_range;

SELECT DISTINCT c.country_name, river_name
FROM rivers
JOIN countries_rivers cr ON id = river_id
RIGHT JOIN countries c ON cr.country_code = c.country_code
RIGHT JOIN countries ON c.continent_code = 'AF'
ORDER BY c.country_name
LIMIT 5;

SELECT DISTINCT c1.continent_name AS `FROM`, c2.continent_name AS `TO`
FROM continents c1 CROSS JOIN continents c2
ORDER BY `FROM`, `TO`;

SELECT h.capital AS Place, h.country_name AS 'Player 1 (Host)', '' AS Host, '' AS Guest, g.country_name AS 'Player 2 (Guest)'
FROM countries h CROSS JOIN countries g
WHERE h.continent_code = 'EU' AND g.continent_code = 'EU' AND h.country_name != g.country_name
ORDER BY RAND();

SELECT country_name, MAX(elevation) AS MaxPeakElevation, MAX(length) AS MaxRiverLength
FROM countries c
LEFT JOIN mountains_countries mc ON c.country_code = mc.country_code
LEFT JOIN peaks p ON mc.mountain_id = p.mountain_id
LEFT JOIN countries_rivers cr ON c.country_code = cr.country_code
LEFT JOIN rivers r ON cr.river_id = r.id
GROUP BY (country_name)
ORDER BY MaxPeakElevation DESC, MaxRiverLength DESC, country_name ASC
LIMIT 5;

#SELECT continent_code, currency_code, COUNT(country_code) AS usages
#FROM countries c1
#GROUP BY currency_code, continent_code HAVING COUNT(country_code) >= ALL (SELECT COUNT(country_code)
#FROM countries c2
#WHERE c1.continent_code = c2.continent_code
#GROUP BY currency_code, continent_code);