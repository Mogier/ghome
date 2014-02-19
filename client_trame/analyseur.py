#!/usr/bin/env python
# -*- coding: utf-8 -*-


typeswitch = ["060001"]
typepresence = ["070801"]
typetemp = ["070205"]

def analyse(learn,trame):
	if learn in typeswitch:
		print "capteur switch"
		anaswitch(trame)
	elif learn in typepresence:
		print "capteur presence"
		anapresence(trame)
	elif learn in typetemp:
		print "capteur de temperature"
		anatemp(trame)

def anaswitch(trame):
	print "capteur id :"+trame.id

	idProp = dbutils.getIdPropieteByLabel("Switch")
	idTimestamp = dbutils.createTimestamp(trame.timestamp)

	if trame.data[6:] == "09":
		dbutils.addRelever(idProp,idTimestamp,"ON")
		print "ON"
	elif trame.data[6:] == "08":
		dbutils.addRelever(idProp,idTimestamp,"OFF")
		print "OFF"

def anapresence(trame):
	print "capteur id :"+trame.id
	
	lux = (int(trame.data[4:6],16)*510 )/ 255.

	if int(trame.data[0:2],16)&2 == 2:
		gens = 1
	else:
		gens = 0

	idTimestamp = dbutils.createTimestamp(trame.timestamp)
	idPropLux = dbutils.getIdPropieteByLabel("Lux")
	idPropGens = dbutils.getIdPropieteByLabel("Gens")

	dbutils.addRelever(idPropLux,idTimestamp,lux)
	dbutils.addRelever(idPropGens,idTimestamp,gens)
	print valeurint

def anatemp(trame):
	temp = ((255 - int(trame.data[4:6],16) )* 40) / 255.

	idProp = dbutils.getIdPropieteByLabel("Celsius")
	idTimestamp = dbutils.createTimestamp(trame.timestamp)
	dbutils.addRelever(idProp,idTimestamp,temp)

	print "capteur id "+trame.id
	print "Temperature :"+str(temp)
