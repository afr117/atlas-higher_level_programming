-- List all genres and the number of shows linked to each
ELECT
    tg.name AS genre,
    COUNT(tsg.show_id) AS number_of_shows
FROM
    tv_genres tg
JOIN
    tv_show_genres tsg ON tg.id = tsg.genre_id
GROUP BY
    tg.name
ORDER BY
    number_of_shows DESC, tg.name ASC;

