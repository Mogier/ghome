import telnetlib
import sys
import time
import parsing as p

#HOST = "134.214.106.23"
#PORT = 5000

HOST = "localhost"
PORT  = 1515

tn = telnetlib.Telnet()

try:
	tn.open(HOST, PORT)
except Exception, e:
	raise e


while(1):
	try:
		trames = tn.read_very_eager().split("A55A")	
	except Exception, e:
		raise e

	trames.pop(0)
	
	print trames
	p.parser.parse_liste(trames)
	print "---------------------------------------------------------------------"
	time.sleep(1)

tn.close()
	