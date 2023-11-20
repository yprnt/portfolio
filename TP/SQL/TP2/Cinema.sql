-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 20 Novembre 2023 à 17:36
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE IF NOT EXISTS `artiste` (
  `idArtiste` varchar(50) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `anneNaiss` date NOT NULL,
  PRIMARY KEY (`idArtiste`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `artiste`
--

INSERT INTO `artiste` (`idArtiste`, `nom`, `prenom`, `anneNaiss`) VALUES
('545od48df4', 'Vriel', 'Anne', '0000-00-00'),
('5ah4f45zfb', 'Gabin', 'Jean', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `idFilm` varchar(50) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `année` date NOT NULL,
  `genre` varchar(50) NOT NULL,
  `resume` text NOT NULL,
  `idRealisateur` varchar(50) NOT NULL,
  `codePays` varchar(50) NOT NULL,
  PRIMARY KEY (`idFilm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `film`
--

INSERT INTO `film` (`idFilm`, `titre`, `année`, `genre`, `resume`, `idRealisateur`, `codePays`) VALUES
('a98fd4zzd12', 'Direction Mars', '0000-00-00', 'Science Fiction', 'Histoire de l''Homme voulant aller sur Mars ', '5ah4f45zfb', 'us898daf'),
('sfd8784fdsfd', 'Voyage au fond de l''ocean', '0000-00-00', 'Aventure', 'Histoire des découvertes sous marines !', '545od48df4', 'fr89avd');

-- --------------------------------------------------------

--
-- Structure de la table `internaute`
--

CREATE TABLE IF NOT EXISTS `internaute` (
  `email` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `internaute`
--

INSERT INTO `internaute` (`email`, `nom`, `prenom`, `region`) VALUES
('David@yahoo.com', 'Ofnel', 'David', 'Etats-Unis'),
('Rémy@yahoo.fr', 'Double', 'Remy', 'France');

-- --------------------------------------------------------

--
-- Structure de la table `notation`
--

CREATE TABLE IF NOT EXISTS `notation` (
  `id_notation` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `note` int(5) NOT NULL,
  `idFilm` varchar(100) NOT NULL,
  PRIMARY KEY (`id_notation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `notation`
--

INSERT INTO `notation` (`id_notation`, `email`, `note`, `idFilm`) VALUES
('no78458af', 'Rémy@yahoo.fr', 8, 'a98fd4zzd12'),
('no8afd51', 'David@yahoo.com', 5, 'sfd8784fdsfd');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `code_pays` varchar(50) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `langue` varchar(100) NOT NULL,
  PRIMARY KEY (`code_pays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`code_pays`, `nom`, `langue`) VALUES
('fr89avd', 'français', 'français'),
('us898daf', 'Etats-Unis', 'Anglais');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id_role` varchar(100) NOT NULL,
  `nomRole` varchar(100) NOT NULL,
  `idFilm` varchar(100) NOT NULL,
  `idActeur` varchar(100) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id_role`, `nomRole`, `idFilm`, `idActeur`) VALUES
('id784adssv5', 'Alien', 'a98fd4zzd12', '5ah4f45zfb'),
('idd8148asfd', 'Pirate', 'sfd8784fdsfd', '545od48df4');
