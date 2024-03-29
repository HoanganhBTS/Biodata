-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 29 mars 2024 à 07:48
-- Version du serveur : 5.7.24
-- Version de PHP : 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `biodata`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `compagnie`
--

CREATE TABLE `compagnie` (
  `comp` char(4) DEFAULT NULL,
  `nrue` int(3) DEFAULT NULL,
  `rue` char(20) DEFAULT NULL,
  `ville` char(15) DEFAULT 'Paris' COMMENT 'Par defaut : Paris',
  `nomComp` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tablebiodata`
--

CREATE TABLE `tablebiodata` (
  `id` varchar(50) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `datedenaissance` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tablebiodata`
--

INSERT INTO `tablebiodata` (`id`, `nom`, `adresse`, `datedenaissance`) VALUES
('B.006', 'Patrice Legrand', '6 Rue des granges\nMontreuil 93100', '1988-01-06'),
('B.007', 'Damien', '2 Rue de Lilas', '1993-12-29'),
('B.008', 'damien', 'evry', '2001-01-07'),
('B.009', 'Alain calibali', '2 Rue des heureux\nParis 75012', '2009-10-22'),
('B.010', 'Mikail', '15, rue de la fontaine', '2009-03-04'),
('B.011', 'Damien', '2 rue sheffer', '2009-01-09'),
('B.012', 'Youdvic', 'Lyon 3', '1985-01-11'),
('B.013', 'florent', '5 rue paris', '1985-01-09'),
('B.014', 'Personne', 'bfcghgfhgf', '1985-01-02'),
('B.018', 'Cartier', '15 Rue des lalandes, Paris 7', '1990-01-03'),
('B.019', 'X Y', 'Paris', '1990-01-01'),
('B.020', 'mmlk', 'kkk', '1980-01-01'),
('B.021', 'exemple1', 'Paris', '1987-01-01'),
('B.022', 'exemple2', 'exemple2', '1987-01-01'),
('B.023', 'Balbali', '1 rue de paris', '1980-01-03'),
('B.024', 'Test', 'Adresse de test', '1990-01-01'),
('B.015', 'Charles Oliveira', 'Favela', '1992-01-01');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
