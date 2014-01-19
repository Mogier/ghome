DROP DATABASE IF EXISTS GeHome;

CREATE DATABASE IF NOT EXISTS GeHome;
USE GeHome;
# -----------------------------------------------------------------------------
#       TABLE : ACTIONNEUR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS Actionneur
 (
   id INTEGER(2) NOT NULL,
   id_Etat INTEGER(2) NOT NULL,
   id_Espace INTEGER(2) NOT NULL,
   trameLearn CHAR(32) NULL,
   PRIMARY KEY (id) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE ACTIONNEUR
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_ACTIONNEUR_ETAT
     ON Actionneur (id_Etat ASC);

CREATE  INDEX I_FK_COMPOSANT_ESPACE_2
     ON Actionneur (id_Espace ASC);

# -----------------------------------------------------------------------------
#       TABLE : ETAT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS Etat
 (
   id INTEGER(2) NOT NULL,
   label CHAR(32) NULL,
   description CHAR(255) NULL,
   PRIMARY KEY (id) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : CAPTEUR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS Capteur
 (
   id INTEGER(2) NOT NULL,
   id_Espace INTEGER(2) NOT NULL,
   trameLearn CHAR(32) NULL,
   PRIMARY KEY (id) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE CAPTEUR
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_COMPOSANT_ESPACE_3
     ON Capteur (id_Espace ASC);

# -----------------------------------------------------------------------------
#       TABLE : TYPEESPACE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS TypeSpace
 (
   id INTEGER(2) NOT NULL,
   label CHAR(32) NULL,
   description CHAR(255) NULL,
   PRIMARY KEY (id)
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : TYPEPROPRIETE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS TypePropriete
 (
   id INTEGER(2) NOT NULL,
   label CHAR(32) NULL,
   PRIMARY KEY (id) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : DATEHEURE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS DateHeure
 (
   id INTEGER(2) NOT NULL,
   dateReleve DATETIME NOT NULL,
   PRIMARY KEY (id)
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : PROPRIETE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS Propriete
 (
   id INTEGER(2) NOT NULL,
   id_Capteur INTEGER(2) NOT NULL,
   id_TypePropriete INTEGER(2) NOT NULL,
   PRIMARY KEY (id) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE PROPRIETE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_PROPRIETE_CAPTEUR
     ON Propriete (id_Capteur ASC);

CREATE  INDEX I_FK_PROPRIETE_TYPEPROPRIETE
     ON Propriete (id_TypePropriete ASC);

# -----------------------------------------------------------------------------
#       TABLE : ESPACE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS Espace
 (
   id INTEGER(2) NOT NULL,
   id_TypeSpace INTEGER(2) NOT NULL,
   nom CHAR(32) NULL,
   description CHAR(255) NULL,
   PRIMARY KEY (id) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE ESPACE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_ESPACE_TYPEESPACE
     ON Espace (id_TypeSpace ASC);

# -----------------------------------------------------------------------------
#       TABLE : ETATPOSSIBLECAPTEUR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS EtatPossibleCapteur
 (
   id INTEGER(2) NOT NULL,
   id_Etat INTEGER(2) NOT NULL,
   id_Actionneur INTEGER(2) NOT NULL,
   PRIMARY KEY (id) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE ETATPOSSIBLECAPTEUR
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_ETATPOSSIBLECAPTEUR_ETAT
     ON EtatPossibleCapteur (id_Etat ASC);

CREATE  INDEX I_FK_ETATPOSSIBLECAPTEUR_ACTIONNEUR
     ON EtatPossibleCapteur (id_Actionneur ASC);

# -----------------------------------------------------------------------------
#       TABLE : RELEVER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS Relever
 (
   id INTEGER(2) NOT NULL,
   id_Propriete INTEGER(2) NOT NULL,
   id_DateHeure INTEGER(2) NOT NULL,
   valeur CHAR(20) NULL,
   PRIMARY KEY (id)
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE RELEVER
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_RELEVER_PROPRIETE
     ON Relever (id_Propriete ASC,id_DateHeure ASC,id ASC);


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE Actionneur 
  ADD FOREIGN KEY FK_ACTIONNEUR_ETAT (id)
      REFERENCES Etat (id) ;


ALTER TABLE Actionneur 
  ADD FOREIGN KEY FK_COMPOSANT_ESPACE_2 (id_Espace)
      REFERENCES Espace (id) ;


ALTER TABLE Capteur 
  ADD FOREIGN KEY FK_COMPOSANT_ESPACE_3 (id_Espace)
      REFERENCES Espace (id) ;


ALTER TABLE Propriete 
  ADD FOREIGN KEY FK_PROPRIETE_CAPTEUR (id_Capteur)
      REFERENCES Capteur (id) ;


ALTER TABLE Propriete 
  ADD FOREIGN KEY FK_PROPRIETE_TYPEPROPRIETE (id_TypePropriete)
      REFERENCES TypePropriete (id) ;


ALTER TABLE Espace 
  ADD FOREIGN KEY FK_ESPACE_TYPEESPACE (id_TypeSpace)
      REFERENCES TypeSpace (id) ;


ALTER TABLE EtatPossibleCapteur 
  ADD FOREIGN KEY FK_ETATPOSSIBLECAPTEUR_ETAT (id_Etat)
      REFERENCES Etat (id) ;


ALTER TABLE EtatPossibleCapteur 
  ADD FOREIGN KEY FK_ETATPOSSIBLECAPTEUR_ACTIONNEUR (id_Actionneur)
      REFERENCES Actionneur (id) ;


ALTER TABLE Relever
  ADD FOREIGN KEY FK_RELEVER_PROPRIETE (id_Propriete)
      REFERENCES Propriete (id) ;


ALTER TABLE Relever 
  ADD FOREIGN KEY FK_RELEVER_DATEHEURE (id_DateHeure)
      REFERENCES DateHeure (id) ;

