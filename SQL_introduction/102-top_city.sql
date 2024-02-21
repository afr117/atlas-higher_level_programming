-- Calculate the average temperature (Fahrenheit) for cities during July and August
-- Display the top 3 cities ordered by temperature (descending)

-- Select the city and calculate the average temperature for each city during July and August
SELECT city, AVG(temperature) AS avg_temp
FROM first_table -- Replace table_name with the actual name of your table
WHERE MONTH(date) IN (7, 8) -- Filter records for July and August
GROUP BY city
ORDER BY avg_temp DESC -- Order the results by average temperature in descending order
LIMIT 3; -- Limit the output to the top 3 cities
