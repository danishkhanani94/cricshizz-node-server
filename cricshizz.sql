-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2022 at 03:16 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricshizz`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `banner_inner` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `uploaded_by` varchar(255) DEFAULT NULL,
  `banner_main` varchar(255) DEFAULT '',
  `longdescription` longtext DEFAULT NULL,
  `match_category` varchar(255) DEFAULT NULL,
  `team_a` varchar(255) DEFAULT NULL,
  `team_b` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `banner_inner`, `description`, `created_at`, `uploaded_by`, `banner_main`, `longdescription`, `match_category`, `team_a`, `team_b`) VALUES
(103, 'Trail Blazers V Garden Stallions Club', '08153bf-3c62-51ac-e36-5334a5dc18image_2022_10_25T05_25_39_730Z.png', 'Trail Blazers V Garden Stallions Club . Trail Blazers V Garden Stallions Club. Trail Blazers V Garden Stallions Club.', '2022-10-27 05:55:56', 'test', '070d0-02c3-8aac-47b6-f452cb7b61image_2022_10_25T05_25_39_730Z.png', 'Trail Blazers V Garden Stallions Club . Trail Blazers V Garden Stallions Club. Trail Blazers V Garden Stallions Club. Trail Blazers V Garden Stallions Club . Trail Blazers V Garden Stallions Club. Trail Blazers V Garden Stallions Club. Trail Blazers V Garden Stallions Club . Trail Blazers V Garden Stallions Club. Trail Blazers V Garden Stallions Club. Trail Blazers V Garden Stallions Club . Trail Blazers V Garden Stallions Club. Trail Blazers V Garden Stallions Club.', '6', '6', '7');

-- --------------------------------------------------------

--
-- Table structure for table `category_names`
--

CREATE TABLE `category_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_names`
--

INSERT INTO `category_names` (`id`, `name`) VALUES
(6, 'Test Match'),
(7, 'Final Match');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `album_name` varchar(255) DEFAULT NULL,
  `innerimages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '[]' CHECK (json_valid(`innerimages`)),
  `team_a` varchar(255) DEFAULT NULL,
  `team_b` varchar(255) DEFAULT NULL,
  `match_category` varchar(255) DEFAULT NULL,
  `mainbanner` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `album_name`, `innerimages`, `team_a`, `team_b`, `match_category`, `mainbanner`, `created_at`) VALUES
