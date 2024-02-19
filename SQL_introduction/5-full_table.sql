-- Use the hbtn_0c_0 database
USE hbtn_0c_0;

-- Create the first_table if it doesn't exist
CREATE TABLE IF NOT EXISTS first_table (
	    id INT,
	    name VARCHAR(256)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

