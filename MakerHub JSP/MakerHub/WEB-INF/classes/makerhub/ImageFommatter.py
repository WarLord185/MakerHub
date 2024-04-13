import os
import datetime
import mysql.connector

current_date = datetime.datetime.now()
formatted_date = current_date.strftime("%d-%m-%Y")
cnx = mysql.connector.connect(user='root', password='Admin@2023',
                              host='localhost',
                              database='makerhub')
cursor = cnx.cursor()
query = ("SELECT Space_Id FROM your_table")
cursor.execute(query)
rows = cursor.fetchall()
cursor.close()
cnx.close()
files = os.listdir()
for row in rows:
    space_id = row[0]
    for filename in files:
        if filename.endswith(".jpg"):
            new_filename = str(space_id) + "-" + formatted_date + ".jpg"
            os.rename(filename, new_filename)