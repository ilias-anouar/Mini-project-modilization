-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 14 avr. 2023 à 15:31
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
-- Base de données : `yas_brief`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprenant_`
--

CREATE TABLE `apprenant_` (
  `Id_apprenant_` int(11) NOT NULL,
  `nom_` varchar(50) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(53) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `apprenant_`
--

INSERT INTO `apprenant_` (`Id_apprenant_`, `nom_`, `prenom`, `email`, `password`) VALUES
(1, 'arun', 'jakson', 'arun@gmail.com', '$2y$10$s9hrmyoI3VUmT8jtOX8dJuL8JgmWwRok8fbVNFCJ4nkUWn'),
(2, 'rajesh', 'jony', 'rajesh@gmail.com', '$2y$10$xV.sR2HPAd2st.Apoq/Zg.7Du0vRzo7az7MbGm3YxYKacT'),
(3, 'moorthy', 'azart', 'moorthy@gmail.com', '$2y$10$xtOO9Fs1.lsZDlO3YSgfWuyPO84qYuaHNVpJpEPV6RZFxW'),
(4, 'raja', 'niki', 'raja@gmail.com', '$2y$10$1c7WixRFKwqcw3fOlhIjw.bqJ5IsrgiM9.SBpLiZJWXz37'),
(5, 'usha', 'kim', 'usha@gmail.com', '$2y$10$n6ENoFRQNSmRqQhSYaY4JOrU1FsEu6M3ag1xezPi6Cw5BW'),
(6, 'priya', 'doja', 'priya@gmail.com', '$2y$10$JcGPh9H6uib1NDvj0a./J.6ld5DVXth6d03JSqekVJAlK0'),
(7, 'Sundar', 'riana', 'Sundar@gmail.com', '$2y$10$bZWT2GCyfHQic6i3xgqTzuciCr6.OnbNsLGIqDi6fFxt0j'),
(8, 'Kavitha', 'ariana', 'Kavitha@gmail.com', '$2y$10$UrrzTEi5/A/dDno6BvBfvO26SAoh9Za.OpuTN8dAHVRoHH'),
(9, 'Dinesh', 'megan', 'Dinesh@gmail.com', '$2y$10$i1cgBS6MaeOj8WBu.nfKXOJoE8C.J4VOKGt2o7dmngA.Cp'),
(10, 'Hema', 'taylor', 'Dinesh@gmail.com', '$2y$10$Psm0iBwsJIGNJQMT05IncuzPeJruk4jVrF2I87Ldp32Lo6'),
(11, 'Gowri', 'selina', 'Gowri@gmail.com', '$2y$10$9Vk/6wDDLMLTsBXykQ5HJeTdvvpNSvpG/HQ6RYErslHUZY'),
(12, 'Ram', 'zine', 'Ram@gmail.com', '$2y$10$PuUlrKmPIC0hZBIM9bTWOeGQsE9S/xDMPqlpNhatI6KWbU'),
(13, 'Murugan', 'henry', 'Murugan@gmail.com', '$2y$10$t0vCp1DjAp7zNxlzpXRqIuxlV6YD0UzrTqf.4HRaouIcAj'),
(14, 'Jenifer', 'dounia', 'Jenifer@gmail.com', '$2y$10$0DzkgoHGi/FtAPeMKB8oXetIDAugTFTqug1FbIeRe2IrWd'),
(15, 'mamado', 'lini', 'mamado@gmail.com', '$2y$10$MGAGKoelU.LgUxqULtyIxeJ4uENkhzZO.z8D4QG0K/kwFo'),
(16, 'kamila', 'lamo', 'kamila@gmail.com', '$2y$10$gzVXHrCJ0lOptXNNwBuqWuXssF/jSr2QmlyXa9VvRPgoE/'),
(17, 'oranos', 'kaja', 'oranos@gmail.com', '$2y$10$LIj/EZ5wz37GiByAdAWuqO/BYp7voXAZvvWqa2HcYxrdfz'),
(18, 'hicham', 'mapo', 'hicham@gmail.com', '$2y$10$8IzJuI/pBD0gBNSqM.yuwO/306viyb0BsNOAkuvOpTwsiG'),
(19, 'yasin', 'ghirban', 'yasin@gmail.com', '$2y$10$CCqaFnnzNFhoSBtB.7phVO5iDa2t5T68u2.bTHfHha2o9n'),
(20, 'chiha', 'malak', 'chiha@gmail.com', '$2y$10$GTLjYB0h8zS4AcG026YjuOOf3iRKSYRUFNLMtjoPQDpfZY'),
(21, 'talib', 'mokbil', 'talib@gmail.com', '$2y$10$yDlH5A3cZkin28OCJLc4E.YB7vVLX37FKkpKDKDa6CH2en'),
(22, 'jamal', 'amokbil', 'jamal@gmail.com', '$2y$10$My2H3CP/aJV7n8/aXUEZT.ifgNp4UBwFeKR6PuhwPsVgYT'),
(23, 'milodi', 'jasi', 'milodi@gmail.com', '$2y$10$UMjzFQRV3Hf.TjyZUmYC.OGgYnJ/XaBgZuWUdqkl/jvED8'),
(24, 'nano', 'one', 'milodi@gmail.com', '$2y$10$DU/rdoWItx1vrm3mtlrkTuzlbp0kRpgWlcIFFcfTYsp/Po'),
(25, 'jamal', 'hamo', 'jamal@gmail.com', '$2y$10$nDHE1fJxVdEyCWomEl5MkON859FWJLCEx0rt4C5oBzTvri'),
(26, 'ploma', 'pija', 'ploma@gmail.com', '$2y$10$yv4YU2otk58eQ4lHyRCHcORgwKwmUfjZJms7Jb1ebhwt0k'),
(27, 'tiji', 'malkom', 'tiji@gmail.com', '$2y$10$pGzBPmwijVNP/l97YiBJ1uQNGmSHKJu7pXVgSXpf7QcYpG'),
(28, 'naomi', 'pitis', 'naomi@gmail.com', '$2y$10$J/TvD73eD8pszI84i7pQ5.u7UmYq7/Q4adjCmXizb3dHwA');

-- --------------------------------------------------------

--
-- Structure de la table `formateur`
--

CREATE TABLE `formateur` (
  `Id_Formateur` int(11) NOT NULL,
  `nom` varchar(58) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(61) NOT NULL,
  `competences` varchar(90) DEFAULT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `formateur`
--

INSERT INTO `formateur` (`Id_Formateur`, `nom`, `prenom`, `email`, `competences`, `password`) VALUES
(1, 'anouar', 'ilias', 'ilias@gmail.com', 'Gestion', '$2y$10$CSYDTj0WsXRdGGfMehNcs.bRNGH1/kVrYiFUQtfKb62aOgAfTPflW'),
(2, 'daifane', 'yasmine', 'yasmine@gmail.com', 'Self development', '$2y$10$TqKwHLnRnBX7sm.QbTYj8uJva6qdmDS9fZUekIesu9qv095Nqu87K'),
(3, 'buik', 'hussain', 'hussain@gmail.com', 'Sensibilisation', '$2y$10$UTPmh4AQKSCSQDbPIxGWseNUiOrmwvvt0zXg/E9bnLAaR6yrPeS86'),
(4, 'buich', 'fatima zahra', 'fatima@gmail.com', 'Technologie', '$2y$10$ydPd47SWyyI95f0aRutvtuMsnJBUokE9NsHjyoyWogrb7ioh9FpZm'),
(5, 'el ghali', 'ikram', 'ikram@gmail.com', 'Self development', '$2y$10$VDyGTkj0sQyWpgz62/Bfxeq/12f6JLI0npCufgnOvQrvR6LSUvUkW');

-- --------------------------------------------------------

--
-- Structure de la table `formation_`
--

CREATE TABLE `formation_` (
  `Id_formation_` int(11) NOT NULL,
  `sujet` varchar(50) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `masse_horaire` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `formation_`
--

INSERT INTO `formation_` (`Id_formation_`, `sujet`, `categorie`, `masse_horaire`) VALUES
(1, 'La communication', 'Self development', '20'),
(2, 'Diversité et inclusion', 'Gestion', '10'),
(3, 'Gestion du temps', 'Gestion', '15'),
(4, 'Rédaction professionnelle', 'Gestion', '20'),
(5, 'Gestion du stress', 'Gestion', '14'),
(6, 'Sensibilisation à la sécurité', 'Sensibilisation', '20'),
(7, 'Technologie d assistance', 'Technologie', '16'),
(8, 'L éthique', 'Self development', '10'),
(9, 'Le développement personnel', 'Self development', '20'),
(10, 'Le harcèlement sur le lieu de travail', 'Self development', '15');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `Id_session` int(11) NOT NULL,
  `Id_apprenant_` int(11) NOT NULL,
  `evaluation` varchar(50) DEFAULT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `Id_session` int(11) NOT NULL,
  `Date_debut` date NOT NULL,
  `Date_fin` date NOT NULL,
  `Places_max` int(11) NOT NULL,
  `Etat` varchar(50) NOT NULL,
  `Id_Formateur` int(11) NOT NULL,
  `Id_formation_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `apprenant_`
