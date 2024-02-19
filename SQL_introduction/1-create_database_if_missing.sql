-- Create a stored procedure to create the database if it doesn't exist
DELIMITER //

CREATE PROCEDURE create_database_if_missing()
BEGIN
    DECLARE db_count INT;

    -- Check if the database exists
    SELECT COUNT(*)
    INTO db_count
    FROM information_schema.SCHEMATA
    WHERE SCHEMA_NAME = 'hbtn_0c_0';

    -- If the database doesn't exist, create it
    IF db_count = 0 THEN
        CREATE DATABASE hbtn_0c_0;
    END IF;
END //

DELIMITER ;

-- Call the stored procedure to create the database if it doesn't exist
CALL create_database_if_missing();

