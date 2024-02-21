-- Calculate the average temperature (Fahrenheit) by city and order by temperature (descending)

-- Select the city and calculate the average temperature for each city
SELECT city, AVG(temperature) AS avg_temp
FROM hbtn_0c_0
GROUP BY city
ORDER BY avg_temp DESC; -- Order the results by average temperature in descending order

