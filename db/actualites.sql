-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 15 déc. 2023 à 02:17
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `news`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualites`
--

CREATE TABLE `actualites` (
  `id` int(11) NOT NULL,
  `titre` varchar(90) NOT NULL,
  `description` text NOT NULL,
  `date_publication` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `actualites`
--

INSERT INTO `actualites` (`id`, `titre`, `description`, `date_publication`) VALUES
(1, 'bonjour', 'bonjour hadil comment cv aujoud\'hui', '2023-11-28 11:34:02'),
(2, 'the Beautiful love ', '\"Beautiful Love\" can mean different things to different people. What aspect or context are you referring to?', '2023-12-13 12:02:47'),
(3, 'the Beautiful love ', '\"Beautiful Love\" can mean different things to different people. What aspect or context are you referring to?', '2023-12-13 12:28:59'),
(4, 'goodmorning', 'hello world ', '2023-12-14 20:57:23'),
(6, 'bonjour', 'abir', '2023-12-14 23:51:46'),
(7, 'bonjour', 'hello world', '2023-12-15 00:17:20'),
(8, 'bonjour', 'hello world', '2023-12-15 00:17:31'),
(9, 'bonjour', 'hello world', '2023-12-15 00:18:23'),
(10, '\"Des scientifiques font une découverte révolutionnaire dans la lutte contre le changement ', 'Des chercheurs annoncent une avancée majeure dans la lutte contre le changement climatique, ouvrant la voie à des solutions innovantes pour atténuer les impacts environnementaux.', '2023-12-15 01:06:29'),
(11, '\"Des chercheurs découvrent une nouvelle espèce marine étonnante au fond de l\'océan.\"', 'Des scientifiques ont récemment fait une découverte fascinante en explorant les profondeurs de l\'océan, mettant en lumière une espèce marine jusqu\'alors inconnue. Cette créature étonnante, caractérisée par des traits uniques et des comportements intrigants, offre de nouvelles perspectives sur la biodiversité marine. Les chercheurs sont enthousiastes quant aux implications de cette découverte pour la compréhension de l\'écosystème océanique et son rôle dans l\'évolution des formes de vie aquatique.\r\n\r\n\r\n\r\n\r\n\r\n', '2023-12-15 01:31:57'),
(12, '\"Événement majeur en cours : Les dernières actualités qui façonnent l\'avenir.\"', '\"Plongez au cœur de l\'action avec notre couverture complète de l\'événement majeur en cours qui redéfinit le paysage actuel. Explorez les dernières actualités, découvrez les acteurs clés et comprenez l\'impact profond que ces développements auront sur le monde de demain. Restez informé et soyez partie prenante de l\'histoire en train de se dérouler sous nos yeux, avec des analyses approfondies et des perspectives qui dévoilent les forces motrices qui façonnent l\'avenir.\"', '2023-12-15 01:48:10'),
(13, 'abir', 'bonjour aboura ', '2023-12-15 02:01:38');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualites`
--
ALTER TABLE `actualites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualites`
--
ALTER TABLE `actualites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
