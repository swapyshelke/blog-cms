-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 12:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(1, 'Programming', '          coding &amp; programming '),
(6, 'Science', '     Science desc     '),
(8, 'Web Dev', '         web dev desc '),
(10, 'Art', '          desc for  Art'),
(13, 'Uncategorize', 'uncategorized description\r\n'),
(14, 'JS', 'JS desc');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(1, 'aaaaaaa', 'aaaaaaa', '17085911301696512789images.jpg', '2024-02-22 08:38:50', 6, 1, 0),
(2, 'aaaaaaa', 'aaaaaaa', '17085911711696512789images.jpg', '2024-02-22 08:39:31', 6, 1, 0),
(3, 'aaaaaaa', 'aaaaaaa', '17085912591696512789images.jpg', '2024-02-22 08:40:59', 6, 1, 0),
(4, 'aaaaaaa', 'aaaaaaa', '17085912701696512789images.jpg', '2024-02-22 08:41:10', 6, 1, 0),
(5, 'aaaaaaa', 'aaaaaaa', '17085913101696512789images.jpg', '2024-02-22 08:41:50', 6, 1, 0),
(6, 'aaaaaaa', 'aaaaaaa', '17085913401696512789images.jpg', '2024-02-22 08:42:20', 6, 1, 0),
(7, 'aaaaaaa', 'aaaaaaa', '17085913461696512789images.jpg', '2024-02-22 08:42:26', 6, 1, 0),
(8, 'zzzzzzzzzzzzz edited', 'edited', '17085913471696512789images.jpg', '2024-02-22 08:42:27', 1, 1, 0),
(9, 'Healthy Eating Habits for a Balanced Life', 'Explore the importance of nutrition and how adopting healthy eating habits can improve your overall health and vitality.', '17085982061696512789images.jpg', '2024-02-22 08:42:39', 1, 1, 0),
(10, 'The Art of Mindfulness', 'Explore the transformative power of mindfulness and learn how to incorporate it into your daily life to reduce stress and enhance well-being.', '17085914411696512789images.jpg', '2024-02-22 08:44:01', 10, 1, 0),
(11, 'A Beginner&#039;s Guide to Meditation', 'Discover the basics of meditation and how it can help you cultivate a sense of inner peace and clarity in today&#039;s fast-paced world.', '17085915121696512789images.jpg', '2024-02-22 08:45:12', 6, 1, 0),
(12, 'The Benefits of Yoga for Body and Mind', 'Learn about the physical and mental benefits of practicing yoga, from improved flexibility and strength to stress relief and enhanced focus.', '17085938381696512789images.jpg', '2024-02-22 09:23:58', 1, 6, 0),
(13, 'new post', '  &lt;br /&gt;\r\n&lt;b&gt;Warning&lt;/b&gt;:  Undefined variable $posts in &lt;b&gt;C:xampp-1htdocsBlog-CMSadminedit-post.php&lt;/b&gt; on line &lt;b&gt;40&lt;/b&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;b&gt;Warning&lt;/b&gt;:  Trying to access array offset on value of type null in &lt;b&gt;C:xampp-1htdocsBlog-CMSadminedit-post.php&lt;/b&gt; on line &lt;b&gt;40&lt;/b&gt;&lt;br /&gt;\r\n ', '17086027351696512789images.jpg', '2024-02-22 11:52:15', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(1, 'Swapnil', 'Shelke', 'swapnil', 'swapnil@gmail.com', '$2y$10$MQSdMTV3cJ4bzEOWlu2Kk.AfPwSVrpi2n7bnXP.Jxks2tsftpz706', '1708536291wallpaper-black-theme.jpg', 1),
(3, 'Avinash', 'Pathade', 'Avinash', 'avinash@gmail.com', '$2y$10$rghekzNfErat4Xg3guPkYeMcrMmI.wkxc8mB1EvKMP4R0mYhVYKq2', '17085371881696512789images.jpg', 0),
(5, 'a', 'a', 'a', 'a@gmail.com', '$2y$10$ccRicXh/caG8hqs3bikETupsoD/0cOx4oVLKWksmTVRk8bUBTcI0S', '17085432721696512789images.jpg', 0),
(6, 'Aashay', 'Patil', 'aashay', 'aashay@gmail.com', '$2y$10$.0qMTUoXd9VL/bWfygpZkuCGhbFbH.71yQtqdMSaEQXF3OsbJpdwe', '17085829991696512789images.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
