-- Use the hbtn_0c_0 database
USE hbtn_0c_0;

-- List the number of records with the same score
SELECT score, COUNT(*) AS number
FROM second_table
GROUP BY score
ORDER BY number DESC;

