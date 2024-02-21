-- Calculate the average temperature by city and order by temperature (descending)
SELECT city, AVG(temperature) AS avg_temp -- Select city and calculate average temperature
FROM temperatures -- From the temperatures table
GROUP BY city -- Group results by city
ORDER BY avg_temp DESC; -- Order by average temperature descending
