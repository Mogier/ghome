#!/usr/bin/env python
# -*- coding: utf-8 -*-

import datetime
import utils
import analyseur as a

class Trame:

	def __init__(self, taille, org, data, id, status, checksum):
		self.taille = taille
		self.org = org
		self.data = data
		self.id = id
		self.status = status
		self.checksum = checksum
		self.timeStamp = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S") 

	def isLearn(self):
		if self.org in ["06","07"]:
			intdata = int(self.data[6:8],16)
			masque = int(0b00001000)
			if intdata & masque != 0:
				return False
			else:
				return True
		else:
			return False


	def analyseLearn(self):
		metadata = []
		databin = []
		sep = ""

		if self.org == "07":
			metadata.append(self.org)

			databin.extend(utils.hexstrtobin(self.data[0:2])[2:].zfill(8))
			databin.extend(utils.hexstrtobin(self.data[2:4])[2:].zfill(8))
			databin.extend(utils.hexstrtobin(self.data[4:6])[2:].zfill(8))

			metadata.append(str(hex(int(sep.join(databin[0:6]),2)))[2:].upper().zfill(2))
			metadata.append(str(hex(int(sep.join(databin[6:13]),2)))[2:].upper().zfill(2))  
			metadata.append(str(hex(int(sep.join(databin[13:]),2)))[2:].upper().zfill(2))
		
		elif self.org == "06":
			metadata.append("06")
			metadata.append("00")
			metadata.append("01")

		return metadata

	def display(self):
		print "\nYop je suis une trame !"
		print "taille : " + self.taille \
		+ "\nORG : " + self.org \
		+" \ndata : " + self.data \
		+ "\nid : " + self.id \
		+ "\nstatus : " + self.status \
		+ "\nchecksum : " + self.checksum \
		+ "\nTimeStamp : " + str(self.timeStamp)

	def checkIntegrity(self):
		#todo implem' crc
		return True

	def isOK(self):
		self.checkIntegrity()
		if (len(self.taille) !=2) \
		or (len(self.org) !=2) \
		or (len(self.data) !=8) \
		or (len(self.id) !=8) \
		or (len(self.status) != 2) \
		or (len(self.checksum) !=2):
			return False
		else:
			return True 