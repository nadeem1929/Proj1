-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2025 at 06:49 AM
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
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `department_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `contact_number`, `department_name`) VALUES
(5, 'admin', 'admin@gmail.com', '$2y$10$mXpq.6q00O9WXbwucS6keu/spHIcZX.4ObdkbjEZRiFu.WJZbbhNi', '1234567890', 'CSE'),
(6, 'cseadmin', 'cseadmin@gmail.com', '$2y$10$BTSqOjiNd0nVngYfuRK0qetwPOqhB1t.VzvacelO/nUsQeuP5RPvG', '1234554321', 'CSE'),
(7, 'venu madhav', 'venumadhav@gmail.com', '$2y$10$.dWm3Twg5Eo1S2xgBURzN.bhBeCL/QgzybgBYwwE3qxyHEa2F7e8i', '1234567890', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `complaint` text NOT NULL,
  `proof_files` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `student_email`, `teacher_name`, `complaint`, `proof_files`, `created_at`, `status`) VALUES
(1, 'student@gmail.com', 'teacher', 'harresmnet', '', '2024-12-13 06:07:46', 'Rejected'),
(2, 'student@gmail.com', 'Teacher A', 'nothing', 'uploads/3.png', '2024-12-13 06:23:15', 'Pending'),
(3, 'student@gmail.com', 'teacher', 'nothing', 'uploads/cl12.png', '2024-12-13 06:30:04', 'Rejected'),
(4, 'student@gmail.com', 'teacher', 'bye', 'uploads/hm.png,uploads/hmm.png,uploads/hn.png', '2024-12-13 06:46:57', 'Accepted'),
(5, 'student@gmail.com', 'teacher', 'harrasemnt', 'uploads/3.png', '2024-12-13 14:05:51', 'Accepted'),
(6, 'student1@gmail.com', 'teacher', 'hiiii', 'uploads/Screenshot (4).png', '2024-12-16 10:06:46', 'Accepted'),
(7, 'rrr@gmail.com', 'teacher1', 'jhxgbhjx', 'uploads/1stb.png,uploads/1ste.png,uploads/2nd page.png', '2024-12-19 10:07:42', 'Rejected'),
(8, 'rrr@gmail.com', 'teacher1', 'asdgv', 'uploads/2nd page.png', '2024-12-19 10:35:51', 'Accepted'),
(9, 'rrr@gmail.com', 'teacher2', 'jhgutf', 'uploads/3rd  page.png', '2024-12-19 10:56:40', 'Accepted'),
(10, 'rrr@gmail.com', 'teacher3', 'gxdjhgbdvxgxd', 'uploads/Screenshot (5).png', '2024-12-19 14:15:43', 'Rejected'),
(11, 'rrr@gmail.com', 'teacher3', 'not feeling well with a section roolmno 21 guy ', 'uploads/Screenshot (4).png,uploads/Screenshot (5).png,uploads/Screenshot (6).png,uploads/Screenshot (7).png,uploads/Screenshot (8).png', '2024-12-22 06:32:10', 'Accepted'),
(12, 'rrr@gmail.com', 'teacher3', 'fdbge', 'uploads/Screenshot (3).png', '2024-12-23 06:27:44', 'Accepted'),
(13, 'student0@gmail.com', 'teacher3', 'harrasement issues', 'uploads/Screenshot (4).png', '2024-12-27 08:16:56', 'Accepted'),
(14, 'student0@gmail.com', 'teacher1', 'dangers for me', 'uploads/Screenshot (10).png', '2024-12-27 08:18:03', 'Pending'),
(15, 'student0@gmail.com', 'teacher3', 'jdzcuz', 'uploads/Screenshot (9).png,uploads/Screenshot (10).png', '2024-12-27 09:00:24', 'Rejected'),
(16, 'rrr@gmail.com', 'teacher3', 'bnvxdzkztfgzlk', '', '2025-01-22 04:23:12', 'Accepted'),
(17, 'rrr@gmail.com', 'teacher3', 'hxvdjuysdhgku', '', '2025-01-22 04:44:04', 'Accepted'),
(18, 'rrr@gmail.com', 'teacher1', 'jhxgbhjx', 'uploads/1stb.png,uploads/1ste.png,uploads/2nd page.png', '2025-01-22 00:24:32', 'Pending'),
(19, 'rrr@gmail.com', 'teacher2', 'vzkhjfuyxzgfv', '', '2025-01-22 04:54:46', 'Rejected'),
(20, 'rrr@gmail.com', 'teacher3', 'fdbge', 'uploads/Screenshot (3).png', '2025-01-22 00:27:42', 'Rejected'),
(21, 'rrr@gmail.com', 'teacher3', 'gxdjhgbdvxgxd', 'uploads/Screenshot (5).png', '2025-01-22 00:37:53', 'Accepted'),
(22, 'rrr@gmail.com', 'teacher1', 'sergs', '', '2025-01-22 05:19:39', 'Pending'),
(23, 'rrr@gmail.com', 'teacher2', 'xfgnbxfcvxbfx', 'uploads/3rd  page.png', '2025-01-22 05:22:22', 'Accepted'),
(24, 'rrr@gmail.com', 'teacher3', 'gytkvuy8goy', 'uploads/final.png', '2025-01-25 06:54:44', 'Accepted'),
(25, 'rrr@gmail.com', 'teacher3', 'hxvdjuysdhgku', '', '2025-01-25 02:25:06', 'Rejected'),
(26, 'rrr@gmail.com', 'teacher2', 'xdhgxzdfhbc', 'uploads/db.png', '2025-02-04 06:12:06', 'Pending'),
(27, 'rrr@gmail.com', 'teacher3', 'cfgn vzxdfh', 'uploads/cl22.png', '2025-02-04 06:13:41', 'Accepted'),
(28, 'rrr@gmail.com', 'teacher3', 'xfdtydtryrtdr fdthgsrdud', 'uploads/hmm.png', '2025-02-04 06:38:15', 'Accepted'),
(29, 'rrr@gmail.com', 'teacher3', 'cfgn vzxdfh', 'uploads/cl22.png', '2025-02-04 02:08:24', 'Accepted'),
(30, 'rrr@gmail.com', 'teacher3', 'getting harresment from the serniors at the college ground', 'uploads/infix eve.png', '2025-02-04 06:42:00', 'Rejected'),
(31, 'rrr@gmail.com', 'teacher3', 'getting harresment from the serniors at the college ground', 'uploads/infix eve.png', '2025-02-04 02:13:55', 'Accepted'),
(32, '21711a05c1@necn.ac.in', 'teacher3', 'i dint know', 'uploads/1738733220_ha.png', '2025-02-05 05:27:00', 'Accepted'),
(33, '21711a05c1@necn.ac.in', 'teacher3', 'idk', 'uploads/1738733598_IMG-20230211-WA0038.jpg', '2025-02-05 05:33:18', 'Rejected'),
(36, '21711a05c1@necn.ac.in', 'teacher3', 'i cant say', 'uploads/1738735696_Routing-Algorithms-in-Computer-Networks-01-scaled (2).jpg', '2025-02-05 06:08:16', 'Accepted'),
(37, '21711a05c1@necn.ac.in', 'teacher3', 'i cant say', 'uploads/1738735696_Routing-Algorithms-in-Computer-Networks-01-scaled (2).jpg', '2025-02-05 01:39:44', 'Rejected'),
(38, '21711a05c1@necn.ac.in', 'teacher3', 'ok then i will', 'uploads/1738736109_Screenshot (3).png', '2025-02-05 06:15:09', 'Rejected'),
(39, '21711a05c1@necn.ac.in', 'teacher3', 'i am getting ragged by the seniors', 'uploads/1738737206_Screenshot (22).png', '2025-02-05 06:33:26', 'Accepted'),
(40, '21711a05c1@necn.ac.in', 'teacher3', 'i am not doing well', 'uploads/1738905523_s-4.png', '2025-02-07 05:18:43', 'Accepted'),
(41, '21711a05c1@necn.ac.in', 'teacher3', 'i cant say', 'uploads/1738735696_Routing-Algorithms-in-Computer-Networks-01-scaled (2).jpg', '2025-02-07 00:49:15', 'Rejected'),
(42, '21711a05c1@necn.ac.in', 'teacher3', 'I am not feeling well', 'uploads/1738908481_WhatsApp Image 2024-04-30 at 15.19.02_47fc7b99.jpg', '2025-02-07 06:08:01', 'Rejected'),
(43, '21711a05c1@necn.ac.in', 'teacher3', 'i cant say', 'uploads/1738735696_Routing-Algorithms-in-Computer-Networks-01-scaled (2).jpg', '2025-02-07 01:39:00', 'Accepted'),
(44, '21711a05c1@necn.ac.in', 'teacher2', 'i am hapy now', 'uploads/1741105434_1st page.png', '2025-03-04 16:23:54', 'Pending'),
(45, '21711a05c1@necn.ac.in', 'teacher3', 'i am not feeling well', 'uploads/1741169358_network.png', '2025-03-05 10:09:18', 'Accepted'),
(46, '21711a05c1@necn.ac.in', 'teacher2', 'i am not feeling well', 'uploads/1741173530_network.png', '2025-03-05 11:18:50', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roll_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `roll_no`) VALUES
(1, 'student', 'student@gmail.com', '$2y$10$92UEXwsGWXEgR7ndbspPVOHkF9ovV.ZtkSzclHkAScL7D.4Sy7nlW', '21711A0581'),
(2, 'student1', 'student1@gmail.com', '$2y$10$sCNnDzoXNTVHChZOlAz/T.3JmM2TpIVf6UOLqpzgaG4DPlrLA9qkW', '21711A0580'),
(3, 'rrr', 'rrr@gmail.com', '$2y$10$Rf3D3Pg0dacEtju51HsPr.mIsAoLA6oYR2b6F3PTYGoxHMmIweS26', '21711A0571'),
(4, 'student0', 'student0@gmail.com', '$2y$10$I0f.kSeQB715suPXOwhTyeNgAb5fzpiSNLw.7FRdYSP9sg7Xrb13m', '21711A0500'),
(6, 'Shaik Thousif', '21711a05c1@necn.ac.in', '$2y$10$QEM6ny0J.S/f..B.51YqP.Xq6fAGcAu2AT/l/Ws.HOYNRVK/NoOfG', '21711A05C1');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `contact_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `designation`, `contact_number`) VALUES
(1, 'teacher', 'teacher@gmail.com', '$2y$10$jvi5w8DbLNea0z86bDfa.Ope.kYY0mM8VK6kspyXhCvEWAmJdXa4K', '', ''),
(2, 'teacher1', 'teacher1@gmail.com', '$2y$10$U7cpmr7YecyLKDPnoARRDey5RsVFUS1sfUFDKggX4h.fD8lvrthWS', '', ''),
(3, 'teacher2', 'teacher2@gmail.com', '$2y$10$NlJULwI9KoA7oB3XTi5GfuaCQqJyBnZzOSYEWHW7wFs3TJ4noSS8O', 'Mtech', '1234567890'),
(4, 'teacher3', 'teacher3@gmail.com', '$2y$10$ypmh8N.12xlX4w9mB3kUD.sZP/AFTg2p75gX8ocEt.RKspM8tpXkS', 'Mtech', '1234554321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `roll_no` (`roll_no`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
