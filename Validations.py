import re 
  

class Validations():
	# Make a regular expression 
	# for validating an Email 
	REG_EXPRESSION = r'^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$'
	SPECIAL_CHARS = r'[\\@_!#$%^&*()<>?/|}{~:\.]'


	def isEmail(self,email):
		if re.search(self.REG_EXPRESSION,email):
			return True
	
		return False



	def isPassword(self,password):
		if (re.search(self.SPECIAL_CHARS,password) and re.search(r"[a-z]",password) and re.search(r"[A-Z]",password) and re.search(r"[0-9]",password)):
			return True
		return False



	def isPhone(self,phone):
		if len(re.findall(r"\d",str(phone)))==10 :
			return True
		return False

validate = Validations()