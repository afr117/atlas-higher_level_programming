-- List all genres and the number of shows linked to each
SELECT
    g.name AS genre,
    COUNT(DISTINCT tsg.show_id) AS number_of_shows
FROM
    tv_genres g
JOIN
    tv_show_genres tsg ON g.id = tsg.genre_id
GROUP BY
    g.name
ORDER BY
    number_of_shows DESC;

