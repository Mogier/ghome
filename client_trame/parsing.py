#!/usr/bin/env python
# -*- coding: utf-8 -*-

import Trame
  
def parse_liste(trames):
	trame_list = []

	for trame in trames:
		print trame
		
		taille = trame[0:2]
		org = trame [2:4]
		data = trame [4:12]
		id = trame [12:20]
		status = trame [20:22]
		checkSum = trame [22:24]

		truc = Trame.Trame(taille,org,data,id,status,checkSum)
		truc.display()
		if truc.isOK():
			print "Et en plus elle est valide !"
			
		trame_list.append(truc)
	return trame_list