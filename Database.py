import pymysql

def printCursor(cursor):
    for x in cursor:
        print(x)

mydb = pymysql.connect(host="localhost", user="root",password="" ,database="new_locofi")

mycursor = mydb.cursor()