(40, 'Reborn Shafaq Risers (20-10-2022)', '[\"e33adf5-cd23-681a-3aa4-5f041e3040c21.jpg\",\"f2ec0d-8813-42b-721f-81aee002a4bb2.jpg\",\"b44ac52-837-35b-61d-47effed2e0a3.jpg\",\"00d1eca-68a-51bd-4f3b-6a6eabcbd7754.jpg\",\"bdc0dd7-b7b-88c3-cf2-47ddf8acd4a5.jpg\",\"e744674-318-7ded-ee42-c1d4a76dbb46.jpg\",\"afe464b-d375-3333-223d-fdd50c2f5af7.jpg\",\"2552326-e1d2-4245-54b-72fb442bf87b8.jpg\"]', '6', '7', '7', '6bf62-6a-264f-f74-e02ff71633fbm.jpg', '2022-10-27 13:08:44'),
(41, 'Reborn Shafaq Risers (20-10-2022)', '[\"e33adf5-cd23-681a-3aa4-5f041e3040c21.jpg\",\"f2ec0d-8813-42b-721f-81aee002a4bb2.jpg\",\"b44ac52-837-35b-61d-47effed2e0a3.jpg\",\"00d1eca-68a-51bd-4f3b-6a6eabcbd7754.jpg\",\"bdc0dd7-b7b-88c3-cf2-47ddf8acd4a5.jpg\",\"e744674-318-7ded-ee42-c1d4a76dbb46.jpg\",\"afe464b-d375-3333-223d-fdd50c2f5af7.jpg\",\"2552326-e1d2-4245-54b-72fb442bf87b8.jpg\"]', '6', '7', '7', '6bf62-6a-264f-f74-e02ff71633fbm.jpg', '2022-10-27 13:08:44'),
(42, 'Reborn Shafaq Risers (20-10-2022)', '[\"e33adf5-cd23-681a-3aa4-5f041e3040c21.jpg\",\"f2ec0d-8813-42b-721f-81aee002a4bb2.jpg\",\"b44ac52-837-35b-61d-47effed2e0a3.jpg\",\"00d1eca-68a-51bd-4f3b-6a6eabcbd7754.jpg\",\"bdc0dd7-b7b-88c3-cf2-47ddf8acd4a5.jpg\",\"e744674-318-7ded-ee42-c1d4a76dbb46.jpg\",\"afe464b-d375-3333-223d-fdd50c2f5af7.jpg\",\"2552326-e1d2-4245-54b-72fb442bf87b8.jpg\"]', '6', '7', '7', '6bf62-6a-264f-f74-e02ff71633fbm.jpg', '2022-10-27 13:08:44'),
(43, 'Reborn Shafaq Risers (20-10-2022)', '[\"e33adf5-cd23-681a-3aa4-5f041e3040c21.jpg\",\"f2ec0d-8813-42b-721f-81aee002a4bb2.jpg\",\"b44ac52-837-35b-61d-47effed2e0a3.jpg\",\"00d1eca-68a-51bd-4f3b-6a6eabcbd7754.jpg\",\"bdc0dd7-b7b-88c3-cf2-47ddf8acd4a5.jpg\",\"e744674-318-7ded-ee42-c1d4a76dbb46.jpg\",\"afe464b-d375-3333-223d-fdd50c2f5af7.jpg\",\"2552326-e1d2-4245-54b-72fb442bf87b8.jpg\"]', '6', '7', '7', '6bf62-6a-264f-f74-e02ff71633fbm.jpg', '2022-10-27 13:08:44'),
(44, 'Reborn Shafaq Risers (20-10-2022)', '[\"e33adf5-cd23-681a-3aa4-5f041e3040c21.jpg\",\"f2ec0d-8813-42b-721f-81aee002a4bb2.jpg\",\"b44ac52-837-35b-61d-47effed2e0a3.jpg\",\"00d1eca-68a-51bd-4f3b-6a6eabcbd7754.jpg\",\"bdc0dd7-b7b-88c3-cf2-47ddf8acd4a5.jpg\",\"e744674-318-7ded-ee42-c1d4a76dbb46.jpg\",\"afe464b-d375-3333-223d-fdd50c2f5af7.jpg\",\"2552326-e1d2-4245-54b-72fb442bf87b8.jpg\"]', '6', '7', '7', '6bf62-6a-264f-f74-e02ff71633fbm.jpg', '2022-10-27 13:08:44'),
(45, 'Reborn Shafaq Risers (20-10-2022)', '[\"e33adf5-cd23-681a-3aa4-5f041e3040c21.jpg\",\"f2ec0d-8813-42b-721f-81aee002a4bb2.jpg\",\"b44ac52-837-35b-61d-47effed2e0a3.jpg\",\"00d1eca-68a-51bd-4f3b-6a6eabcbd7754.jpg\",\"bdc0dd7-b7b-88c3-cf2-47ddf8acd4a5.jpg\",\"e744674-318-7ded-ee42-c1d4a76dbb46.jpg\",\"afe464b-d375-3333-223d-fdd50c2f5af7.jpg\",\"2552326-e1d2-4245-54b-72fb442bf87b8.jpg\"]', '6', '7', '7', '6bf62-6a-264f-f74-e02ff71633fbm.jpg', '2022-10-27 13:08:44'),
(46, 'Reborn Shafaq Risers (20-10-2022)', '[\"e33adf5-cd23-681a-3aa4-5f041e3040c21.jpg\",\"f2ec0d-8813-42b-721f-81aee002a4bb2.jpg\",\"b44ac52-837-35b-61d-47effed2e0a3.jpg\",\"00d1eca-68a-51bd-4f3b-6a6eabcbd7754.jpg\",\"bdc0dd7-b7b-88c3-cf2-47ddf8acd4a5.jpg\",\"e744674-318-7ded-ee42-c1d4a76dbb46.jpg\",\"afe464b-d375-3333-223d-fdd50c2f5af7.jpg\",\"2552326-e1d2-4245-54b-72fb442bf87b8.jpg\"]', '6', '7', '7', '6bf62-6a-264f-f74-e02ff71633fbm.jpg', '2022-10-27 13:08:44'),
(47, 'Reborn Shafaq Risers (20-10-2022)', '[\"e33adf5-cd23-681a-3aa4-5f041e3040c21.jpg\",\"f2ec0d-8813-42b-721f-81aee002a4bb2.jpg\",\"b44ac52-837-35b-61d-47effed2e0a3.jpg\",\"00d1eca-68a-51bd-4f3b-6a6eabcbd7754.jpg\",\"bdc0dd7-b7b-88c3-cf2-47ddf8acd4a5.jpg\",\"e744674-318-7ded-ee42-c1d4a76dbb46.jpg\",\"afe464b-d375-3333-223d-fdd50c2f5af7.jpg\",\"2552326-e1d2-4245-54b-72fb442bf87b8.jpg\"]', '6', '7', '7', '6bf62-6a-264f-f74-e02ff71633fbm.jpg', '2022-10-27 13:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `team_names`
--

CREATE TABLE `team_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team_names`
--

INSERT INTO `team_names` (`id`, `name`) VALUES
(6, 'Pakistan'),
(7, 'India');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_names`
--
ALTER TABLE `category_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_names`
--
ALTER TABLE `team_names`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `category_names`
--
ALTER TABLE `category_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `team_names`
--
ALTER TABLE `team_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
