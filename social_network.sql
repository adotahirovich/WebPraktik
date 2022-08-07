-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 03:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `likes` int(11) NOT NULL,
  `unlikes` int(11) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `likes`, `unlikes`, `created_time`) VALUES
(6, 11, 'jA SAM OVDJE NOVA MOLIM UBACITI LIKE I DISLIKE', 1, 0, '2022-08-07 03:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `profile_image`, `email`, `password`) VALUES
(1, 'Ado T', 'aduka', 'uploads/default.jpg', 'tahirovichadoh@gmail.com', '$2y$10$6DeaZNhb2cDrZMzyhWtwoe2ZkYl6k.RYMjDq3xxuUxKpZ5QHqIFYy'),
(8, '', '', 'uploads/default.jpg', 'Adooooo', '$2y$10$9BdSpoR8pUlrvI.wf6uziu1j.Apu7//MQqY2hJ8tPGX.4sn1kJlYC'),
(9, '', '', 'uploads/default.jpg', 'aaaaaaa', '$2y$10$uAtIOMjCUE2VADz2oFKCXONmcXSsyCLKEdBF4BA9rOKQigx6Q0Tt.'),
(10, '', '', 'uploads/default.jpg', 'asdasd', '$2y$10$E1FQObbADPny5HEU7gOdlu8nNFrdyeMnAlJ7v8AdySKfUPa/DxO1W'),
(11, 'delila', 'deli', 'uploads/default.jpg', 'delila@gmail.com', '$2y$10$wdQTt1Df5LTEv9V2zOLNz.vbWj5vyNEkQSTJt9za2ha4nW0RBR4r6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
