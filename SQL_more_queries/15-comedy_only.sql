-- Select the titles of all Comedy shows
SELECT
    ts.title
FROM
    tv_shows ts
JOIN
    tv_show_genres tsg ON ts.id = tsg.show_id
JOIN
    tv_genres tg ON tsg.genre_id = tg.id
WHERE
    tg.name = 'Comedy'
ORDER BY
    ts.title ASC;
