from Database import mycursor,printCursor,mydb
from Notes import notes

class Appointments:
	def listAppointments(self):
		sql = "select appointments.sno,notes.content,sales_status.action,geofence.geofence_name,appointments.meeting_with,notes.updated,appointments.time from appointments JOIN notes on appointments.note_id=notes.sno join sales_status on appointments.sales_status=sales_status.sales_id JOIN geofence on appointments.geo_id = geofence.geofence_id"
		mycursor.execute((sql))
		myresult = mycursor.fetchall()
		return myresult
	def insertAppointment(self,eid,content,geoid,meetingwith,time):
		lastid= notes.insertNotes(eid,content)
		sql = "insert into appointments(note_id,geo_id,sales_status,created_by,e_id,meeting_with,time) values(%s,%s,4,%s,%s,%s,%s)"
		return (sql %(eid,lastid,geoid,eid,meetingwith,time) )
		mycursor.execute(("insert into appointments(note_id,geo_id,sales_status,created_by,e_id,meeting_with,time) values(%s,%s,4,%s,%s,%s,%s)",(eid,lastid,geoid,eid,meetingwith,time)))
		mycursor.commit()
		return "done"
	def getAppointment(self,appointment_id):
		sql = "select appointments.sno,notes.content,sales_status.action,geofence.geofence_name,appointments.meeting_with,notes.updated,appointments.time from appointments JOIN notes on appointments.note_id=notes.sno join sales_status on appointments.sales_status=sales_status.sales_id JOIN geofence on appointments.geo_id = geofence.geofence_id  where appointments.sno= %s "
		# return (sql % appointment_id)
		mycursor.execute(sql % appointment_id)	
		myresult = mycursor.fetchall()
		return myresult	



appointment = Appointments()