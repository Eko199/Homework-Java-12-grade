USE geography;

SELECT mountain_range, peak_name, elevation
FROM mountains m LEFT JOIN peaks p ON m.id = p.mountain_id
WHERE m.id IN 
(SELECT mountain_id FROM mountains_countries WHERE country_code = 'BG')
AND elevation >= ALL (SELECT elevation FROM peaks WHERE mountain_id = m.id)
ORDER BY elevation DESC;

SELECT DISTINCT mountain_range
FROM mountains m
WHERE m.id IN 
(SELECT mountain_id FROM mountains_countries WHERE country_code = 'BG')
AND m.id NOT IN (SELECT mountain_id FROM peaks);

SELECT mountain_range, IFNULL(peak_name, 'no info'), IFNULL(elevation, 0)
FROM mountains m LEFT JOIN peaks p ON m.id = p.mountain_id
WHERE m.id IN 
(SELECT mountain_id FROM mountains_countries WHERE country_code = 'BG')
AND elevation >= ALL (SELECT elevation FROM peaks WHERE mountain_id = m.id)
ORDER BY mountain_range;

(SELECT mountain_range AS name, 'mountain' AS type, MAX(elevation) AS info
FROM mountains m LEFT JOIN peaks p ON m.id = p.mountain_id
WHERE m.id IN 
(SELECT mountain_id FROM mountains_countries WHERE country_code = 'BG')
GROUP BY m.id)
UNION
(SELECT peak_name, 'peak', elevation
FROM peaks
WHERE mountain_id IN 
(SELECT mountain_id FROM mountains_countries WHERE country_code = 'BG'))
UNION
(SELECT river_name, 'river', length
FROM rivers
WHERE id IN (SELECT river_id FROM countries_rivers WHERE country_code = 'BG'))
ORDER BY name;