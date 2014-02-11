import MySQLdb

HOST = "localhost"
USER = "root"
psswd = "truc"
BASE = "geHome"

def getlearn(id):
	db = connect_db()

	sql = "SELECT trameLearn FROM Capteur WHERE id='%d'"% id

	try:
		curs = db.cursor()
		curs.execute(sql)
		res = curs.fetchone()
	except Exception, e:
		print e

	print res

	return [res[0:2],res[2:4],res[4:6]]

def connect_db():
	#MySQLdb.connect("host","user","psswd","base")
	db = MySQLdb.connect(HOST,USER,psswd,BASE)
	return db

def close_db(db):
	db.close()