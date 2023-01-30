SELECT Top 20 name, genre, year, rating, gross
FROM movies$
WHERE [year]  BETWEEN '1980' AND '1990'
AND genre IS NOT NULL
AND year IS NOT NULL
AND rating IS NOT NULL
AND gross IS NOT NULL
ORDER BY gross DESC

