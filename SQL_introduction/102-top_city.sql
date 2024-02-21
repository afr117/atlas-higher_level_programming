-- Calculate the average temperature (Fahrenheit) for cities during July and August
-- Display the top 3 cities ordered by temperature (descending)

SELECT city, AVG(temperature) AS avg_temp
FROM temperatures
WHERE MONTH(date) IN (7, 8)
GROUP BY city
ORDER BY avg_temp DESC
LIMIT 3;
