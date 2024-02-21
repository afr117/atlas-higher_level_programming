-- Calculate the average temperature (Fahrenheit) by city and order by temperature (descending)

-- Select the city and calculate the average temperature for each city
SELECT city, AVG(temperature) AS avg_temp
FROM table_name -- Replace table_name with the actual name of your table
GROUP BY city
ORDER BY avg_temp DESC; -- Order the results by average temperature in descending order

