-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Mar 11 Février 2014 à 09:11
-- Version du serveur: 5.5.34
-- Version de PHP: 5.3.10-1ubuntu3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `GeHome`
--

-- --------------------------------------------------------

--
-- Structure de la table `Actionneur`
--

CREATE TABLE IF NOT EXISTS `Actionneur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Etat` int(11) DEFAULT NULL,
  `id_Espace` int(11) DEFAULT NULL,
  `trameLearn` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_672E4F2E7ED8445E` (`id_Etat`),
  KEY `I_FK_COMPOSANT_ESPACE_2` (`id_Espace`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Capteur`
--

CREATE TABLE IF NOT EXISTS `Capteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Espace` int(11) DEFAULT NULL,
  `trameLearn` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `I_FK_COMPOSANT_ESPACE_3` (`id_Espace`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `DateHeure`
--

CREATE TABLE IF NOT EXISTS `DateHeure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateReleve` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Espace`
--

CREATE TABLE IF NOT EXISTS `Espace` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `id_TypeSpace` int(2) DEFAULT NULL,
  `nom` varchar(32) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `I_FK_ESPACE_TYPEESPACE` (`id_TypeSpace`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `Espace`
--

INSERT INTO `Espace` (`id`, `id_TypeSpace`, `nom`, `description`) VALUES
(1, NULL, 'Zuzuzuzuzu', 'zuzuzuzuz'),
(2, NULL, 'treterdf', 'fgdferf'),
(3, NULL, 'Mogier', 'Mogier'),
(4, NULL, 'Léo', 'Léo'),
(5, NULL, 'Léo', 'Léo'),
(6, NULL, 'TUTUTUTUTUTUTUTUTU', 'YµOLO'),
(7, NULL, 'test', 'testssssss'),
(8, NULL, 'lol', 'lol'),
(9, NULL, 'blaba', 'bababa'),
(10, NULL, 'rrr', 'rrrr'),
(11, NULL, 'bbb', 'bbbb'),
(12, NULL, 'last', 'last'),
(13, NULL, 'adrian', 'adrian');

-- --------------------------------------------------------

--
-- Structure de la table `Etat`
--

CREATE TABLE IF NOT EXISTS `Etat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(32) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `EtatPossibleCapteur`
--

CREATE TABLE IF NOT EXISTS `EtatPossibleCapteur` (
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

CREATE TABLE IF NOT EXISTS `Propriete` (
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

CREATE TABLE IF NOT EXISTS `Relever` (
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

CREATE TABLE IF NOT EXISTS `TrameLearn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trame` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idPhysiqueCapteur` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `TypePropriete`
--

CREATE TABLE IF NOT EXISTS `TypePropriete` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `TypeSpace`
--

CREATE TABLE IF NOT EXISTS `TypeSpace` (
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
  ADD CONSTRAINT `FK_672E4F2E7ED8445E` FOREIGN KEY (`id_Etat`) REFERENCES `Etat` (`id`),
  ADD CONSTRAINT `Actionneur_ibfk_2` FOREIGN KEY (`id_Espace`) REFERENCES `Espace` (`id`);

--
-- Contraintes pour la table `Capteur`
--
ALTER TABLE `Capteur`
  ADD CONSTRAINT `Capteur_ibfk_1` FOREIGN KEY (`id_Espace`) REFERENCES `Espace` (`id`);

--
-- Contraintes pour la table `Espace`
--
ALTER TABLE `Espace`
  ADD CONSTRAINT `Espace_ibfk_1` FOREIGN KEY (`id_TypeSpace`) REFERENCES `TypeSpace` (`id`);

--
-- Contraintes pour la table `EtatPossibleCapteur`
--
ALTER TABLE `EtatPossibleCapteur`
  ADD CONSTRAINT `EtatPossibleCapteur_ibfk_1` FOREIGN KEY (`id_Etat`) REFERENCES `Etat` (`id`),
  ADD CONSTRAINT `EtatPossibleCapteur_ibfk_2` FOREIGN KEY (`id_Actionneur`) REFERENCES `Actionneur` (`id`);

--
-- Contraintes pour la table `Propriete`
--
ALTER TABLE `Propriete`
  ADD CONSTRAINT `Propriete_ibfk_1` FOREIGN KEY (`id_Capteur`) REFERENCES `Capteur` (`id`),
  ADD CONSTRAINT `Propriete_ibfk_2` FOREIGN KEY (`id_TypePropriete`) REFERENCES `TypePropriete` (`id`);

--
-- Contraintes pour la table `Relever`
--
ALTER TABLE `Relever`
  ADD CONSTRAINT `Relever_ibfk_1` FOREIGN KEY (`id_Propriete`) REFERENCES `Propriete` (`id`),
  ADD CONSTRAINT `Relever_ibfk_2` FOREIGN KEY (`id_DateHeure`) REFERENCES `DateHeure` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
