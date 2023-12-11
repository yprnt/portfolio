-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 11 Décembre 2023 à 17:04
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherents`
--

CREATE TABLE IF NOT EXISTS `adherents` (
  `Id_Adherent` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Date_naissance` date NOT NULL,
  `Date_adhesion` date NOT NULL,
  `Adresse` varchar(100) NOT NULL,
  `Num_tel` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  PRIMARY KEY (`Id_Adherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `adherents`
--

INSERT INTO `adherents` (`Id_Adherent`, `Nom`, `Prenom`, `Date_naissance`, `Date_adhesion`, `Adresse`, `Num_tel`, `mail`) VALUES
(1, 'Creoul', 'Djibril', '2002-03-22', '2019-08-06', '89 rue Jean Jaures', '0845231554', 'Djibril@gmail.com'),
(2, 'Prail', 'Juliette', '2006-02-21', '2021-12-21', '12 avenue des champs', '0650481513', 'JPrail@gmail.com'),
(3, 'Bail', 'Hector', '2007-09-27', '2015-01-01', '45 boulevard de Lyon', '0750458452', 'Hector.bail@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `ID_Auteur` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Date_naissance` date NOT NULL,
  PRIMARY KEY (`ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`ID_Auteur`, `Nom`, `Prenom`, `Date_naissance`) VALUES
('A23894', 'Alou', 'Sasha', '2000-06-14'),
('A41254', 'Vouil', 'Bertrand', '2006-02-08'),
('A88954', 'Brille', 'Alexis', '1998-12-15');

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

CREATE TABLE IF NOT EXISTS `emprunts` (
  `id_emprunt` int(11) NOT NULL AUTO_INCREMENT,
  `Date_emprunt` date NOT NULL,
  `duree` int(50) NOT NULL,
  `Id_Adherent` int(11) NOT NULL,
  `reference_livre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_emprunt`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `emprunts`
--

INSERT INTO `emprunts` (`id_emprunt`, `Date_emprunt`, `duree`, `Id_Adherent`, `reference_livre`) VALUES
(1, '2018-06-13', 4, 3, 'LR48461'),
(2, '2020-05-19', 6, 2, 'LS78551'),
(3, '2022-07-27', 10, 1, 'LA84121');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE IF NOT EXISTS `livres` (
  `reference_livre` varchar(50) NOT NULL,
  `Nbre_pages` int(11) NOT NULL,
  `ID_Auteur` varchar(50) NOT NULL,
  `Date_publication` date NOT NULL,
  `Genre` varchar(50) NOT NULL,
  `Disponibilite` tinyint(1) NOT NULL,
  `Nbre_emprunts` int(11) NOT NULL,
  `Etat` varchar(100) NOT NULL,
  `Nbre_exemplaire` int(100) NOT NULL,
  `Titre_livre` varchar(50) NOT NULL,
  PRIMARY KEY (`reference_livre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`reference_livre`, `Nbre_pages`, `ID_Auteur`, `Date_publication`, `Genre`, `Disponibilite`, `Nbre_emprunts`, `Etat`, `Nbre_exemplaire`, `Titre_livre`) VALUES
('LA84121', 50, 'A88954', '2012-02-28', 'Amoureux', 1, 105, 'Moyen', 4, 'Plus belle la boule'),
('LR48461', 150, 'A41254', '2009-02-23', 'Vie reel', 1, 80, 'Neuf', 3, 'Réseau informatique'),
('LS78551', 200, 'A23894', '2018-05-16', 'Science-Fiction', 0, 60, 'Très bon', 2, 'Prise de Mars');
