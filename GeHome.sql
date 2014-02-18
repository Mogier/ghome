DROP DATABASE IF EXISTS GeHome;

CREATE DATABASE IF NOT EXISTS GeHome;
USE GeHome;

-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 18 Février 2014 à 20:14
-- Version du serveur: 5.5.33
-- Version de PHP: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données: `GeHome`
--

-- --------------------------------------------------------

--
-- Structure de la table `Actionneur`
--

CREATE TABLE `Actionneur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Espace` int(11) DEFAULT NULL,
  `trameLearn` varchar(32) DEFAULT NULL,
  `etat` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `I_FK_COMPOSANT_ESPACE_2` (`id_Espace`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Capteur`
--

CREATE TABLE `Capteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Espace` int(11) DEFAULT NULL,
  `trameLearn` varchar(32) DEFAULT NULL,
  `idPhysique` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `I_FK_COMPOSANT_ESPACE_3` (`id_Espace`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

-- --------------------------------------------------------

--
-- Structure de la table `DateHeure`
--

CREATE TABLE `DateHeure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateReleve` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Espace`
--

CREATE TABLE `Espace` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `id_TypeSpace` int(2) DEFAULT NULL,
  `nom` varchar(32) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `I_FK_ESPACE_TYPEESPACE` (`id_TypeSpace`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;



-- --------------------------------------------------------

--
-- Structure de la table `Etat`
--

CREATE TABLE `Etat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(32) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `EtatPossibleCapteur`
--

CREATE TABLE `EtatPossibleCapteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Etat` int(11) DEFAULT NULL,
  `id_Actionneur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `I_FK_ETATPOSSIBLECAPTEUR_ETAT` (`id_Etat`),
  KEY `I_FK_ETATPOSSIBLECAPTEUR_ACTIONNEUR` (`id_Actionneur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Propriete`
--

CREATE TABLE `Propriete` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Capteur` int(11) DEFAULT NULL,
  `id_TypePropriete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `I_FK_PROPRIETE_CAPTEUR` (`id_Capteur`),
  KEY `I_FK_PROPRIETE_TYPEPROPRIETE` (`id_TypePropriete`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Relever`
--

CREATE TABLE `Relever` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Propriete` int(11) DEFAULT NULL,
  `id_DateHeure` int(11) DEFAULT NULL,
  `valeur` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `I_FK_RELEVER_PROPRIETE` (`id_Propriete`,`id_DateHeure`,`id`),
  KEY `FK_RELEVER_DATEHEURE` (`id_DateHeure`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `TrameLearn`
--

CREATE TABLE `TrameLearn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trame` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idPhysiqueCapteur` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `TypePropriete`
--

CREATE TABLE `TypePropriete` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `TypeSpace`
--

CREATE TABLE `TypeSpace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(32) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Actionneur`
--
ALTER TABLE `Actionneur`
  ADD CONSTRAINT `actionneur_ibfk_2` FOREIGN KEY (`id_Espace`) REFERENCES `Espace` (`id`);

--
-- Contraintes pour la table `Capteur`
--
ALTER TABLE `Capteur`
  ADD CONSTRAINT `capteur_ibfk_1` FOREIGN KEY (`id_Espace`) REFERENCES `Espace` (`id`);

--
-- Contraintes pour la table `Espace`
--
ALTER TABLE `Espace`
  ADD CONSTRAINT `espace_ibfk_1` FOREIGN KEY (`id_TypeSpace`) REFERENCES `TypeSpace` (`id`);

--
-- Contraintes pour la table `EtatPossibleCapteur`
--
ALTER TABLE `EtatPossibleCapteur`
  ADD CONSTRAINT `etatpossiblecapteur_ibfk_1` FOREIGN KEY (`id_Etat`) REFERENCES `Etat` (`id`),
  ADD CONSTRAINT `etatpossiblecapteur_ibfk_2` FOREIGN KEY (`id_Actionneur`) REFERENCES `Actionneur` (`id`);

--
-- Contraintes pour la table `Propriete`
--
ALTER TABLE `Propriete`
  ADD CONSTRAINT `propriete_ibfk_1` FOREIGN KEY (`id_Capteur`) REFERENCES `Capteur` (`id`),
  ADD CONSTRAINT `propriete_ibfk_2` FOREIGN KEY (`id_TypePropriete`) REFERENCES `TypePropriete` (`id`);

--
-- Contraintes pour la table `Relever`
--
ALTER TABLE `Relever`
  ADD CONSTRAINT `relever_ibfk_1` FOREIGN KEY (`id_Propriete`) REFERENCES `Propriete` (`id`),
  ADD CONSTRAINT `relever_ibfk_2` FOREIGN KEY (`id_DateHeure`) REFERENCES `DateHeure` (`id`);
