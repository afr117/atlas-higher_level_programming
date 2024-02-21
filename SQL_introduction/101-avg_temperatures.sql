USE hbtn_0c_0;

SELECT city, AVG(temperature) as avg_temp
FROM table_name
GROUP BY city
ORDER BY avg_temp DESC;
