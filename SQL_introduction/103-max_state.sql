-- Select the state and the maximum temperature for each state
SELECT state, MAX(temperature) AS max_temp
-- Specify the name of the table containing the temperature data
FROM table_name
-- Group the records by state
GROUP BY state
-- Order the results by state name
ORDER BY state;

