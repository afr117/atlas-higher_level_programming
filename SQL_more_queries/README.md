# SQL More Queries

This project is designed to practice advanced SQL queries using MySQL. The goal of the project is to manage users and their privileges on a MySQL server.

## Requirements

- Allowed editors: `vi`, `vim`, `emacs`
- All files will be executed on Ubuntu 20.04 LTS using MySQL 8.0 (version 8.0.25)
- All files should end with a new line
- All SQL queries should have a comment just before the query
- All SQL files should start with a comment describing the task
- All SQL keywords should be in uppercase (SELECT, WHERE, etc.)
- A `README.md` file at the root of the project folder is mandatory
- The length of the files will be tested using `wc`

## Install MySQL 8.0 on Ubuntu 20.04 LTS

If you are using the provided sandbox, skip this section.

1. Update package information:
    ```bash
    sudo apt update
    ```
2. Install MySQL server:
    ```bash
    sudo apt install mysql-server
    ```
3. Verify the MySQL installation:
    ```bash
    mysql --version
    ```

## Connect to MySQL Server

1. Start MySQL service:
    ```bash
    sudo service mysql start
    ```
2. Connect to MySQL server:
    ```bash
    sudo mysql
    ```

## Import SQL Dump

To import an SQL dump file into a database:

1. Create a new database:
    ```bash
    echo "CREATE DATABASE hbtn_0d_tvshows;" | mysql -uroot -p
    ```
2. Import the SQL dump:
    ```bash
    curl "https://s3.eu-west-3.amazonaws.com/hbtn.intranet.project.files/holbertonschool-higher-level_programming+/274/hbtn_0d_tvshows.sql" -s -o hbtn_0d_tvshows.sql
    mysql -hlocalhost -uroot -p hbtn_0d_tvshows < hbtn_0d_tvshows.sql
    ```

## Task: My Privileges!

### Description

Write a script that lists all privileges of the MySQL users `user_0d_1` and `user_0d_2` on your server (in localhost).

### Script: `0-privileges.sql`

```sql
-- 0-privileges.sql
-- Lists all privileges of MySQL users user_0d_1 and user_0d_2 on localhost

-- Attempt to show privileges for user_0d_1
SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- Attempt to show privileges for user_0d_2
SHOW GRANTS FOR 'user_0d_2'@'localhost';

