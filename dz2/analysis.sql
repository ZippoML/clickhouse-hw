--запрос выводит топ-10 стран с самыми дорогими винами.
SELECT 
	country,
	max(price) as max_price
FROM testdb.winemag
WHERE 
	trim(country) is not NULL and country!=''
	AND price is not NULL 
GROUP  BY country
ORDER  BY max_price desc
LIMIT 10
;
--Корреляция между ценой и оценкой дегустатора
SELECT 
	country,
	CORR(price,points) AS country_corr
FROM testdb.winemag
WHERE 
    country IS NOT NULL and country!=''
    AND price IS NOT NULL
    AND points IS NOT NULL
GROUP BY 
    country
ORDER BY 
    country_corr DESC;

SELECT 
	CORR(price,points) as total_corr
FROM testdb.winemag
WHERE 
    country IS NOT NULL and country!=''
    AND price IS NOT NULL
    AND points IS NOT NULL
