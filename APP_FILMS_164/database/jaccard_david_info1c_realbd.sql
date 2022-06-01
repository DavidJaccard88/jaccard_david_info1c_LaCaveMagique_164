-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: jaccard_david_info1c_realbd

-- Détection si une autre base de donnée du même nom existe

DROP DATABASE IF EXISTS jaccard_david_info1c_realbd;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS jaccard_david_info1c_realbd;

-- Utilisation de cette base de donnée

USE jaccard_david_info1c_realbd;
-- --------------------------------------------------------
-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 01 Juin 2022 à 17:34
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `jaccard_david_info1c_realbd`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_avoir_cepage`
--

CREATE TABLE `t_avoir_cepage` (
  `id_avoir_cepage` int(11) NOT NULL,
  `fk_cepage` int(11) NOT NULL,
  `fk_bouteille` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_avoir_cepage`
--

INSERT INTO `t_avoir_cepage` (`id_avoir_cepage`, `fk_cepage`, `fk_bouteille`) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 5, 3),
(4, 6, 4),
(5, 5, 5),
(6, 9, 6),
(7, 8, 7),
(8, 4, 8),
(9, 9, 9),
(10, 7, 10),
(11, 1, 11),
(12, 6, 12),
(13, 6, 9),
(14, 4, 11),
(15, 5, 2),
(16, 1, 9),
(17, 10, 1),
(18, 4, 8),
(19, 6, 1),
(20, 9, 7),
(21, 8, 11),
(22, 4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `t_avoir_contenance`
--

CREATE TABLE `t_avoir_contenance` (
  `id_contenance` int(11) NOT NULL,
  `fk_bouteille` int(11) NOT NULL,
  `fk_contenance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_avoir_millesime`
--

CREATE TABLE `t_avoir_millesime` (
  `id_avoir_millesime` int(11) NOT NULL,
  `fk_bouteille` int(11) NOT NULL,
  `fk_millesime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_avoir_stock`
--

CREATE TABLE `t_avoir_stock` (
  `id_avoir_stock` int(11) NOT NULL,
  `fk_bouteille` int(11) NOT NULL,
  `fk_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_bouteille`
--

CREATE TABLE `t_bouteille` (
  `id_bouteille` int(30) NOT NULL,
  `nom_bouteille` varchar(30) NOT NULL,
  `prix_bouteille` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_bouteille`
--

INSERT INTO `t_bouteille` (`id_bouteille`, `nom_bouteille`, `prix_bouteille`) VALUES
(1, 'Couille du chateau', 12500),
(2, 'Le vin qui tue', 345),
(3, 'Vin bon', 12),
(4, 'Vin amerde', 3),
(5, 'Gut vin', 3003),
(6, 'Vin Gog', 121),
(7, 'Levinfou', 23),
(8, 'La petite pepite', 800),
(9, 'Petrus', 5460),
(10, 'Le vin de la mort', 12),
(11, 'Le vin bon mais pas trop', 11),
(12, 'le vin trou du cul', 2);

-- --------------------------------------------------------

--
-- Structure de la table `t_cepage_bouteille`
--

CREATE TABLE `t_cepage_bouteille` (
  `id_cepage_bouteille` int(30) NOT NULL,
  `cepage_bouteille` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_cepage_bouteille`
--

INSERT INTO `t_cepage_bouteille` (`id_cepage_bouteille`, `cepage_bouteille`) VALUES
(1, 'Boredeau'),
(2, 'Chasselas '),
(3, 'Pinot Noir'),
(4, 'Gamay'),
(5, 'Merlot'),
(6, 'Chardonnay'),
(7, 'Pinot Gris'),
(8, 'Arvine'),
(9, 'Pinot violetec'),
(10, 'Audi');

-- --------------------------------------------------------

--
-- Structure de la table `t_contenance_bouteille`
--

CREATE TABLE `t_contenance_bouteille` (
  `id_contenance_bouteille` int(11) NOT NULL,
  `contenance_bouteille` int(11) NOT NULL,
  `nomination_contenance_bouteille` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_contenance_bouteille`
--

INSERT INTO `t_contenance_bouteille` (`id_contenance_bouteille`, `contenance_bouteille`, `nomination_contenance_bouteille`) VALUES
(1, 0, 'La fillette'),
(2, 1, 'La bouteille'),
(3, 2, 'Le magnum'),
(4, 3, 'Le jéroboam'),
(5, 5, 'Le réhoboam'),
(6, 6, 'Le mathusalem'),
(7, 9, 'Le salmanazar'),
(8, 12, 'Le balthazar'),
(9, 15, 'Le nabuchodonosor'),
(10, 18, 'Le Salomon'),
(11, 26, 'Le souverain'),
(12, 27, 'Le primat'),
(13, 30, 'Le midas');

-- --------------------------------------------------------

--
-- Structure de la table `t_millesime_bouteille`
--

CREATE TABLE `t_millesime_bouteille` (
  `id_millesime_bouteille` int(11) NOT NULL,
  `millesime_bouteille` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_stock_bouteille`
--

CREATE TABLE `t_stock_bouteille` (
  `id_stock_bouteille` int(30) NOT NULL,
  `stock_bouteille` text NOT NULL,
  `date_arrive_bouteille` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `t_avoir_cepage`
--
ALTER TABLE `t_avoir_cepage`
  ADD PRIMARY KEY (`id_avoir_cepage`),
  ADD KEY `fk_sepage` (`fk_cepage`),
  ADD KEY `fk_sepage_2` (`fk_cepage`),
  ADD KEY `fk_bouteille` (`fk_bouteille`);

--
-- Index pour la table `t_avoir_contenance`
--
ALTER TABLE `t_avoir_contenance`
  ADD PRIMARY KEY (`id_contenance`),
  ADD UNIQUE KEY `fk_bouteille` (`fk_bouteille`,`fk_contenance`),
  ADD KEY `fk_contenance` (`fk_contenance`);

--
-- Index pour la table `t_avoir_millesime`
--
ALTER TABLE `t_avoir_millesime`
  ADD PRIMARY KEY (`id_avoir_millesime`),
  ADD KEY `fk_bouteille` (`fk_bouteille`,`fk_millesime`),
  ADD KEY `fk_millesime` (`fk_millesime`);

--
-- Index pour la table `t_avoir_stock`
--
ALTER TABLE `t_avoir_stock`
  ADD PRIMARY KEY (`id_avoir_stock`),
  ADD KEY `fk_bouteille` (`fk_bouteille`,`fk_stock`),
  ADD KEY `fk_stock` (`fk_stock`);

--
-- Index pour la table `t_bouteille`
--
ALTER TABLE `t_bouteille`
  ADD PRIMARY KEY (`id_bouteille`);

--
-- Index pour la table `t_cepage_bouteille`
--
ALTER TABLE `t_cepage_bouteille`
  ADD PRIMARY KEY (`id_cepage_bouteille`);

--
-- Index pour la table `t_contenance_bouteille`
--
ALTER TABLE `t_contenance_bouteille`
  ADD PRIMARY KEY (`id_contenance_bouteille`);

--
-- Index pour la table `t_millesime_bouteille`
--
ALTER TABLE `t_millesime_bouteille`
  ADD PRIMARY KEY (`id_millesime_bouteille`);

--
-- Index pour la table `t_stock_bouteille`
--
ALTER TABLE `t_stock_bouteille`
  ADD PRIMARY KEY (`id_stock_bouteille`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `t_avoir_cepage`
--
ALTER TABLE `t_avoir_cepage`
  MODIFY `id_avoir_cepage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `t_avoir_contenance`
--
ALTER TABLE `t_avoir_contenance`
  MODIFY `id_contenance` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_avoir_millesime`
--
ALTER TABLE `t_avoir_millesime`
  MODIFY `id_avoir_millesime` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_avoir_stock`
--
ALTER TABLE `t_avoir_stock`
  MODIFY `id_avoir_stock` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_bouteille`
--
ALTER TABLE `t_bouteille`
  MODIFY `id_bouteille` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `t_cepage_bouteille`
--
ALTER TABLE `t_cepage_bouteille`
  MODIFY `id_cepage_bouteille` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `t_contenance_bouteille`
--
ALTER TABLE `t_contenance_bouteille`
  MODIFY `id_contenance_bouteille` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `t_millesime_bouteille`
--
ALTER TABLE `t_millesime_bouteille`
  MODIFY `id_millesime_bouteille` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_stock_bouteille`
--
ALTER TABLE `t_stock_bouteille`
  MODIFY `id_stock_bouteille` int(30) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `t_avoir_cepage`
--
ALTER TABLE `t_avoir_cepage`
  ADD CONSTRAINT `t_avoir_cepage_ibfk_1` FOREIGN KEY (`fk_cepage`) REFERENCES `t_cepage_bouteille` (`id_cepage_bouteille`),
  ADD CONSTRAINT `t_avoir_cepage_ibfk_2` FOREIGN KEY (`fk_bouteille`) REFERENCES `t_bouteille` (`id_bouteille`);

--
-- Contraintes pour la table `t_avoir_contenance`
--
ALTER TABLE `t_avoir_contenance`
  ADD CONSTRAINT `t_avoir_contenance_ibfk_1` FOREIGN KEY (`fk_contenance`) REFERENCES `t_contenance_bouteille` (`id_contenance_bouteille`),
  ADD CONSTRAINT `t_avoir_contenance_ibfk_2` FOREIGN KEY (`fk_bouteille`) REFERENCES `t_bouteille` (`id_bouteille`);

--
-- Contraintes pour la table `t_avoir_millesime`
--
ALTER TABLE `t_avoir_millesime`
  ADD CONSTRAINT `t_avoir_millesime_ibfk_1` FOREIGN KEY (`fk_millesime`) REFERENCES `t_millesime_bouteille` (`id_millesime_bouteille`),
  ADD CONSTRAINT `t_avoir_millesime_ibfk_2` FOREIGN KEY (`fk_bouteille`) REFERENCES `t_bouteille` (`id_bouteille`);

--
-- Contraintes pour la table `t_avoir_stock`
--
ALTER TABLE `t_avoir_stock`
  ADD CONSTRAINT `t_avoir_stock_ibfk_1` FOREIGN KEY (`fk_stock`) REFERENCES `t_stock_bouteille` (`id_stock_bouteille`),
  ADD CONSTRAINT `t_avoir_stock_ibfk_2` FOREIGN KEY (`fk_bouteille`) REFERENCES `t_bouteille` (`id_bouteille`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
