-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 12 Janvier 2023 à 09:49
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `commande`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `num_categorie` int(255) NOT NULL,
  `nom_categorie` varchar(255) NOT NULL,
  `det_reference` varchar(100) NOT NULL,
  `cat_remise` varchar(255) NOT NULL,
  PRIMARY KEY (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categorie`
--


-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `clients_id` varchar(255) NOT NULL,
  `client_civilite` varchar(20) NOT NULL,
  `client_nom` varchar(255) NOT NULL,
  `client_prenom` varchar(255) NOT NULL,
  `client_dep` varchar(255) NOT NULL,
  `client_ville` varchar(255) NOT NULL,
  `num_tel` int(11) NOT NULL,
  PRIMARY KEY (`clients_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `client`
--


-- --------------------------------------------------------

--
-- Structure de la table `commende`
--

CREATE TABLE IF NOT EXISTS `commende` (
  `com_num` int(255) NOT NULL,
  `com_client` varchar(255) NOT NULL,
  `com_date` date NOT NULL,
  `com_montant` int(255) NOT NULL,
  `clients_id` varchar(255) NOT NULL,
  `produit_ref` varchar(255) NOT NULL,
  PRIMARY KEY (`com_num`),
  KEY `clients_id` (`clients_id`),
  KEY `produit_ref` (`produit_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commende`
--


-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `produit_ref` varchar(255) NOT NULL,
  `produit_nom` varchar(255) NOT NULL,
  `produit_prix` int(100) NOT NULL,
  `produits_poids` int(255) NOT NULL,
  `produit_vues` int(255) NOT NULL,
  `produit_stock` varchar(255) NOT NULL,
  `produit_code` varchar(255) NOT NULL,
  `num_categorie` int(255) NOT NULL,
  PRIMARY KEY (`produit_ref`),
  KEY `num_categorie` (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `produit`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commende`
--
ALTER TABLE `commende`
  ADD CONSTRAINT `commende_ibfk_2` FOREIGN KEY (`produit_ref`) REFERENCES `produit` (`produit_ref`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commende_ibfk_1` FOREIGN KEY (`clients_id`) REFERENCES `client` (`clients_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`num_categorie`) REFERENCES `categorie` (`num_categorie`) ON DELETE CASCADE ON UPDATE CASCADE;