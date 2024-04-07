import os
import datetime
import mysql.connector

# Get the current date
current_date = datetime.datetime.now()

# Format the date
formatted_date = current_date.strftime("%d-%m-%Y")

# Establish a database connection
cnx = mysql.connector.connect(user='root', password='Admin@2023',
                              host='localhost',
                              database='makerhub')

# Create a cursor object
cursor = cnx.cursor()

# Execute the query
query = ("SELECT Space_Id FROM your_table")
cursor.execute(query)

# Fetch all the rows
rows = cursor.fetchall()

# Close the cursor and connection
cursor.close()
cnx.close()

# Get the list of all files in the directory
files = os.listdir()

# Loop through all the rows
for row in rows:
    # Get the Space_Id
    space_id = row[0]

    # Loop through all the files
    for filename in files:
        # Check if the file is a .jpg file
        if filename.endswith(".jpg"):
            # Construct the new filename
            new_filename = str(space_id) + "-" + formatted_date + ".jpg"
            
            # Rename the file
            os.rename(filename, new_filename)
