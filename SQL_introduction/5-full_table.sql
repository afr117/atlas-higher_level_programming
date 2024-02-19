e the specified database
USE hbtn_0c_0;

-- Query the information schema to retrieve table structure
SELECT CONCAT('Table', '   ', 'Create Table') AS 'Table   Create Table'
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table';

