import mysql.connector

db_connection = mysql.connector.connect(
    host="127.0.0.1",  # Use 127.0.0.1 or your container service name
    user="root",
    passwd="mysql",
)

db_cursor = db_connection.cursor()
db_cursor.execute("USE test_db")

# Run only the insert query
query = 'UPDATE Student SET name = "sunny" WHERE name = "Rajput"'

db_cursor.execute(query)
db_connection.commit()

print("Update Student data successful")