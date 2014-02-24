-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Jeu 20 Février 2014 à 14:31
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
  `id_Espace` int(11) DEFAULT NULL,
  `etat` tinyint(1) NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `I_FK_COMPOSANT_ESPACE_2` (`id_Espace`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Contenu de la table `Actionneur`
--

INSERT INTO `Actionneur` (`id`, `id_Espace`, `etat`, `numero`) VALUES
(1, 77, 0, 0),
(2, 30, 0, 0),
(3, 93, 0, 0),
(4, 89, 0, 0),
(5, 70, 0, 0),
(6, 45, 0, 0),
(7, 82, 0, 0),
(8, 23, 0, 0),
(9, 87, 0, 0),
(10, 90, 0, 0),
(11, 61, 0, 0),
(12, 86, 0, 0),
(13, 23, 0, 0),
(14, 50, 0, 0),
(15, 27, 0, 0),
(16, 45, 0, 0),
(17, 49, 0, 0),
(18, 42, 0, 0),
(19, 51, 0, 0),
(20, 48, 0, 0),
(21, 69, 0, 0),
(22, 55, 0, 0),
(23, 36, 0, 0),
(24, 30, 0, 0),
(25, 88, 0, 0),
(26, 17, 0, 0),
(27, 42, 0, 0),
(28, 71, 0, 0),
(29, 23, 0, 0),
(30, 44, 0, 0),
(31, 28, 0, 0),
(32, 62, 0, 0),
(33, 56, 0, 0),
(34, 32, 0, 0),
(35, 37, 0, 0),
(36, 10, 0, 0),
(37, 66, 0, 0),
(38, 78, 0, 0),
(39, 61, 0, 0),
(40, 2, 0, 0),
(41, 83, 0, 0),
(42, 98, 0, 0),
(43, 57, 0, 0),
(44, 4, 0, 0),
(45, 25, 0, 0),
(46, 93, 0, 0),
(47, 60, 0, 0),
(48, 54, 0, 0),
(49, 96, 0, 0),
(50, 26, 0, 0),
(51, 13, 0, 0),
(52, 60, 0, 0),
(53, 26, 0, 0),
(54, 24, 0, 0),
(55, 88, 0, 0),
(56, 4, 0, 0),
(57, 95, 0, 0),
(58, 24, 0, 0),
(59, 60, 0, 0),
(60, 86, 0, 0),
(61, 100, 0, 0),
(62, 42, 0, 0),
(63, 61, 0, 0),
(64, 52, 0, 0),
(65, 30, 0, 0),
(66, 12, 0, 0),
(67, 66, 0, 0),
(68, 83, 0, 0),
(69, 68, 0, 0),
(70, 20, 0, 0),
(71, 40, 0, 0),
(72, 29, 0, 0),
(73, 45, 0, 0),
(74, 17, 0, 0),
(75, 5, 0, 0),
(76, 48, 0, 0),
(77, 78, 0, 0),
(78, 2, 0, 0),
(79, 56, 0, 0),
(80, 87, 0, 0),
(81, 72, 0, 0),
(82, 47, 0, 0),
(83, 18, 0, 0),
(84, 18, 0, 0),
(85, 93, 0, 0),
(86, 6, 0, 0),
(87, 36, 0, 0),
(88, 95, 0, 0),
(89, 44, 0, 0),
(90, 69, 0, 0),
(91, 68, 0, 0),
(92, 26, 0, 0),
(93, 88, 0, 0),
(94, 79, 0, 0),
(95, 33, 0, 0),
(96, 44, 0, 0),
(97, 73, 0, 0),
(98, 94, 0, 0),
(99, 43, 0, 0),
(100, 80, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `Capteur`
--

CREATE TABLE IF NOT EXISTS `Capteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Espace` int(11) DEFAULT NULL,
  `trameLearn` varchar(32) DEFAULT NULL,
  `idPhysique` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `I_FK_COMPOSANT_ESPACE_3` (`id_Espace`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Contenu de la table `Capteur`
--

INSERT INTO `Capteur` (`id`, `id_Espace`, `trameLearn`, `idPhysique`) VALUES
(1, 94, '0BEB', NULL),
(2, 36, '1B4B', NULL),
(3, 48, 'E96E', NULL),
(4, 72, '9FF0', NULL),
(5, 80, 'B0E6', NULL),
(6, 19, 'E65E', NULL),
(7, 53, '75D0', NULL),
(8, 96, '8C74', NULL),
(9, 93, '28FD', NULL),
(10, 13, '79EE', NULL),
(11, 92, '3A38', NULL),
(12, 82, 'F4C4', NULL),
(13, 94, '8576', NULL),
(14, 48, 'D6E9', NULL),
(15, 26, '72FB', NULL),
(16, 67, '3FC9', NULL),
(17, 46, '5882', NULL),
(18, 95, '1F93', NULL),
(19, 79, '0CA7', NULL),
(20, 13, '839E', NULL),
(21, 96, 'B711', NULL),
(22, 57, '87EE', NULL),
(23, 22, '182A', NULL),
(24, 21, 'D161', NULL),
(25, 84, 'FD20', NULL),
(26, 10, '16DF', NULL),
(27, 89, '152C', NULL),
(28, 30, 'A5E4', NULL),
(29, 83, '53B6', NULL),
(30, 24, 'E27E', NULL),
(31, 3, '4992', NULL),
(32, 17, '7966', NULL),
(33, 48, 'AE91', NULL),
(34, 37, 'E7D4', NULL),
(35, 53, '1084', NULL),
(36, 98, '2A1A', NULL),
(37, 38, 'C5C4', NULL),
(38, 3, 'D779', NULL),
(39, 5, '534E', NULL),
(40, 72, 'A510', NULL),
(41, 15, 'A478', NULL),
(42, 60, 'A4DE', NULL),
(43, 53, '3E39', NULL),
(44, 77, '4EA2', NULL),
(45, 75, 'ACD8', NULL),
(46, 84, '52B2', NULL),
(47, 28, 'ACD5', NULL),
(48, 71, '36BF', NULL),
(49, 15, 'B5E6', NULL),
(50, 11, '1E3B', NULL),
(51, 96, 'F3F8', NULL),
(52, 1, '9071', NULL),
(53, 60, '05D2', NULL),
(54, 36, '954C', NULL),
(55, 9, '8E11', NULL),
(56, 15, 'CF0C', NULL),
(57, 94, '6A0E', NULL),
(58, 3, '63F2', NULL),
(59, 34, 'C2FE', NULL),
(60, 4, '2619', NULL),
(61, 3, '06DA', NULL),
(62, 15, '28AA', NULL),
(63, 82, '9168', NULL),
(64, 80, 'B55F', NULL),
(65, 51, 'BD12', NULL),
(66, 87, '6169', NULL),
(67, 61, '4EB8', NULL),
(68, 64, '4E89', NULL),
(69, 53, 'A069', NULL),
(70, 87, '53BA', NULL),
(71, 27, '8365', NULL),
(72, 99, '6F5D', NULL),
(73, 98, '53D7', NULL),
(74, 8, '7B38', NULL),
(75, 3, 'D980', NULL),
(76, 59, 'A997', NULL),
(77, 45, '706E', NULL),
(78, 89, '514A', NULL),
(79, 87, '44AA', NULL),
(80, 93, 'D713', NULL),
(81, 10, '74A6', NULL),
(82, 60, '7478', NULL),
(83, 100, '7F81', NULL),
(84, 15, '30F4', NULL),
(85, 95, '6D8E', NULL),
(86, 48, 'CFD8', NULL),
(87, 44, 'D294', NULL),
(88, 78, '74A4', NULL),
(89, 30, '45A4', NULL),
(90, 3, 'D6B8', NULL),
(91, 30, 'A60D', NULL),
(92, 5, '8301', NULL),
(93, 85, '9658', NULL),
(94, 83, '4AEC', NULL),
(95, 31, 'E2E7', NULL),
(96, 30, 'AF76', NULL),
(97, 59, '17F1', NULL),
(98, 58, '2F57', NULL),
(99, 98, 'A61F', NULL),
(100, 2, 'D677', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `DateHeure`
--

CREATE TABLE IF NOT EXISTS `DateHeure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateReleve` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Contenu de la table `DateHeure`
--

INSERT INTO `DateHeure` (`id`, `dateReleve`) VALUES
(1, '0000-00-00 00:00:00'),
(2, '0000-00-00 00:00:00'),
(3, '0000-00-00 00:00:00'),
(4, '0000-00-00 00:00:00'),
(5, '0000-00-00 00:00:00'),
(6, '0000-00-00 00:00:00'),
(7, '0000-00-00 00:00:00'),
(8, '0000-00-00 00:00:00'),
(9, '0000-00-00 00:00:00'),
(10, '0000-00-00 00:00:00'),
(11, '0000-00-00 00:00:00'),
(12, '0912-09-30 08:07:03'),
(13, '0000-00-00 00:00:00'),
(14, '0000-00-00 00:00:00'),
(15, '0000-00-00 00:00:00'),
(16, '0000-00-00 00:00:00'),
(17, '0000-00-00 00:00:00'),
(18, '0000-00-00 00:00:00'),
(19, '0000-00-00 00:00:00'),
(20, '0000-00-00 00:00:00'),
(21, '0000-00-00 00:00:00'),
(22, '0000-00-00 00:00:00'),
(23, '0000-00-00 00:00:00'),
(24, '0000-00-00 00:00:00'),
(25, '0000-00-00 00:00:00'),
(26, '0000-00-00 00:00:00'),
(27, '0000-00-00 00:00:00'),
(28, '6514-01-31 05:05:09'),
(29, '0000-00-00 00:00:00'),
(30, '0000-00-00 00:00:00'),
(31, '0000-00-00 00:00:00'),
(32, '0000-00-00 00:00:00'),
(33, '0000-00-00 00:00:00'),
(34, '0000-00-00 00:00:00'),
(35, '0000-00-00 00:00:00'),
(36, '0000-00-00 00:00:00'),
(37, '0000-00-00 00:00:00'),
(38, '0000-00-00 00:00:00'),
(39, '0000-00-00 00:00:00'),
(40, '0000-00-00 00:00:00'),
(41, '0000-00-00 00:00:00'),
(42, '0000-00-00 00:00:00'),
(43, '0000-00-00 00:00:00'),
(44, '0000-00-00 00:00:00'),
(45, '0000-00-00 00:00:00'),
(46, '0000-00-00 00:00:00'),
(47, '0000-00-00 00:00:00'),
(48, '0000-00-00 00:00:00'),
(49, '0000-00-00 00:00:00'),
(50, '0000-00-00 00:00:00'),
(51, '0000-00-00 00:00:00'),
(52, '0000-00-00 00:00:00'),
(53, '0000-00-00 00:00:00'),
(54, '0000-00-00 00:00:00'),
(55, '0000-00-00 00:00:00'),
(56, '0000-00-00 00:00:00'),
(57, '0000-00-00 00:00:00'),
(58, '0000-00-00 00:00:00'),
(59, '0000-00-00 00:00:00'),
(60, '0000-00-00 00:00:00'),
(61, '0000-00-00 00:00:00'),
(62, '0000-00-00 00:00:00'),
(63, '0000-00-00 00:00:00'),
(64, '0000-00-00 00:00:00'),
(65, '0000-00-00 00:00:00'),
(66, '0000-00-00 00:00:00'),
(67, '0000-00-00 00:00:00'),
(68, '0000-00-00 00:00:00'),
(69, '0000-00-00 00:00:00'),
(70, '0000-00-00 00:00:00'),
(71, '0000-00-00 00:00:00'),
(72, '0000-00-00 00:00:00'),
(73, '0000-00-00 00:00:00'),
(74, '4585-08-01 04:06:08'),
(75, '0000-00-00 00:00:00'),
(76, '0000-00-00 00:00:00'),
(77, '0000-00-00 00:00:00'),
(78, '0000-00-00 00:00:00'),
(79, '0000-00-00 00:00:00'),
(80, '0000-00-00 00:00:00'),
(81, '0000-00-00 00:00:00'),
(82, '0000-00-00 00:00:00'),
(83, '0000-00-00 00:00:00'),
(84, '0000-00-00 00:00:00'),
(85, '0000-00-00 00:00:00'),
(86, '0000-00-00 00:00:00'),
(87, '0000-00-00 00:00:00'),
(88, '0000-00-00 00:00:00'),
(89, '0000-00-00 00:00:00'),
(90, '0000-00-00 00:00:00'),
(91, '0000-00-00 00:00:00'),
(92, '0000-00-00 00:00:00'),
(93, '0000-00-00 00:00:00'),
(94, '0000-00-00 00:00:00'),
(95, '0000-00-00 00:00:00'),
(96, '0000-00-00 00:00:00'),
(97, '0000-00-00 00:00:00'),
(98, '0000-00-00 00:00:00'),
(99, '0000-00-00 00:00:00'),
(100, '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Contenu de la table `Espace`
--

INSERT INTO `Espace` (`id`, `id_TypeSpace`, `nom`, `description`) VALUES
(1, 5, 'Lesotho', 'a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu.'),
(2, 2, 'Switzerland', 'non enim commodo hendrerit. Donec porttitor tellus non magna. Nam'),
(3, 4, 'Guinea-Bissau', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor,'),
(4, 2, 'Peru', 'Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus'),
(5, 1, 'Philippines', 'et netus et malesuada fames ac turpis egestas. Fusce aliquet'),
(6, 5, 'Pitcairn Islands', 'quam. Pellentesque habitant morbi tristique senectus et netus et malesuada'),
(7, 2, 'Antarctica', 'augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel,'),
(8, 5, 'Wallis and Futuna', 'lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id,'),
(9, 5, 'Saudi Arabia', 'amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus'),
(10, 4, 'Netherlands', 'pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus'),
(11, 4, 'Croatia', 'tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu'),
(12, 3, 'Honduras', 'porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris'),
(13, 5, 'Andorra', 'et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat'),
(14, 4, 'Yemen', 'id, blandit at, nisi. Cum sociis natoque penatibus et magnis'),
(15, 1, 'Bermuda', 'In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas'),
(16, 3, 'Egypt', 'Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet'),
(17, 4, 'Kiribati', 'nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris'),
(18, 4, 'Peru', 'risus. Nulla eget metus eu erat semper rutrum. Fusce dolor'),
(19, 4, 'Croatia', 'amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,'),
(20, 5, 'Nicaragua', 'Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id,'),
(21, 3, 'Saint Helena, Ascension and Tris', 'quis diam. Pellentesque habitant morbi tristique senectus et netus et'),
(22, 5, 'Burundi', 'nisi. Cum sociis natoque penatibus et magnis dis parturient montes,'),
(23, 2, 'Lebanon', 'non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec'),
(24, 3, 'Saint Lucia', 'iaculis enim, sit amet ornare lectus justo eu arcu. Morbi'),
(25, 3, 'Saint Kitts and Nevis', 'tortor at risus. Nunc ac sem ut dolor dapibus gravida.'),
(26, 5, 'Somalia', 'vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie'),
(27, 3, 'Togo', 'amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing'),
(28, 1, 'Nepal', 'nunc. In at pede. Cras vulputate velit eu sem. Pellentesque'),
(29, 3, 'United States', 'diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent'),
(30, 3, 'Antarctica', 'eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce'),
(31, 5, 'Dominica', 'dictum augue malesuada malesuada. Integer id magna et ipsum cursus'),
(32, 2, 'Guyana', 'enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin'),
(33, 1, 'Dominican Republic', 'Curabitur egestas nunc sed libero. Proin sed turpis nec mauris'),
(34, 2, 'Marshall Islands', 'tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis,'),
(35, 3, 'Kuwait', 'sit amet ultricies sem magna nec quam. Curabitur vel lectus.'),
(36, 5, 'Belgium', 'orci, in consequat enim diam vel arcu. Curabitur ut odio'),
(37, 3, 'Laos', 'in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus'),
(38, 2, 'Jersey', 'nulla. Donec non justo. Proin non massa non ante bibendum'),
(39, 5, 'Niue', 'convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc'),
(40, 5, 'Italy', 'Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero.'),
(41, 3, 'Latvia', 'ipsum sodales purus, in molestie tortor nibh sit amet orci.'),
(42, 2, 'Papua New Guinea', 'Nulla eget metus eu erat semper rutrum. Fusce dolor quam,'),
(43, 2, 'Tokelau', 'non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget'),
(44, 3, 'Micronesia', 'parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla'),
(45, 5, 'Bouvet Island', 'vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum.'),
(46, 3, 'Latvia', 'commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac,'),
(47, 4, 'Armenia', 'tellus faucibus leo, in lobortis tellus justo sit amet nulla.'),
(48, 2, 'Maldives', 'in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus'),
(49, 3, 'Comoros', 'ornare. Fusce mollis. Duis sit amet diam eu dolor egestas'),
(50, 2, 'Sweden', 'enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie'),
(51, 4, 'Switzerland', 'lectus convallis est, vitae sodales nisi magna sed dui. Fusce'),
(52, 1, 'Eritrea', 'est, vitae sodales nisi magna sed dui. Fusce aliquam, enim'),
(53, 5, 'Malawi', 'ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae,'),
(54, 3, 'Morocco', 'semper egestas, urna justo faucibus lectus, a sollicitudin orci sem'),
(55, 2, 'Singapore', 'Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo.'),
(56, 4, 'Iraq', 'libero lacus, varius et, euismod et, commodo at, libero. Morbi'),
(57, 3, 'French Guiana', 'vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu.'),
(58, 5, 'Moldova', 'metus urna convallis erat, eget tincidunt dui augue eu tellus.'),
(59, 1, 'Guernsey', 'enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin'),
(60, 1, 'Brazil', 'non enim. Mauris quis turpis vitae purus gravida sagittis. Duis'),
(61, 4, 'Kuwait', 'ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et,'),
(62, 3, 'Portugal', 'Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper,'),
(63, 4, 'Austria', 'eros non enim commodo hendrerit. Donec porttitor tellus non magna.'),
(64, 5, 'South Sudan', 'sed libero. Proin sed turpis nec mauris blandit mattis. Cras'),
(65, 3, 'Trinidad and Tobago', 'magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices.'),
(66, 5, 'Turks and Caicos Islands', 'erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla.'),
(67, 1, 'Hungary', 'Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi'),
(68, 5, 'Maldives', 'posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget,'),
(69, 3, 'Philippines', 'magna a neque. Nullam ut nisi a odio semper cursus.'),
(70, 2, 'Sudan', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames'),
(71, 4, 'Solomon Islands', 'pellentesque, tellus sem mollis dui, in sodales elit erat vitae'),
(72, 1, 'Lebanon', 'at arcu. Vestibulum ante ipsum primis in faucibus orci luctus'),
(73, 5, 'Burkina Faso', 'diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae,'),
(74, 3, 'French Guiana', 'dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero.'),
(75, 1, 'Turks and Caicos Islands', 'non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum'),
(76, 4, 'Algeria', 'amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus.'),
(77, 1, 'United States', 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus'),
(78, 5, 'Burundi', 'Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper'),
(79, 3, 'Sao Tome and Principe', 'et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus.'),
(80, 5, 'Australia', 'augue, eu tempor erat neque non quam. Pellentesque habitant morbi'),
(81, 4, 'Taiwan', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur'),
(82, 5, 'Cook Islands', 'urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus'),
(83, 4, 'Djibouti', 'Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper'),
(84, 3, 'Maldives', 'montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique'),
(85, 5, 'Oman', 'Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim,'),
(86, 5, 'Namibia', 'tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis,'),
(87, 2, 'Palestine, State of', 'et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat'),
(88, 3, 'Antarctica', 'bibendum fermentum metus. Aenean sed pede nec ante blandit viverra.'),
(89, 5, 'Andorra', 'mattis semper, dui lectus rutrum urna, nec luctus felis purus'),
(90, 1, 'Swaziland', 'ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate,'),
(91, 3, 'Bouvet Island', 'Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris.'),
(92, 4, 'Oman', 'sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices'),
(93, 3, 'Eritrea', 'vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis.'),
(94, 1, 'Sint Maarten', 'Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis'),
(95, 4, 'Guinea', 'imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem'),
(96, 4, 'Saint Pierre and Miquelon', 'nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc.'),
(97, 5, 'Nicaragua', 'auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus,'),
(98, 3, 'Japan', 'velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus.'),
(99, 4, 'Equatorial Guinea', 'eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet'),
(100, 2, 'Algeria', 'blandit at, nisi. Cum sociis natoque penatibus et magnis dis');

-- --------------------------------------------------------

--
-- Structure de la table `Etat`
--

CREATE TABLE IF NOT EXISTS `Etat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(32) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `Etat`
--

INSERT INTO `Etat` (`id`, `label`, `description`) VALUES
(1, 'tincidunt pede', 'nisl. Quisque fringilla euismod enim.'),
(2, 'a mi', 'nisi sem semper'),
(3, 'semper auctor.', 'Nulla eget metus eu erat'),
(4, 'ac risus.', 'Suspendisse eleifend. Cras sed'),
(5, 'aliquam iaculis,', 'vel est tempor bibendum.');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Contenu de la table `Propriete`
--

INSERT INTO `Propriete` (`id`, `id_Capteur`, `id_TypePropriete`) VALUES
(1, 58, 3),
(2, 15, 4),
(3, 84, 2),
(4, 59, 5),
(5, 30, 2),
(6, 82, 4),
(7, 19, 2),
(8, 73, 3),
(9, 7, 2),
(10, 60, 3),
(11, 70, 5),
(12, 8, 2),
(13, 1, 2),
(14, 38, 5),
(15, 70, 1),
(16, 69, 4),
(17, 24, 5),
(18, 79, 1),
(19, 17, 4),
(20, 41, 5),
(21, 2, 2),
(22, 51, 5),
(23, 56, 2),
(24, 23, 3),
(25, 75, 5),
(26, 67, 4),
(27, 70, 2),
(28, 70, 2),
(29, 59, 3),
(30, 42, 4),
(31, 28, 3),
(32, 23, 2),
(33, 49, 3),
(34, 29, 5),
(35, 6, 5),
(36, 100, 1),
(37, 99, 3),
(38, 27, 4),
(39, 13, 1),
(40, 13, 4),
(41, 27, 5),
(42, 38, 1),
(43, 41, 4),
(44, 82, 4),
(45, 58, 4),
(46, 43, 5),
(47, 49, 1),
(48, 34, 4),
(49, 75, 3),
(50, 15, 5),
(51, 37, 3),
(52, 14, 4),
(53, 98, 1),
(54, 57, 5),
(55, 10, 3),
(56, 56, 4),
(57, 74, 4),
(58, 82, 4),
(59, 56, 5),
(60, 66, 2),
(61, 45, 2),
(62, 77, 5),
(63, 22, 3),
(64, 95, 2),
(65, 56, 1),
(66, 11, 4),
(67, 63, 2),
(68, 76, 3),
(69, 45, 5),
(70, 8, 3),
(71, 100, 1),
(72, 93, 5),
(73, 6, 2),
(74, 82, 5),
(75, 88, 4),
(76, 30, 5),
(77, 61, 4),
(78, 5, 3),
(79, 84, 1),
(80, 28, 2),
(81, 66, 2),
(82, 78, 5),
(83, 56, 5),
(84, 24, 2),
(85, 46, 3),
(86, 36, 2),
(87, 13, 4),
(88, 65, 4),
(89, 21, 3),
(90, 78, 1),
(91, 1, 3),
(92, 14, 4),
(93, 79, 1),
(94, 58, 1),
(95, 36, 2),
(96, 51, 2),
(97, 28, 1),
(98, 14, 2),
(99, 11, 4),
(100, 54, 4);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Contenu de la table `Relever`
--

INSERT INTO `Relever` (`id`, `id_Propriete`, `id_DateHeure`, `valeur`) VALUES
(1, 24, 18, '533'),
(2, 81, 91, '683'),
(3, 46, 92, '612'),
(4, 34, 8, '552'),
(5, 3, 12, '644'),
(6, 96, 19, '569'),
(7, 69, 46, '413'),
(8, 6, 94, '927'),
(9, 34, 62, '349'),
(10, 28, 64, '884'),
(11, 91, 49, '113'),
(12, 74, 95, '384'),
(13, 26, 21, '452'),
(14, 15, 40, '984'),
(15, 23, 92, '49'),
(16, 30, 7, '476'),
(17, 52, 13, '429'),
(18, 79, 70, '835'),
(19, 54, 1, '897'),
(20, 85, 25, '925'),
(21, 92, 21, '16'),
(22, 90, 64, '852'),
(23, 98, 12, '11'),
(24, 44, 74, '238'),
(25, 22, 81, '539'),
(26, 71, 19, '447'),
(27, 73, 88, '244'),
(28, 57, 100, '660'),
(29, 24, 21, '339'),
(30, 55, 29, '28'),
(31, 50, 40, '370'),
(32, 34, 76, '186'),
(33, 27, 16, '608'),
(34, 28, 67, '932'),
(35, 65, 63, '134'),
(36, 56, 98, '839'),
(37, 75, 63, '792'),
(38, 87, 92, '281'),
(39, 26, 57, '975'),
(40, 56, 91, '942'),
(41, 88, 41, '670'),
(42, 32, 8, '690'),
(43, 18, 83, '870'),
(44, 2, 14, '903'),
(45, 1, 71, '592'),
(46, 9, 28, '261'),
(47, 32, 34, '776'),
(48, 78, 49, '16'),
(49, 12, 99, '104'),
(50, 10, 38, '441'),
(51, 89, 69, '346'),
(52, 4, 88, '400'),
(53, 44, 2, '249'),
(54, 72, 27, '437'),
(55, 63, 15, '200'),
(56, 74, 28, '323'),
(57, 54, 79, '714'),
(58, 71, 43, '944'),
(59, 90, 59, '151'),
(60, 30, 52, '113'),
(61, 81, 17, '398'),
(62, 93, 57, '645'),
(63, 91, 24, '328'),
(64, 47, 65, '804'),
(65, 72, 78, '862'),
(66, 32, 16, '397'),
(67, 40, 85, '623'),
(68, 46, 17, '502'),
(69, 30, 59, '133'),
(70, 23, 40, '611'),
(71, 84, 82, '975'),
(72, 4, 32, '624'),
(73, 24, 8, '280'),
(74, 84, 56, '304'),
(75, 6, 46, '894'),
(76, 3, 75, '105'),
(77, 10, 66, '569'),
(78, 2, 80, '82'),
(79, 88, 3, '592'),
(80, 3, 30, '438'),
(81, 14, 100, '342'),
(82, 85, 25, '74'),
(83, 50, 31, '203'),
(84, 27, 4, '671'),
(85, 89, 93, '444'),
(86, 38, 64, '585'),
(87, 36, 91, '958'),
(88, 80, 89, '803'),
(89, 4, 59, '939'),
(90, 1, 2, '574'),
(91, 71, 99, '270'),
(92, 33, 45, '360'),
(93, 39, 100, '291'),
(94, 100, 27, '986'),
(95, 7, 39, '665'),
(96, 6, 6, '762'),
(97, 12, 79, '148'),
(98, 69, 12, '955'),
(99, 90, 94, '964'),
(100, 73, 19, '523');

-- --------------------------------------------------------

--
-- Structure de la table `TrameLearn`
--

CREATE TABLE IF NOT EXISTS `TrameLearn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trame` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idPhysiqueCapteur` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=101 ;

--
-- Contenu de la table `TrameLearn`
--

INSERT INTO `TrameLearn` (`id`, `trame`, `idPhysiqueCapteur`) VALUES
(1, '0EBB', '1'),
(2, '56CE', '2'),
(3, '34EE', '3'),
(4, '06CF', '4'),
(5, '4DE8', '5'),
(6, '5C66', '6'),
(7, 'CDFD', '7'),
(8, '9014', '8'),
(9, '8A7C', '9'),
(10, '18DB', '10'),
(11, '01DE', '11'),
(12, 'EFC2', '12'),
(13, 'C698', '13'),
(14, 'A048', '14'),
(15, '7C35', '15'),
(16, 'CAEF', '16'),
(17, '70F2', '17'),
(18, '34D7', '18'),
(19, '33F0', '19'),
(20, 'A8B6', '20'),
(21, '7256', '21'),
(22, 'F155', '22'),
(23, 'AA51', '23'),
(24, 'AB01', '24'),
(25, '437B', '25'),
(26, '556A', '26'),
(27, '2310', '27'),
(28, '95AF', '28'),
(29, 'BF4F', '29'),
(30, 'EECA', '30'),
(31, '820E', '31'),
(32, '1AD1', '32'),
(33, 'BFC3', '33'),
(34, '4402', '34'),
(35, '4414', '35'),
(36, '5F30', '36'),
(37, 'EE2E', '37'),
(38, '090A', '38'),
(39, 'C2F2', '39'),
(40, '693B', '40'),
(41, 'F4F5', '41'),
(42, 'FE3C', '42'),
(43, 'C118', '43'),
(44, '5A4F', '44'),
(45, 'F535', '45'),
(46, '096C', '46'),
(47, 'CC44', '47'),
(48, 'EBAF', '48'),
(49, '325F', '49'),
(50, 'F572', '50'),
(51, '1743', '51'),
(52, 'DEB5', '52'),
(53, 'A13D', '53'),
(54, '959F', '54'),
(55, '7DB9', '55'),
(56, 'C3C8', '56'),
(57, '4454', '57'),
(58, '4F15', '58'),
(59, '8CC3', '59'),
(60, '2F21', '60'),
(61, 'EFEE', '61'),
(62, 'C8DF', '62'),
(63, '7913', '63'),
(64, '8F37', '64'),
(65, '9512', '65'),
(66, '1558', '66'),
(67, 'CCA0', '67'),
(68, 'D56F', '68'),
(69, '5AB9', '69'),
(70, 'F76B', '70'),
(71, '245F', '71'),
(72, 'C689', '72'),
(73, 'D5A5', '73'),
(74, '1EB7', '74'),
(75, '2019', '75'),
(76, '93E4', '76'),
(77, '5784', '77'),
(78, 'EAB0', '78'),
(79, '974C', '79'),
(80, 'D787', '80'),
(81, '319C', '81'),
(82, '700F', '82'),
(83, 'C687', '83'),
(84, '8B81', '84'),
(85, 'CD17', '85'),
(86, '7BF3', '86'),
(87, '9F1B', '87'),
(88, '467B', '88'),
(89, '867C', '89'),
(90, '52C6', '90'),
(91, 'E659', '91'),
(92, '3D6A', '92'),
(93, 'DF52', '93'),
(94, 'D547', '94'),
(95, '51D5', '95'),
(96, 'E748', '96'),
(97, 'CC6F', '97'),
(98, '4780', '98'),
(99, '6C47', '99'),
(100, 'C50D', '100');

-- --------------------------------------------------------

--
-- Structure de la table `TypePropriete`
--

CREATE TABLE IF NOT EXISTS `TypePropriete` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `TypePropriete`
--

INSERT INTO `TypePropriete` (`id`, `label`) VALUES
(1, 'Switch'),
(2, 'Lux'),
(3, 'Gens'),
(4, 'Celsius'),
(5, 'Inte');

-- --------------------------------------------------------

--
-- Structure de la table `TypeSpace`
--

CREATE TABLE IF NOT EXISTS `TypeSpace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(32) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `TypeSpace`
--

INSERT INTO `TypeSpace` (`id`, `label`, `description`) VALUES
(1, 'arcu. Nunc', 'ac mi eleifend egestas. Sed'),
(2, 'est, vitae', 'Cras eget nisi dictum augue'),
(3, 'pellentesque massa', 'Fusce aliquet magna a neque.'),
(4, 'erat vel', 'urna. Nunc quis arcu vel'),
(5, 'Duis dignissim', 'lectus ante dictum mi, ac');

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
