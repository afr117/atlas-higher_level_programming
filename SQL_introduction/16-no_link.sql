-- Use the hbtn_0c_0 database
USE hbtn_0c_0;

-- List all records with a name value, ordered by descending score
SELECT score, name
FROM second_table
WHERE name IS NOT NULL
ORDER BY score DESC;

