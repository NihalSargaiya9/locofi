from flask import Flask , request,jsonify
import json
from Database import mycursor
from Helpers import decimalEncoder

class Geofence():

	def getData(self,longitude,latitude):
		# geofences=[ [[6,6],[7,6],[7,7],[7,6]],
		# 	[[2,3],[2,5],[6,5],[6,3]] ]
		geofences=[]
		for gid in range(1,5):
			mycursor.execute('SELECT latitude,longitude FROM geo_coordinates where geo_id=%s',(gid))

			data = mycursor.fetchall()

			geofences.append(data)

		# x = request.args.get('long')
		# y = request.args.get('lat')

		gid = self.pointInPoly(longitude,latitude,geofences)

		return jsonify({"data":gid,"status":200})

	def pointInPoly(self,x,y,geofences):
		result=[]
		for index,vertices in enumerate(geofences): 
			n= len(vertices)
			p1_x,p1_y = vertices[0]

			for i in range(n+1):
				p2_x,p2_y = vertices[i%n]
				if y > min(p1_y,p2_y) and y <= max(p1_y,p2_y):
						if x <= max(p1_x,p2_x):
							# calculate intersection
							if p1_y != p2_y :
								xi = (y - p1_y)*(p1_x - p2_x)/(p1_y - p2_y) + p1_x
							if x <= xi or p1_x == p2_x:
								result.append(1)
								# inside = True
				p1_x , p1_y =p2_x,p2_y
				

			if sum(result)%2 != 0:
				return index+1

		return -1

geofence = Geofence()