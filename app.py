from flask import Flask, request, url_for, session
import json
from Manager import manager
from Login import loginUser
from Geofence import geofence
from Notes import notes
# from Manager import dashbord
from Helpers import dateTimeEncoder
# from flask_mail import Mail , Message
from Appointments import appointment



app = Flask(__name__)

# mail_settings = {
#     "MAIL_SERVER": 'smtp.gmail.com',
#     "MAIL_PORT": 465,
#     "MAIL_USE_TLS": False,
#     "MAIL_USE_SSL": True,
#     "MAIL_USERNAME":  'test.locofi@gmail.com',
#     "MAIL_PASSWORD": 'locofi123' 
# }

# mail = Mail(app)

app.secret_key ='itsmysecretkey'
#----LOGIN
@app.route('/session')
def userSession():
    return loginUser.userSession()


@app.route('/login', methods = ['POST'])
def login():

    email = request.args.get('email')
    password = request.args.get('password')

    return loginUser.login(email,password)

@app.route('/logout')
def logout():
    return loginUser.logout() 

#----MANAGER
@app.route('/')
def dashboard():
    x = manager.dashbord(1)
    data= json.dumps(x ,default=dateTimeEncoder)
    return data

@app.route('/updateEmployeeDetails',methods=['POST'])
def updateEmployeeDetails():
    vals = request.args.to_dict()
    eid = 1    
    return manager.updateEmployeeDetails(vals['f_name'],vals['l_name'],vals['email'],eid)

#----NOTES
@app.route('/retrieveNotes',methods=['GET'])
def retrieveNotes():
    value=request.args.to_dict()
    return json.dumps(notes.retrieveNotes(value['sno'],value['e_id']))
        
@app.route('/insertNotes',methods=['GET','POST'])
def insertNotes():
    value=request.args.to_dict()
    return json.dumps(notes.insertNotes(value['sno'],value['updated'],value['created'],value['e_id'],value['content']))

@app.route('/updateNotes',methods=['GET','POST'])
def updateNotes():
    value=request.args.to_dict()
    return json.dumps(notes.updateNotes(value['updated'],value['content'],value['sno'],value['e_id']))

@app.route('/deleteNotes',methods=['GET','POST'])
def deleteNotes():
    val=request.args.to_dict()
    return json.dumps(notes.deleteNotes(val['sno'],val['e_id']))

    
#----GEOFENCE
@app.route('/pointInGeo',methods=['POST'])
def pointInGeo():
    longitude = request.args.get('long')
    latitude = request.args.get('lat')
    return geofence.getData(int(longitude),int(latitude))

if __name__ == '__main__':
   app.run(debug=True)

@app.route("/appointments")
def appointments():
	return json.dumps(appointment.listAppointments())


   
# @app.route("/fire-employee",methods=["POST"])
# def fireEmployee():
#     eid = request.args.get('eid')
#     return manager.fireEmployee(eid)

# @app.route('/reset', methods = ['POST'])
# def reset():
#   email = request.args.get('email')
#   token = loginUser.reset(email)
#   link = url_for('resetPasswordWithToken', token = token, _external =True)
#   msg = Message(  subject="password reset",
#                   sender=app.config.get("MAIL_USERNAME"),
#                   recipients=[email], 
#                   body="link for password change is : {}".format(link) 
#                   )

#   mail.send(msg)
#   return {'status':200,"message":'mail sent'}


# @app.route('/reset-password/<token>')
# def resetPasswordWithToken(token):
#   return loginUser.resetPasswordWithToken(token)
