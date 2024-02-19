--use a workaround to create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbtn_0c_0;

-- Create a dummy table only if the database was just created
CREATE TABLE IF NOT EXISTS hbtn_0c_0.dummy_table (id INT);

-- Drop the dummy table if it was created in this session
DROP TABLE IF EXISTS hbtn_0c_0.dummy_table;

