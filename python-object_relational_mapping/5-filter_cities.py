#!/usr/bin/python3
"""
Script that lists all cities from the database hbtn_0e_4_usa
"""

import MySQLdb
import sys

if __name__ == "__main__":
    if len(sys.argv) != 5:
        print("Usage: {} username password database_name state_name".format(sys.argv[0]))
        sys.exit(1)

    username, password, database_name, state_name = sys.argv[1:5]

    try:
        db = MySQLdb.connect(host="localhost",
                             port=3306,
                             user=username,
                             passwd=password,
                             db=database_name)

        cur = db.cursor()
        cur.execute("SELECT cities.name FROM cities \
                    INNER JOIN states ON cities.state_id = states.id \
                    WHERE states.name = %s ORDER BY cities.id ASC", (state_name,))

        rows = cur.fetchall()
        cities = [row[0] for row in rows]
        print(", ".join(cities))

        cur.close()
        db.close()
    except MySQLdb.Error as e:
        print("MySQLdb Error:", e)
        sys.exit(1)
