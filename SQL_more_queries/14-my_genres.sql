-- Select the genre names of the show Dexter
SELECT
    tg.name
FROM
    tv_shows ts
JOIN
    tv_show_genres tsg ON ts.id = tsg.show_id
JOIN
    tv_genres tg ON tsg.genre_id = tg.id
WHERE
    ts.title = 'Dexter'
ORDER BY
    tg.name ASC;
