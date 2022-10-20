-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 07:36 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricshiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `banner_inner` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `uploaded_by` varchar(255) NOT NULL,
  `banner_main` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `short_title`, `logo`, `banner_inner`, `description`, `created_at`, `uploaded_by`, `banner_main`) VALUES
(44, 'Match Highlights | Sri Lanka v Namibia | T20WC 2022', 'FEATURE 16 OCT 20', '61b17c8-b702-22-73c5-734fe30e7cedAsia.png', 'aaac543-447-c1c2-0f-b5f1a1f77dGettyImages-12048400195c65.jpg', 'This website employs cookies to improve user experience. If you continue on this website you will be providing your consent to our use of all cookies. Find out more.\r\n\r\n', '2022-10-16 12:41:28', 'uzi', '11766b2-83f5-a24-5bfa-ff1c860846fcard.jpg'),
(45, 'Namibia stun Sri Lanka to claim T20 World Cup opener', ' MATCH REPORT SUNDAY 16 OCTOBER', '3b3ea7-e157-3773-fd8a-17a12c38601.png', '11766b2-83f5-a24-5bfa-ff1c860846fcard.jpg', 'Astrong team performance has helped Namibia register a stunning 55-run upset victory over Sri Lanka in the ICC Mens T20 World Cup clash opener in Geelong on Sunday.', '2022-10-16 14:04:35', 'ozi', 'aaac543-447-c1c2-0f-b5f1a1f77dGettyImages-12048400195c65.jpg'),
(46, 'Trail Blazers V Garden Stallions Club', 'Trail Blazers won by 31 runs', '5a7d8b1-2171-afc3-67e3-d2f15a223cricshizzlogo.jpg', 'bf38b3-3b6b-6622-c53-d6cbdbfabd6HeaderPic.jpg', 'Cric Shizz is the home for all cricket lovers who are passionate about showcasing their talent. We are the platform where you can find all your cricket needs either it is the match scorecard, player performance or reactions .', '2022-10-20 05:33:41', 'ozi', 'cecc2b0-431-c85b-1250-b3c1acbde6d2blog2Pic.jpg'),
(47, 'Trail Blazers V Garden Stallions Club', 'Trail Blazers won by 31 runs', '5a7d8b1-2171-afc3-67e3-d2f15a223cricshizzlogo.jpg', 'bf38b3-3b6b-6622-c53-d6cbdbfabd6HeaderPic.jpg', 'Cric Shizz is the home for all cricket lovers who are passionate about showcasing their talent. We are the platform where you can find all your cricket needs either it is the match scorecard, player performance or reactions .', '2022-10-20 05:33:41', 'ozi', 'cecc2b0-431-c85b-1250-b3c1acbde6d2blog2Pic.jpg'),
(48, 'Trail Blazers V Garden Stallions Club', 'Trail Blazers won by 31 runs', '5a7d8b1-2171-afc3-67e3-d2f15a223cricshizzlogo.jpg', 'bf38b3-3b6b-6622-c53-d6cbdbfabd6HeaderPic.jpg', 'Cric Shizz is the home for all cricket lovers who are passionate about showcasing their talent. We are the platform where you can find all your cricket needs either it is the match scorecard, player performance or reactions .', '2022-10-20 05:33:41', 'ozi', 'cecc2b0-431-c85b-1250-b3c1acbde6d2blog2Pic.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
