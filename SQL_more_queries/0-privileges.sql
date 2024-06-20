
-- Check if user_0d_1 exists, create if not
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost';
-- Grant all privileges to user_0d_1
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost';

-- Check if user_0d_2 exists, create if not
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost';
-- Grant all privileges to user_0d_2
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_2'@'localhost';

-- List all privileges for user_0d_1
SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- List all privileges for user_0d_2
SHOW GRANTS FOR 'user_0d_2'@'localhost';
