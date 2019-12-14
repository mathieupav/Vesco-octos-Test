-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 14 Décembre 2019 à 18:53
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `app`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `idAdmin` int(11) NOT NULL,
  `firstNameAdmin` varchar(256) DEFAULT NULL,
  `lastNameAdmin` varchar(256) DEFAULT NULL,
  `telAdmin` int(11) DEFAULT NULL,
  `emailAdmin` varchar(256) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `administrateur`
--

INSERT INTO `administrateur` (`idAdmin`, `firstNameAdmin`, `lastNameAdmin`, `telAdmin`, `emailAdmin`, `password`) VALUES
(1, 'mat', 'mat', 1515, 'mat@laposte.net', 'matmat');

-- --------------------------------------------------------

--
-- Structure de la table `asup`
--

CREATE TABLE `asup` (
  `id` int(11) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `asup`
--

INSERT INTO `asup` (`id`, `Prenom`, `Status`) VALUES
(1, 'John', 0),
(2, 'John', 0),
(3, 'Kevin', 0);

-- --------------------------------------------------------

--
-- Structure de la table `particulier`
--

CREATE TABLE `particulier` (
  `Userid` int(11) NOT NULL,
  `Lastname` varchar(256) DEFAULT NULL,
  `Firstname` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `Sexe` int(11) DEFAULT '1',
  `password` varchar(256) DEFAULT NULL,
  `nationalite` varchar(256) DEFAULT NULL,
  `pays_residence` varchar(256) DEFAULT NULL,
  `adresse` varchar(500) DEFAULT NULL,
  `code_postal` int(11) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `particulier`
--

INSERT INTO `particulier` (`Userid`, `Lastname`, `Firstname`, `Email`, `Sexe`, `password`, `nationalite`, `pays_residence`, `adresse`, `code_postal`, `telephone`) VALUES
(1, 'pavaut', 'mathieu', 'mat@laposte.net', 1, 'matmat', 'France', 'France', '24 rue Carnot Palaiseau', 91120, 1224),
(2, 'beroud', 'come', 'bebe53@gmail.com', 1, 'bebe', 'France', 'France', '15 rue du chatelin Massy', 91300, 15151),
(3, 'Belmondo', 'Camille', 'belmond@free.fr', 2, 'gege', 'France', 'France', '151 avenue Jean Moulin Savigny%Orge', 91600, 9598489),
(4, 'Bravo', 'Jean-Michel', 'bravo@gmail.com', 1, 'bravo', 'France', 'France', '54, avenue Georges Brassens,Corbeil-Essonne', 91100, 55484),
(5, 'El Oua', 'Saf', 'safsaf', 1, '', 'France', 'maroc', '15rue', 91120, 1515),
(9, NULL, NULL, NULL, 1, NULL, 'France', NULL, NULL, NULL, NULL),
(8, 'e', 's', 's', 1, '', 'France', 'France', 'e', 91120, 11);

-- --------------------------------------------------------

--
-- Structure de la table `policier`
--

CREATE TABLE `policier` (
  `idCop` int(11) NOT NULL,
  `lastNameCop` varchar(256) DEFAULT NULL,
  `firstNameCop` varchar(256) DEFAULT NULL,
  `policeStation` varchar(256) DEFAULT NULL,
  `emailCop` varchar(256) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `telephoneCop` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `policier`
--

INSERT INTO `policier` (`idCop`, `lastNameCop`, `firstNameCop`, `policeStation`, `emailCop`, `password`, `telephoneCop`) VALUES
(1, 'pav', 'mat', 'Palaiseau', 'mat@laposte.net', 'matmat', 1515);

-- --------------------------------------------------------

--
-- Structure de la table `testparticulier`
--

CREATE TABLE `testparticulier` (
  `testId` int(11) NOT NULL,
  `lastname` varchar(256) DEFAULT NULL,
  `firstname` varchar(256) DEFAULT NULL,
  `dateDuTest` date DEFAULT NULL,
  `score` decimal(4,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `testpolicier`
--

CREATE TABLE `testpolicier` (
  `idTestPolicier` int(11) NOT NULL,
  `lastnameCop` varchar(256) DEFAULT NULL,
  `firstNameCop` varchar(256) DEFAULT NULL,
  `lastNameChecked` varchar(256) DEFAULT NULL,
  `firstNameChecked` varchar(256) DEFAULT NULL,
  `dateDuTest` date DEFAULT NULL,
  `lieuDuTest` varchar(256) DEFAULT NULL,
  `score` decimal(4,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`idAdmin`),
  ADD UNIQUE KEY `emailAdmin` (`emailAdmin`);

--
-- Index pour la table `asup`
--
ALTER TABLE `asup`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `particulier`
--
ALTER TABLE `particulier`
  ADD PRIMARY KEY (`Userid`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `telephone` (`telephone`);

--
-- Index pour la table `policier`
--
ALTER TABLE `policier`
  ADD PRIMARY KEY (`idCop`),
  ADD UNIQUE KEY `emailCop` (`emailCop`),
  ADD UNIQUE KEY `telephoneCop` (`telephoneCop`);

--
-- Index pour la table `testparticulier`
--
ALTER TABLE `testparticulier`
  ADD PRIMARY KEY (`testId`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `firstname` (`firstname`);

--
-- Index pour la table `testpolicier`
--
ALTER TABLE `testpolicier`
  ADD PRIMARY KEY (`idTestPolicier`),
  ADD KEY `lastnameCop` (`lastnameCop`),
  ADD KEY `firstNameCop` (`firstNameCop`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `asup`
--
ALTER TABLE `asup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `particulier`
--
ALTER TABLE `particulier`
  MODIFY `Userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `policier`
--
ALTER TABLE `policier`
  MODIFY `idCop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `testparticulier`
--
ALTER TABLE `testparticulier`
  MODIFY `testId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `testpolicier`
--
ALTER TABLE `testpolicier`
  MODIFY `idTestPolicier` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
