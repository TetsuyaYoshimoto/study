
import pymssql

conn = pymssql.connect(server='rengou.database.windows.net', user='rengou@rengou.database.windows.net', password='matudakouiti2016#', database='data1')

cursor = conn.cursor()
row = cursor.fetchone()
while row:
    print str(row[0]) + " " + str(row[1]) + " " + str(row[2])
    row = cursor.fetchone()

