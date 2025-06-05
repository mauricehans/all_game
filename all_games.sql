-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 02 juin 2025 à 16:07
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `all_games`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250602090734', '2025-06-02 11:07:54', 503),
('DoctrineMigrations\\Version20250602093104', '2025-06-02 11:31:25', 273);

-- --------------------------------------------------------

--
-- Structure de la table `editor`
--

CREATE TABLE `editor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `editor`
--

INSERT INTO `editor` (`id`, `name`) VALUES
(25, 'Psyonix'),
(26, 'Toby Fox'),
(27, 'Epic Games'),
(28, 'PUBG Corporation'),
(29, 'Rockstar Games'),
(30, 'CD Projekt'),
(31, 'Mojang'),
(32, 'InnerSloth'),
(33, 'Valve Corporation'),
(34, 'Riot Games'),
(35, 'Blizzard Entertainment'),
(36, 'Bethesda Game Studios');

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `editor_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `release_date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `game`
--

INSERT INTO `game` (`id`, `editor_id`, `name`, `description`, `release_date`) VALUES
(1, 25, 'Rocket League', 'A high-paced hybrid of arcade-style soccer and vehicular mayhem...', '2015-07-07 00:00:00'),
(2, 26, 'Undertale', 'A unique role-playing game that allows the player to fight or talk their way through...', '2015-09-15 00:00:00'),
(3, 27, 'Fortnite', 'A battle royale game where players fight to be the last person standing...', '2017-07-25 00:00:00'),
(4, 28, 'PUBG', 'A competitive survival shooter where players fight to be the last alive...', '2017-12-20 00:00:00'),
(5, 29, 'GTA V', 'An action-adventure game set in a vast open world filled with opportunities...', '2013-09-17 00:00:00'),
(6, 30, 'The Witcher 3', 'An action role-playing game set in an open world with a compelling narrative...', '2015-05-19 00:00:00'),
(7, 31, 'Minecraft', 'A sandbox video game where players can build and explore in a procedurally generated world...', '2011-11-18 00:00:00'),
(8, 32, 'Among Us', 'A multiplayer game where players take on the role of a crewmate or imposter on a spaceship...', '2018-06-15 00:00:00'),
(9, 30, 'Cyberpunk 2077', 'An open-world, action-adventure story set in Night City...', '2020-12-10 00:00:00'),
(10, 29, 'Red Dead Redemption 2', 'An epic tale of life in America’s unforgiving heartland...', '2018-10-26 00:00:00'),
(11, 36, 'The Elder Scrolls V: Skyrim', 'An open-world action RPG where players can explore and adventure...', '2011-11-11 00:00:00'),
(12, 33, 'Counter-Strike: Global Offensive', 'A multiplayer first-person shooter with a strong competitive scene...', '2012-08-21 00:00:00'),
(13, 34, 'League of Legends', 'A multiplayer online battle arena with a vast roster of champions...', '2009-10-27 00:00:00'),
(14, 35, 'World of Warcraft', 'A massively multiplayer online role-playing game set in the Warcraft universe...', '2004-11-23 00:00:00'),
(15, 33, 'Half-Life 2', 'A first-person shooter that combines shooting, puzzles, and storytelling...', '2004-11-16 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `game_genre`
--

CREATE TABLE `game_genre` (
  `game_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `game_genre`
--

INSERT INTO `game_genre` (`game_id`, `genre_id`) VALUES
(1, 31),
(1, 34),
(2, 32),
(2, 33),
(3, 36),
(3, 40),
(3, 42),
(4, 36),
(4, 39),
(4, 40),
(4, 42),
(5, 31),
(5, 32),
(5, 43),
(6, 32),
(6, 33),
(6, 43),
(7, 32),
(7, 39),
(7, 41),
(8, 35),
(8, 38),
(8, 42),
(9, 31),
(9, 32),
(9, 33),
(9, 43),
(10, 31),
(10, 32),
(10, 43),
(11, 31),
(11, 32),
(11, 33),
(11, 43),
(12, 36),
(12, 42),
(12, 44),
(13, 35),
(13, 42),
(13, 44),
(14, 32),
(14, 33),
(14, 42),
(15, 31),
(15, 32),
(15, 36),
(15, 38);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(31, 'Action'),
(32, 'Adventure'),
(33, 'Role-Playing'),
(34, 'Sports'),
(35, 'Strategy'),
(36, 'Shooter'),
(37, 'Simulation'),
(38, 'Puzzle'),
(39, 'Survival'),
(40, 'Battle Royale'),
(41, 'Sandbox'),
(42, 'Multiplayer'),
(43, 'Open World'),
(44, 'Competitive'),
(45, 'Narrative');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `review` tinyint(1) NOT NULL,
  `comment` longtext NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `email`) VALUES
(1, 'Ruth', '[\"ROLE_ADMIN\"]', '$2y$13$GulBTDqAx2uHhqxkEoaca.qtZ7hyO1woIjD07R6oeUtDWhmq0XNxa', 'olafounkebiaou@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `wishlist_item`
--

CREATE TABLE `wishlist_item` (
  `id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_232B318C6995AC4C` (`editor_id`);

--
-- Index pour la table `game_genre`
--
ALTER TABLE `game_genre`
  ADD PRIMARY KEY (`game_id`,`genre_id`),
  ADD KEY `IDX_B1634A77E48FD905` (`game_id`),
  ADD KEY `IDX_B1634A774296D31F` (`genre_id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_794381C6E48FD905` (`game_id`),
  ADD KEY `IDX_794381C6A76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_USERNAME` (`username`);

--
-- Index pour la table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6424F4E8E48FD905` (`game_id`),
  ADD KEY `IDX_6424F4E8A76ED395` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `editor`
--
ALTER TABLE `editor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `FK_232B318C6995AC4C` FOREIGN KEY (`editor_id`) REFERENCES `editor` (`id`);

--
-- Contraintes pour la table `game_genre`
--
ALTER TABLE `game_genre`
  ADD CONSTRAINT `FK_B1634A774296D31F` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B1634A77E48FD905` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_794381C6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_794381C6E48FD905` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`);

--
-- Contraintes pour la table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD CONSTRAINT `FK_6424F4E8A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_6424F4E8E48FD905` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
