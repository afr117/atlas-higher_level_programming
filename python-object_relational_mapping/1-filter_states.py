#!/usr/bin/python3
"""
Script that lists all states with a name starting with N (upper N)
from the database hbtn_0e_0_usa
"""

import sys
import MySQLdb


def filter_states(username, password, database):
    try:
        # Connect to MySQL server
        db = MySQLdb.connect(host="localhost",
                             port=3306,
                             user=username,
                             passwd=password,
                             db=database)
        cursor = db.cursor()

        # Execute SQL query
        cursor.execute("SELECT * FROM states WHERE name LIKE 'N%' ORDER BY id ASC")
        states = cursor.fetchall()

        # Print results
        for state in states:
            print(state)

        # Close cursor and database connection
        cursor.close()
        db.close()
    except MySQLdb.Error as e:
        print("MySQL Error:", e)
        sys.exit(1)


if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: {} <username> <password> <database>".format(sys.argv[0]))
        sys.exit(1)

    username, password, database = sys.argv[1], sys.argv[2], sys.argv[3]
    filter_states(username, password, database)
