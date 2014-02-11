
typeswitch = [["06","0","1"]]
typepresence = [["07","8","1"]]
typetemp = [["07","2","5"]]

def analyse(learn,trame):
	if learn in typeswitch:
		anaswitch(trame)
	elif learn in typepresence:
		anapresence(trame)
	elif learn in typetemp:
		anatemp(trame)

def anaswitch(trame):
	print "capteur id :"+trame.id+" stocke : "+str(int(trame.id,16))

	if trame.data[6:] == "09":
		print "ON"
	elif trame.data[6:] == "08":
		print "OFF"

def anapresence(trame):
	print "capteur id :"+trame.id+" stocke : "+str(int(trame.id,16))
	
	valeurint = (int(trame.data[4:6],16)*40.)/255

	print valeurint

def anatemp(trame):
	print "bite"	
