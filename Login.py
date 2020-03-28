from flask import session,jsonify
from Database import mycursor
from hashlib import md5
# from itsdangerous import URLSafeTimedSerializer, SignatureExpired


# s = URLSafeTimedSerializer('Thisisasecret!')
class Login:
	def userSession(self):
		if 'loggedin' in session:
			return jsonify({
				"status":200,
				"user" : session["user"]
				})
	
		return jsonify({"status":0,
						"user" : None})

	def login(self,email,password):
		if email and password:

			mycursor.execute("SELECT sno,f_name,l_name,password FROM employee WHERE email = %s", (email))
			emp = mycursor.fetchone()

			if not mycursor.rowcount :
				return jsonify({"status":0,"message":"Not found"})

			name = emp[1]
			hashed_password = emp[3]
			
			if md5((password).encode('utf-8')).hexdigest() == hashed_password:
				session['loggedin'] = True
				session['emp_id'] = emp[0]
				session['user'] = name
				return jsonify({"status":200, "user":name})

			else:
				return jsonify({"status":0,"message":"Failed"})

		return jsonify({'status':0, 'message':'invalid'})

	def logout(self):
		# remove session 
		session.pop('loggedin',None)
		session.pop('emp_id',None)
		session.pop('user')
		return jsonify({"status":200, "message":"user logged out"})

	# def reset(self,email):
	# 		mycursor.execute("SELECT * FROM employee WHERE email = %s",(email))
	# 		emp = mycursor.fetchone()
			
	# 		if not mycursor.rowcount :
	# 			return jsonify({"status":0,"message":"Not Found"})
	# 		emp_id = emp[0]
			
	# 		token = s.dumps([emp_id,email], salt='email-confirm')		
	# 		return token
 

	# def resetPasswordWithToken(self,token):
	# 	try:
	# 		emp = s.loads(token, salt='email-confirm', max_age=3600)
	# 		emp_id = emp[0]
	# 		email = emp[1]
			
	# 		mycursor.execute('SELECT * FROM employee WHERE sno = %s and email = %s;',(emp_id,email))
	# 		row = mycursor.fetchone()
			
	# 		if row == None:
	# 			return jsonify({"status":0,"message":"Not Found"})
			
	# 		return jsonify({"status":200,"email":email})
		
	# 	except SignatureExpired:
	# 		return jsonify({"status":0,"message":"expired"})




loginUser = Login()