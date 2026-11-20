-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 20 nov. 2026 à 08:34
-- Version du serveur : 8.0.39
-- Version de PHP : 8.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `location_voitures`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `Nom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Prenom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Clients` int NOT NULL,
  `Numero_Permi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`Nom`, `Prenom`, `ID_Clients`, `Numero_Permi`) VALUES
('AAA', 'BBB', 10, 1000),
('111', '222', 20, 2000);

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE `locations` (
  `Immatriculation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Clients` int NOT NULL,
  `date_location` date NOT NULL,
  `Numero_Location` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `locations`
--

INSERT INTO `locations` (`Immatriculation`, `ID_Clients`, `date_location`, `Numero_Location`) VALUES
('AA-123-BB', 10, '2026-11-01', 234),
('CC-456-DD', 20, '2026-11-02', 123);

-- --------------------------------------------------------

--
-- Structure de la table `réparation`
--

CREATE TABLE `réparation` (
  `Num_reparation` int NOT NULL,
  `Date_reparation` date NOT NULL,
  `Type_panne` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Lieu_reparation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Prix_reparation` int NOT NULL,
  `Nbre_jours_reparation` int NOT NULL,
  `Adresse_mecanicien` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Immatriculation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `réparation`
--

INSERT INTO `réparation` (`Num_reparation`, `Date_reparation`, `Type_panne`, `Lieu_reparation`, `Prix_reparation`, `Nbre_jours_reparation`, `Adresse_mecanicien`, `Immatriculation`) VALUES
(1, '2026-11-27', 'Huile de tournesol ', 'Dans l\'ocean', 1, 10, 'Mars', 'AA-123-BB'),
(2, '2026-11-28', 'Lancer de javelot', 'Nul part', 2, 20, 'Terre', 'CC-456-DD');

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE `voitures` (
  `date_circulation` date NOT NULL,
  `immatriculation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `killometrage` int NOT NULL,
  `marque` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `voitures`
--

INSERT INTO `voitures` (`date_circulation`, `immatriculation`, `killometrage`, `marque`) VALUES
('2026-11-29', 'AA-123-BB', 123, 'Audi'),
('2026-11-30', 'CC-456-DD', 456, 'Dodge');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ID_Clients`);

--
-- Index pour la table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`Immatriculation`),
  ADD KEY `ID_Clients` (`ID_Clients`);

--
-- Index pour la table `réparation`
--
ALTER TABLE `réparation`
  ADD PRIMARY KEY (`Num_reparation`),
  ADD KEY `Immatriculation` (`Immatriculation`);

--
-- Index pour la table `voitures`
--
ALTER TABLE `voitures`
  ADD PRIMARY KEY (`immatriculation`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`ID_Clients`) REFERENCES `clients` (`ID_Clients`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `réparation`
--
ALTER TABLE `réparation`
  ADD CONSTRAINT `réparation_ibfk_1` FOREIGN KEY (`Immatriculation`) REFERENCES `voitures` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `voitures`
--
ALTER TABLE `voitures`
  ADD CONSTRAINT `voitures_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `locations` (`Immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