--
ALTER TABLE `apprenant_`
  ADD PRIMARY KEY (`Id_apprenant_`);

--
-- Index pour la table `formateur`
--
ALTER TABLE `formateur`
  ADD PRIMARY KEY (`Id_Formateur`);

--
-- Index pour la table `formation_`
--
ALTER TABLE `formation_`
  ADD PRIMARY KEY (`Id_formation_`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`Id_session`,`Id_apprenant_`),
  ADD UNIQUE KEY `Id_apprenant_` (`Id_apprenant_`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`Id_session`),
  ADD KEY `Id_Formateur` (`Id_Formateur`),
  ADD KEY `Id_formation_` (`Id_formation_`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `apprenant_`
--
ALTER TABLE `apprenant_`
  MODIFY `Id_apprenant_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `formateur`
--
ALTER TABLE `formateur`
  MODIFY `Id_Formateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `formation_`
--
ALTER TABLE `formation_`
  MODIFY `Id_formation_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `session`
--
ALTER TABLE `session`
  MODIFY `Id_session` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`Id_session`) REFERENCES `session` (`Id_session`),
  ADD CONSTRAINT `inscription_ibfk_2` FOREIGN KEY (`Id_apprenant_`) REFERENCES `apprenant_` (`Id_apprenant_`);

--
-- Contraintes pour la table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`Id_Formateur`) REFERENCES `formateur` (`Id_Formateur`),
  ADD CONSTRAINT `session_ibfk_2` FOREIGN KEY (`Id_formation_`) REFERENCES `formation_` (`Id_formation_`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
