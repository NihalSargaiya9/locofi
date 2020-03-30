import mysql.connector
from Database import mycursor,mydb
from datetime import datetime

# mydb=mysql.connector.connect(
#   host="localhost",
#   user="root",
#   passwd="",
#   database="locofi"
# )
# mycursor=mydb.cursor()

now=datetime.now()
Formatted_Date=now.strftime('%Y-%m-%d %H:%M:%S')

class Notes:
    def insertNotes(self,e_id,content):
        mycursor.execute("INSERT INTO notes (e_id,content)"
                         "values(%s,%s)",(e_id,content))

        mydb.commit()
        if(mycursor.rowcount):
            return int(mycursor.lastrowid)
        return {"status":0,"message":"0 rows Inserted","data":"Failure"}


    def retrieveNotes(self,sno,e_id):
        mycursor.execute("SELECT content From notes WHERE sno=%s AND e_id=%s",(sno,e_id))
        myresult = mycursor.fetchone()
        return {"data":myresult,"status":200}

    def updateNotes(self,content,sno):
        mycursor.execute("UPDATE notes SET updated=%s,content=%s WHERE sno=%s",(Formatted_Date,content,sno))
        mydb.commit()
        # if(mycursor.rowcount):
        return {"status":200,"message":"","data":"Update Success"}
        # return {"status":0,"message":"0 rows Updated","data":"Failure"}


    def deleteNotes(self,sno,e_id):
        mycursor.execute("DELETE FROM notes WHERE sno=%s AND e_id=%s",(sno,e_id))
        mydb.commit()
        # if(mycursor.rowcount):
        return {"status":200,"message":"","data":"Deleted Successfully"}
        # return {"status":0,"message":"0 rows Deleted","data":"Failure"}

        
notes=Notes()


