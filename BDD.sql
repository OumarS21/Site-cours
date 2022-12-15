
-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 14 Décembre 2022 à 10:41
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `rh`
--

-- --------------------------------------------------------

--
-- Structure de la table `employé`
--

CREATE TABLE IF NOT EXISTS `employé` (
  `Num_employe` int(11) NOT NULL,
  `Nom` text NOT NULL,
  `Prénom` text NOT NULL,
  `Sexe` text NOT NULL,
  `Salaire` float NOT NULL,
  `Type_Contrat` text NOT NULL,
  `Fonction` varchar(20) NOT NULL,
  `Site` varchar(50) NOT NULL,
  `Date_embauche` date NOT NULL,
  `Date_naissance` date NOT NULL,
  `NumSvr` int(11) NOT NULL,
  PRIMARY KEY (`Num_employe`),
  KEY `NumSvr` (`NumSvr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employé`
--

INSERT INTO `employé` (`Num_employe`, `Nom`, `Prénom`, `Sexe`, `Salaire`, `Type_Contrat`, `Fonction`, `Site`, `Date_embauche`, `Date_naissance`, `NumSvr`) VALUES
(1144, 'AMALLAH', 'Mourad', 'Masculin', 15000, 'CDD', 'Cadre', 'Creteil', '2020-09-14', '2000-01-08', 94550),
(1194, 'GOMEZ', 'Selena', 'Feminin', 5000, 'CDI', 'Salarié', 'Paris', '2021-10-01', '1995-03-21', 94200);

-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE IF NOT EXISTS `intervenir` (
  `Num_interv` int(11) NOT NULL,
  `Num_Projet` int(11) NOT NULL,
  `Num_employe` int(11) NOT NULL,
  `Nb_heures` int(20) NOT NULL,
  PRIMARY KEY (`Num_interv`),
  KEY `Num_projet` (`Num_Projet`,`Num_employe`),
  KEY `Num_employe` (`Num_employe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `intervenir`
--

INSERT INTO `intervenir` (`Num_interv`, `Num_Projet`, `Num_employe`, `Nb_heures`) VALUES
(1400, 4400, 1144, 35),
(1500, 4500, 1194, 30);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `Num_Projet` int(11) NOT NULL,
  `Libelle_Projet` text NOT NULL,
  `NumSvr` int(11) NOT NULL,
  PRIMARY KEY (`Num_Projet`),
  KEY `NumSvr` (`NumSvr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`Num_Projet`, `Libelle_Projet`, `NumSvr`) VALUES
(4400, 'Ouai', 94550),
(4500, 'Columbus', 94200);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `NumSvr` int(11) NOT NULL AUTO_INCREMENT,
  `NomSvr` text NOT NULL,
  PRIMARY KEY (`NumSvr`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=94551 ;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`NumSvr`, `NomSvr`) VALUES
(94200, 'Salarié'),
(94550, 'Cadre');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `employé`
--
ALTER TABLE `employé`
  ADD CONSTRAINT `employ@0p_ibfk_1` FOREIGN KEY (`NumSvr`) REFERENCES `service` (`NumSvr`);

--
-- Contraintes pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD CONSTRAINT `intervenir_ibfk_2` FOREIGN KEY (`Num_employe`) REFERENCES `employé` (`Num_employe`),
  ADD CONSTRAINT `intervenir_ibfk_1` FOREIGN KEY (`Num_Projet`) REFERENCES `projet` (`Num_Projet`);

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`NumSvr`) REFERENCES `service` (`NumSvr`);