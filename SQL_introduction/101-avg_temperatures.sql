USE hbtn_0c_0;

CREATE TABLE IF NOT EXISTS `first_table` (
  `city` varchar(256) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `temperature` int(11) DEFAULT NULL
);

INSERT INTO `first_table` (city, state, year, month, temperature)
SELECT city, state, year, month, value
FROM temperatures;

SELECT city, AVG(temperature) as avg_temp
FROM first_table
GROUP BY city
ORDER BY avg_temp DESC;
