from flask import Flask,request
import json
import mysql.connector
from datetime import datetime
from notes import notes

mydb=mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="locofi"
)
app = Flask(__name__)

mycursor=mydb.cursor()

@app.route('/retrieveNotes',methods=['GET'])
def retrieveNotes():
    value=request.args.to_dict()
    return notes.retrieveNotes(value['sno'],value['e_id'])
        
@app.route('/insertNotes',methods=['GET','POST'])
def insertNotes():
    value=request.args.to_dict()
    return notes.insertNotes(value['sno'],value['updated'],value['created'],value['e_id'],value['content'])

@app.route('/updateNotes',methods=['GET','POST'])
def updateNotes():
    value=request.args.to_dict()
    return notes.updateNotes(value['updated'],value['content'],value['sno'],value['e_id'])


@app.route('/deleteNotes',methods=['GET','POST'])
def deleteNotes():
    val=request.args.to_dict()
    return notes.deleteNotes(val['sno'],val['e_id'])

if __name__ == '__main__':
   app.run(debug=True)
   
