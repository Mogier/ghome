import socket
maSocket = socket.socket(socket.AF_INET,socket.SOCK_STREAM)

#monActionneur = Actionneur(adresse IP : string, num de port : int, num de prise : int)
class Actionneur(object):
        numPrise = 0
        def __init__(self, adrIP, numPort,numPrise):
                maSocket.connect((adrIP,numPort))
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
                rep = maSocket.recv(32)
                print (rep)
        def ordreArret(self):
                self.ajouterPlage()
                chkSum = hex(204+self.numPrise)
                chkSum = chkSum[2::]
                maSocket.send('A55A6B0570000000FF9F1E0'+str(self.numPrise)+'30'+chkSum)
                rep = maSocket.recv(32)
                print (rep)



Actio = Actionneur('134.214.106.23',5000,6)

Actio.ordreMarche()
Actio.ordreArret()
