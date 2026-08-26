import mysql.connector

db_connection = mysql.connector.connect(
    host="127.0.0.1",  # Use 127.0.0.1 or your container service name
    user="root",
    passwd="mysql",
)

# print(db_connection)


# Initializing the Cursor
db_cursor = db_connection.cursor()

# # Creating the Database
db_cursor.execute("CREATE DATABASE test_db")

query = """
            USE test_db;
            CREATE TABLE Student
            (
                name varchar(50),
                roll varchar(4)
            )
"""

db_cursor.execute(query)

print("Create table successful")