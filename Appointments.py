from Database import mycursor,printCursor,mydb


class Appointments:
	def listAppointments(self):
		sql = "select appointments.sno,notes.content,sales_status.action,geofence.geofence_name,appointments.meeting_with,notes.updated from appointments JOIN notes on appointments.note_id=notes.sno join sales_status on appointments.sales_status=sales_status.sales_id JOIN geofence on appointments.geo_id = geofence.geofence_id"
		mycursor.execute((sql))
		myresult = mycursor.fetchall()
		return myresult


appointment = Appointments()