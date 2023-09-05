import sqlite3
import json
with open('C:\Users\Ravi\Documents\GitHub\Dart\Fluttter\Chapter 5\Login App\login_app\lib\jsondata.json', 'r') as json_file:
    data = json.load(json_file)

# Connect to the database (a new file will be created if it doesn't exist)
conn = sqlite3.connect('mydatabase.db')

# Create a cursor object to execute SQL commands
cursor = conn.cursor()

# Create a table to store the JSON data
cursor.execute('''
    CREATE TABLE IF NOT EXISTS mytable (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        age INTEGER
    )
''')

# Commit the changes to the database
conn.commit()

for item in data:
    cursor.execute('''
        INSERT INTO mytable (name, age)
        VALUES (?, ?)
    ''', (item['name'], item['age']))

# Commit the changes to the database

cursor.execute('SELECT * FROM mytable')  # Replace 'mytable' with your table name
rows = cursor.fetchall()  # Fetch all rows
for row in rows:
    print(row)


conn.commit()
conn.close()
