-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 14 jan. 2023 à 11:06
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_inscription`
--

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id` int(11) NOT NULL,
  `code_classe` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `id_filiere` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id`, `code_classe`, `nom`, `id_filiere`) VALUES
(3, 'L1', 'LICENCE 1', 1),
(4, 'L2', 'LICENCE 2', 1),
(5, 'L3', 'LICENCE 3', 1),
(6, 'L1', 'LICENCE 1', 2),
(7, 'L2', 'LICENCE 2', 2),
(8, 'L3', 'LICENCE 3', 2),
(9, 'L1', 'LICENCE 1', 3),
(10, 'L2', 'LICENCE 2', 3),
(11, 'L3', 'LICENCE 3', 3),
(12, 'L1', 'LICENCE 1', 4),
(13, 'L2', 'LICENCE 2', 4),
(14, 'L3', 'LICENCE 3', 4),
(15, 'L1', 'LICENCE 1', 5),
(16, 'L2', 'LICENCE 2', 5),
(17, 'L3', 'LICENCE 3', 5),
(18, 'L1', 'LICENCE 1', 6),
(19, 'L2', 'LICENCE 2', 6),
(20, 'L3', 'LICENCE 3', 6),
(21, 'L1', 'LICENCE 1', 7),
(22, 'L2', 'LICENCE 2', 7),
(23, 'L3', 'LICENCE 3', 8),
(24, 'L1', 'LICENCE 1', 8),
(25, 'L2', 'LICENCE 2', 8),
(26, 'L3', 'LICENCE 3', 7),
(27, 'L1', 'LICENCE 1 MEDECINE', 9);

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `id` int(11) NOT NULL,
  `code_depart` varchar(255) DEFAULT NULL,
  `nom_departement` varchar(255) DEFAULT NULL,
  `chef_departement` varchar(255) DEFAULT NULL,
  `secretaire` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id`, `code_depart`, `nom_departement`, `chef_departement`, `secretaire`) VALUES
(1, 'DSJ', 'DEPARTEMENT SCIENCES JURIDIQUES', 'bamba gueye', 'fatou'),
(2, 'DSP', 'DEPARTEMENT SCIENCES POLITIQUE', 'PR BIRA GUEYE', 'BINTA'),
(3, 'DSG', 'DEPARTEMENT DES SCIENCES GESTION', 'MR DIALLO', 'IBRAHIMA'),
(4, 'DSE', 'DEPARTEMENT DES SCIENCES ECONOMIQUE', 'PR BOLY', 'DRAMANE'),
(5, 'DST', 'DEPARTEMENT SCIENCES ET TECHNOLOGIE', 'bamba gueye', 'fatou'),
(6, 'DSA', 'DEPARTEMENT SCIENCES AGROALIMENTAIRE', 'SOULEYMANE', 'MM FALL'),
(7, 'DM', 'DEPARTEMENT MEDECINE', 'DR FALLOU', 'OULYMATA'),
(8, 'DSP', 'DEPARTEMENT SANTE PUBLIC ', 'KARA SAMB', 'FAFABHE');

-- --------------------------------------------------------

--
-- Structure de la table `dossier`
--

CREATE TABLE `dossier` (
  `id` int(11) NOT NULL,
  `id_classe` int(11) DEFAULT NULL,
  `nom_candidat` varchar(255) DEFAULT NULL,
  `prenom_candidat` varchar(255) DEFAULT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `naissance` date DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `nationalite` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `ecole_dorigine` varchar(255) DEFAULT NULL,
  `diplome_obtenu` varchar(255) DEFAULT NULL,
  `date_obtention` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dossier`
--

INSERT INTO `dossier` (`id`, `id_classe`, `nom_candidat`, `prenom_candidat`, `sexe`, `naissance`, `adresse`, `nationalite`, `email`, `telephone`, `ecole_dorigine`, `diplome_obtenu`, `date_obtention`) VALUES
(6, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `id` int(11) NOT NULL,
  `code_filiere` varchar(255) DEFAULT NULL,
  `nom_filiere` varchar(255) DEFAULT NULL,
  `id_departement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`id`, `code_filiere`, `nom_filiere`, `id_departement`) VALUES
(1, 'DP', 'DROIT PUBLIC', 1),
(2, 'DPV', 'DROIT PRIVE', 1),
(3, 'FC', 'FINANCE&COMPTABILITE', 3),
(4, 'BA', 'BANQUE & ASSURANCE', 3),
(5, 'INFO', 'INFORMATIQUE', 5),
(6, 'RT', 'RESEAU & TELECOMINICATION', 5),
(7, 'IA', 'INDUSTRIES AGROALIMENTAIRES', 6),
(8, 'APV', 'AGRONOMIE & PRODUCTION VEGETALE', 6),
(9, 'MG', 'MEDECINE GENERALE', 7),
(10, 'SC', 'SANTE COMMUNAUTAIRE', 8),
(11, 'MQL', 'MANAGEMENT DE LA QUALITE AU LABORATOIRE', 8);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_filiere` (`id_filiere`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dossier`
--
ALTER TABLE `dossier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_classe` (`id_classe`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_departement` (`id_departement`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `dossier`
--
ALTER TABLE `dossier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `classe`
--
ALTER TABLE `classe`
  ADD CONSTRAINT `fk_filiere` FOREIGN KEY (`id_filiere`) REFERENCES `filiere` (`id`);

--
-- Contraintes pour la table `dossier`
--
ALTER TABLE `dossier`
  ADD CONSTRAINT `fk_classe` FOREIGN KEY (`id_classe`) REFERENCES `classe` (`id`);

--
-- Contraintes pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD CONSTRAINT `fk_departement` FOREIGN KEY (`id_departement`) REFERENCES `departement` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
