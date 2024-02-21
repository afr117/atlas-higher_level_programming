USE hbtn_0c_0;

-- Convert table charset and collation
ALTER TABLE first_table
    CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Convert field charset and collation
ALTER TABLE first_table
    MODIFY COLUMN name VARCHAR(256)
    CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

