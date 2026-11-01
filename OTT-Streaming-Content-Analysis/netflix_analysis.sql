-- Query 1

SELECT type, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY type;


-- Query 2

SELECT release_year, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year
ORDER BY total_titles DESC
LIMIT 10;


-- Query 3

SELECT rating, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY rating
ORDER BY total_titles DESC
LIMIT 10;


-- Query 4

SELECT country, COUNT(*) AS total_titles
FROM netflix_titles
WHERE country != 'Unknown'
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;


-- Query 5

SELECT
    ROUND(AVG(CAST(REPLACE(duration, ' min', '') AS FLOAT)), 2)
    AS average_movie_duration
FROM netflix_titles
WHERE type = 'Movie'
AND duration LIKE '%min';


