import mysql.connector

db_connection = mysql.connector.connect(
    host="127.0.0.1",  # Use 127.0.0.1 or your container service name
    user="root",
    passwd="mysql",
)

db_cursor = db_connection.cursor()
db_cursor.execute("USE test_db")

# Run only the insert query
query = 'INSERT INTO Student(name, roll) VALUES("Kali", "101")'

db_cursor.execute(query)
db_connection.commit()

print("Insert Student data successful")