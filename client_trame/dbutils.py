#!/usr/bin/env python
# -*- coding: utf-8 -*-

import MySQLdb

HOST = "localhost"
USER = "root"
psswd = "truc"
BASE = "GeHome"


def addRelever(idProp,idTimestamp,valeur):
	db = connect_db()

	sql = "INSERT INTO Relever (id_Propriete,id_DateHeure,valeur) VALUES ('%d','%d','%s')"%(idProp,idTimestamp,valeur)

	try:
		curs = db.cursor()
		curs.execute(sql)
		db.commit()
	except Exception, e:
		print e
		db.rollback()
		
def getIdPropieteByLabel(label):
	db = connect_db()
	sql = "SELECT Propriete.id FROM Propriete JOIN TypePropriete WHERE Propriete.id_TypePropriete = TypePropriete.id AND TypePropriete.label = '%s'"%label
	print sql
	try:
		curs = db.cursor()
		curs.execute(sql)
		res = curs.fetchone()
		print "lol"
	except Exception, e:
		print e

	return res[0]
def createTimestamp(timestamp):
	addTimestamp(timestamp)
	return getTimestamp(timestamp)

def addTimestamp(timestamp):
	db = connect_db()

	sql = "INSERT INTO DateHeure (dateReleve) VALUES ('%s')" %timestamp

	try:
		curs = db.cursor()
		curs.execute(sql)
		db.commit()
	except Exception, e:
		print e
		db.rollback()

def getTimestamp(timestamp):
	db = connect_db()

	sql = "SELECT id FROM DateHeure WHERE dateReleve='%s'" % timestamp

	try:
		curs = db.cursor()
		curs.execute(sql)
		res = curs.fetchone()
	except Exception, e:
		print e

	return res[0]
def getidTypePropriete(label):
	db = connect_db()

	sql = "SELECT id FROM TypePropriete WHERE label='%s'" %label

	try:
		curs = db.cursor()
		curs.execute(sql)
		res = curs.fetchone()
	except Exception, e:
		print e

	return res[0]
	
def getlearn(id):
	db = connect_db()

	sql = "SELECT trameLearn FROM Capteur WHERE idPhysique='%s'"% id
	#print sql   
	try:
		curs = db.cursor()
		curs.execute(sql)
		res = curs.fetchone()
	except Exception, e:
		print e

	
	return res[0]

def getCapteur(id):
	 db = connect_db()

	 sql = "SELECT * FROM Capteur WHERE idPhysique='%s'"% id
	 #print sql
	 try:
	 	curs = db.cursor()
	 	curs.execute(sql)
	 	res = curs.fetchone()
	 except Exception, e:
	 	print e

	 return res

def addLearn(learn,id):
	print "ajout de la trame de learn dans TrameLearn"
	db = connect_db()

	sql = "INSERT INTO TrameLearn (trame,idPhysiqueCapteur) VALUES ('%s','%s')"%(learn[0]+learn[1]+learn[2],id)
	#print sql
	try:
		curs = db.cursor()
		curs.execute(sql)
		db.commit()
	except Exception,e:
		print e
		db.rollback()
def connect_db():
	db = MySQLdb.connect(HOST,USER,psswd,BASE)
	return db
