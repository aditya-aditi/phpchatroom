-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2021 at 10:27 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpchat`
--

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `sno` int(11) NOT NULL,
  `message` text NOT NULL,
  `ip` text NOT NULL,
  `room` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`sno`, `message`, `ip`, `room`, `timestamp`) VALUES
(1, 'Hello', '::1', '12345', '2021-02-09 12:33:46'),
(2, 'Hello', '::1', '12345', '2021-02-09 12:33:47'),
(3, 'Hello', '::1', '12345', '2021-02-09 12:33:48'),
(4, 'How are you', '::1', '12345', '2021-02-09 12:33:56'),
(5, 'I am fine', '::1', '12345', '2021-02-09 12:34:41'),
(6, 'ok', '::1', '12345', '2021-02-09 12:34:57'),
(7, 'Hi', '::1', 'anand', '2021-02-09 12:43:37'),
(8, 'Welcome to my chatroom', '::1', 'anand', '2021-02-09 12:43:48'),
(9, 'hi', '::1', 'anand', '2021-02-09 12:44:21'),
(10, 'Do you know coding ?', '::1', 'anand', '2021-02-09 12:48:42'),
(11, 'yes', '::1', 'anand', '2021-02-09 12:48:49'),
(12, 'Which language do you know ?', '::1', 'anand', '2021-02-09 12:49:18'),
(13, 'Hi', '::1', 'maths', '2021-02-09 12:51:58'),
(14, 'Welcome to the chatroom', '::1', 'maths', '2021-02-09 12:52:05'),
(15, 'Hi', '::1', 'maths', '2021-02-09 12:52:34'),
(16, 'Hi', '127.0.0.1', 'test', '2021-02-09 13:33:24'),
(17, 'welcome to my chatroom', '127.0.0.1', 'test', '2021-02-09 13:33:48'),
(18, 'Hello', '::1', 'computer', '2021-02-09 13:42:55'),
(19, 'Welcome to my chatroom ', '::1', 'computer', '2021-02-09 13:43:05'),
(20, 'hi', '::1', 'computer', '2021-02-09 13:43:34'),
(21, 'Hi', '::1', 'rishi', '2021-02-09 18:29:35'),
(22, 'Welcome to my chatroom', '::1', 'rishi', '2021-02-09 18:29:44'),
(23, 'hi', '::1', 'rishi', '2021-02-09 18:30:07'),
(24, 'How are you', '::1', 'rishi', '2021-02-09 18:30:21'),
(25, 'I am fine', '::1', 'rishi', '2021-02-09 18:30:28'),
(26, 'have you studied', '::1', 'rishi', '2021-02-09 18:30:41'),
(27, 'ya', '::1', 'rishi', '2021-02-09 18:30:44'),
(28, 'Hello', '::1', 'French', '2021-02-11 12:16:11'),
(29, 'Welcome to my chatroom', '::1', 'French', '2021-02-11 12:16:25'),
(30, 'Hello', '::1', 'French', '2021-02-11 12:16:45'),
(31, 'Bonjour', '::1', 'French', '2021-02-11 12:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `roomname`
--

CREATE TABLE `roomname` (
  `sno` int(11) NOT NULL,
  `room_name` varchar(20) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomname`
--

INSERT INTO `roomname` (`sno`, `room_name`, `timestamp`) VALUES
(1, 'me', '2021-02-04 17:08:09'),
(2, '123', '2021-02-05 09:15:39'),
(3, 'me.', '2021-02-05 09:25:02'),
(5, 'aditi', '2021-02-05 09:50:33'),
(6, '456', '2021-02-05 12:46:08'),
(7, '', '2021-02-05 13:01:45'),
(8, 'me .', '2021-02-05 17:47:02'),
(9, '1', '2021-02-05 17:52:22'),
(10, '123456', '2021-02-09 09:05:59'),
(11, '12345', '2021-02-09 11:25:33'),
(12, 'anand', '2021-02-09 12:43:18'),
(13, 'maths', '2021-02-09 12:51:49'),
(14, 'computer', '2021-02-09 13:42:40'),
(15, 'sks', '2021-02-09 16:43:17'),
(16, 'rishi', '2021-02-09 18:29:30'),
(17, 'French', '2021-02-11 12:16:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `roomname`
--
ALTER TABLE `roomname`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `roomname`
--
ALTER TABLE `roomname`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
