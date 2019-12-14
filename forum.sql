-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 14 Décembre 2019 à 18:52
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `forum`
--

-- --------------------------------------------------------

--
-- Structure de la table `conversation`
--

CREATE TABLE `conversation` (
  `id` int(11) DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `datePost` datetime DEFAULT NULL,
  `idConversation` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `conversation`
--

INSERT INTO `conversation` (`id`, `author`, `content`, `datePost`, `idConversation`) VALUES
(13, 'paul', 'réponse', '2019-12-04 08:15:59', 15),
(7, 'Kevin', 'aha', '2019-12-02 21:47:17', 13),
(7, 'Kevin', 'tant mieux', '2019-12-02 21:47:49', 14);

-- --------------------------------------------------------

--
-- Structure de la table `liste_sujet`
--

CREATE TABLE `liste_sujet` (
  `id` int(11) NOT NULL,
  `topicSubject` varchar(255) COLLATE utf8_bin NOT NULL,
  `Content` text COLLATE utf8_bin NOT NULL,
  `dateCreation` datetime DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `liste_sujet`
--

INSERT INTO `liste_sujet` (`id`, `topicSubject`, `Content`, `dateCreation`, `author`) VALUES
(14, 'test', 'Texte', '2019-12-04 09:30:12', 'SAifeddine'),
(7, 'Connexion3', 'Bonsoir messieur,\r\nJe reviens vers vous suite au differents problemes de connexions ayant survenus dans la nuit du 11 mai\r\n', '2019-12-02 21:41:03', 'Kevin'),
(8, 'Connexion3', 'Bonsoir messieur,\r\nJe reviens vers vous suite au differents problemes de connexions ayant survenus dans la nuit du 11 mai\r\n', '2019-12-02 21:41:20', 'Kevin');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`idConversation`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `liste_sujet`
--
ALTER TABLE `liste_sujet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `conversation`
--
ALTER TABLE `conversation`
  MODIFY `idConversation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `liste_sujet`
--
ALTER TABLE `liste_sujet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
