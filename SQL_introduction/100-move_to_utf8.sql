-- Change to the hbtn_0c_0 database
USE hbtn_0c_0;

-- Alter the database character set and collation to utf8mb4
ALTER DATABASE hbtn_0c_0 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Alter the table character set and collation to utf8mb4
ALTER TABLE first_table CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Modify the name column in the first_table to use utf8mb4 character set and collation
ALTER TABLE first_table MODIFY name VARCHAR(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL;
