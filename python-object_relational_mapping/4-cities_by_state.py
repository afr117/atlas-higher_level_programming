#!/usr/bin/python3
"""
Script that lists all cities from the database hbtn_0e_4_usa.
"""

import sys
import MySQLdb


def cities_by_state(username, password, database):
    try:
        # Connect to MySQL server
        db = MySQLdb.connect(host="localhost", port=3306,
                             user=username, passwd=password, db=database)
        cursor = db.cursor()

        # Execute SQL query
        query = ("SELECT cities.id, cities.name, states.name "
                 "FROM cities "
                 "JOIN states ON cities.state_id = states.id "
                 "ORDER BY cities.id ASC")
        cursor.execute(query)
        cities = cursor.fetchall()

        # Print results
        for city in cities:
            print(city)

        # Close cursor and database connection
        cursor.close()
        db.close()
    except MySQLdb.Error as e:
        print("MySQL Error:", e)
        sys.exit(1)


if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: {} <username> <password> <database>"
              .format(sys.argv[0]))
        sys.exit(1)

    username, password, database = sys.argv[1], sys.argv[2], sys.argv[3]
    cities_by_state(username, password, database)
