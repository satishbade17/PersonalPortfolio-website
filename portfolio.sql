-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2025 at 06:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments_message`
--

CREATE TABLE `comments_message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments_message`
--

INSERT INTO `comments_message` (`id`, `name`, `email`, `mobile`, `message`, `created_at`) VALUES
(1, 'satish ramesh Bade', 'satishbade347@gmail.com', '9527597984', 'hi', '2025-01-26 17:25:18'),
(2, 'satish ramesh Bade', 'satishbade347@gmail.com', '9527597984', 'hi', '2025-01-26 17:28:04'),
(3, 'satish ramesh Bade', 'satishbade347@gmail.com', '9527597984', 'hi\r\n', '2025-01-26 17:28:46'),
(4, 'satish ramesh Bade', 'satishbade347@gmail.com', '9527597984', 'hi', '2025-01-26 17:29:45'),
(5, 'satish ramesh Bade', 'satishbade347@gmail.com', '9527597984', 'hi', '2025-01-26 17:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `mobile`, `message`, `date`) VALUES
(1, 'satish ramesh Bade', 'satishbade347@gmail.com', '9527597984', 'hello i am satish', '2025-01-25 10:36:30'),
(2, 'satish ramesh Bade', 'satishbade347@gmail.com', '9527597984', 'hello i am satish', '2025-01-25 10:39:05'),
(3, 'satish ramesh Bade', 'satishbade347@gmail.com', '9527597984', 'hi', '2025-01-25 10:40:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments_message`
--
ALTER TABLE `comments_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments_message`
--
ALTER TABLE `comments_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
