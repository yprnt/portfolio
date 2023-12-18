-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 18 Décembre 2023 à 17:42
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Pays_BD`
--

-- --------------------------------------------------------

--
-- Structure de la table `communes`
--

CREATE TABLE IF NOT EXISTS `communes` (
  `code_commune` int(11) NOT NULL,
  `nom_commune` varchar(50) NOT NULL,
  `population_VF` int(11) NOT NULL,
  `surface` double NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `num_departement` int(11) NOT NULL,
  PRIMARY KEY (`code_commune`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `communes`
--

INSERT INTO `communes` (`code_commune`, `nom_commune`, `population_VF`, `surface`, `longitude`, `latitude`, `num_departement`) VALUES
(1, 'Antony', 61793, 956, 2.3, 48.75, 92),
(2, 'Marseille', 850636, 240.62, 5.3698, 43.2965, 13),
(3, 'Lyon', 515695, 47.87, 4.8357, 45.764, 69);

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

CREATE TABLE IF NOT EXISTS `departements` (
  `num_departement` int(11) NOT NULL,
  `nom_departement` varchar(50) NOT NULL,
  `code_region` varchar(50) NOT NULL,
  PRIMARY KEY (`num_departement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `departements`
--

INSERT INTO `departements` (`num_departement`, `nom_departement`, `code_region`) VALUES
(13, 'Bouches-du-Rhône', 'PACA'),
(69, 'Rhône', 'ARA'),
(92, 'Hauts-de-Seine', 'IDF');

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `code_region` varchar(50) NOT NULL,
  `nom_region` varchar(11) NOT NULL,
  PRIMARY KEY (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `regions`
--

INSERT INTO `regions` (`code_region`, `nom_region`) VALUES
('ARA', 'Auvergne-Rh'),
('IDF', 'Île-de-Fran'),
('PACA', 'Provence-Al');
