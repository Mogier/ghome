import socket
maSocket = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
maSocket.connect(('134.214.106.23',5000))
#monActionneur = Actionneur(adresse IP : string, num de port : int, num de prise : int)
class Actionneur(object):
	numPrise = 0
	def __init__(self, numPrise):
		self.numPrise = numPrise
	def ajouterPlage(self):
		chkSum = hex(127+self.numPrise)
		chkSum = chkSum[2::]
		maSocket.send('A55AAB18FF9F1E0'+str(self.numPrise)+'0000000000'+chkSum)
	def ordreMarche(self):
		self.ajouterPlage()
		chkSum = hex(172+self.numPrise)
		chkSum = chkSum[2::]
		maSocket.send('A55A6B0550000000FF9F1E0'+str(self.numPrise)+'30'+chkSum)
	def ordreArret(self):
		self.ajouterPlage()
		chkSum = hex(204+self.numPrise)
		chkSum = chkSum[2::]
		maSocket.send('A55A6B0570000000FF9F1E0'+str(self.numPrise)+'30'+chkSum)


def OnOff(numPrise, val_bool):
		Actio=Actionneur(numPrise)
		if val_bool == 0:
			Actio.ordreArret()
		else:
			Actio.ordreMarche()



import serial

ser = serial.Serial('COM4',9600)#connection au port serie de l'arduino

tableau = [int(ser.readline()),int(ser.readline()),int(ser.readline()),int(ser.readline())]
pasDistance = 30

while True:  #mettre autre condition, un compteur par exemple
	temptableauMoins = tableau[0]-pasDistance
	temptableauPlus = tableau[0]+pasDistance
	if temptableauMoins > tableau[1] and temptableauMoins > tableau[2] and temptableauMoins > tableau[3]:
		#print '---'
		OnOff(6,0)
	elif temptableauPlus < tableau[1] and  temptableauPlus < tableau[2] and temptableauPlus < tableau[3]:
		#print '+++'
		OnOff(6,0)
	tableau.pop(0)
	x = int(ser.readline())          #lecture d'un octet
	tableau.append(x)

ser.close()
