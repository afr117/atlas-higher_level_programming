-- Calculate the average temperature (Fahrenheit) by city and order by temperature (descending)

SELECT city, AVG(temperature) AS avg_temp
FROM table_name -- Replace table_name with the actual name of your table
WHERE MONTH(date) IN (7, 8) -- Filter records for July and August
GROUP BY city
ORDER BY avg_temp DESC;
