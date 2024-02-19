-- Print the full description of the table first_table
SELECT CONCAT('Table: ', TABLE_NAME) AS 'Table',
       CONCAT('Create Table: ', TABLE_SCHEMA, '.', CREATE_STATEMENT) AS 'Create Table'
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'first_table';

