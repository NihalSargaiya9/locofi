from Database import mycursor,printCursor,mydb
from Validations import validate

class Manager() :
    def updateEmployeeDetails(self,f_name,l_name,email,eid):
        if(validate.isEmail(email)):
            sql = "update employee set f_name=%s ,l_name=%s,email=%s where sno=%s"
            mycursor.execute(sql,(f_name,l_name,email,eid))
            mydb.commit()
            if(mycursor.rowcount):
                return {"status":200,"message":"","data":"Update Sucess"}
            return {"status":0,"message":"0 rows Updated","data":"Failure"}
    
    
    
    def dashbord(self,eid):
        sql = "select * from employee where managed_by= %s "
        mycursor.execute((sql % eid))
        myresult = mycursor.fetchall()
        return myresult

    def fireEmployee(self,eid):
        sql = "delete from employee where sno= %s "
        mycursor.execute((sql % eid))
        
        if mycursor.rowcount:
            return {"status":200,"message":"","data":"Employee Fired"}

        return {"status":0,"message":"0 rows Updated","data":"Unable to Fire Employee"}        




manager = Manager()