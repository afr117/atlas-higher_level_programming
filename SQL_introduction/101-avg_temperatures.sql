USE hbtn_0c_0;

SELECT city, AVG(temperature) as avg_temp
FROM first_table
GROUP BY city
ORDER BY avg_temp DESC;
