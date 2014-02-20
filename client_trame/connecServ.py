#!/usr/bin/env python
# -*- coding: utf-8 -*-

import telnetlib
import sys
import time
import parsing as p
import dbutils
import analyseur as a


def traitementLearn(trame):

	if not dbutils.getCapteur(trame.id):
		print "nouveau capteur"
		dbutils.addLearn(trame.analyseLearn(),trame.id)
	
def traitement(trame):
	if trame.isLearn():
		print "trame de learn"
		print trame.analyseLearn()
		traitementLearn(trame)
	else:
		print "trame de données"
		if dbutils.getCapteur(trame.id):
			print "capteur dans la base"
			a.analyse(dbutils.getlearn(trame.id),trame)

def main():
	
	HOST = "134.214.106.23"
	PORT = 5000

	#HOST = "localhost"
	#PORT  = 1515

	tn = telnetlib.Telnet()

	try:
		tn.open(HOST, PORT)
	except Exception, e:
		raise e


	while(1):

		try:
			tramesbrutes = tn.read_very_eager().split("A55A")   
		except Exception, e:
			raise e

		tramesbrutes.pop(0)
		
		print tramesbrutes
		trames = p.parse_liste(tramesbrutes)
		for trame in trames:
			traitement(trame)
		print "---------------------------------------------------------------------"
		time.sleep(1)

	tn.close()

main()