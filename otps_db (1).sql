-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2024 at 03:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otps_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `anecdotal_records`
--

CREATE TABLE `anecdotal_records` (
  `id` int(11) NOT NULL,
  `name_of_students` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `year_course` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `fatherStatus` varchar(10) DEFAULT NULL,
  `occupation1` varchar(100) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `motherStatus` varchar(10) DEFAULT NULL,
  `occupation2` varchar(100) DEFAULT NULL,
  `guardian` varchar(255) DEFAULT NULL,
  `occupation3` varchar(100) DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `psaddress` varchar(255) DEFAULT NULL,
  `cnumber` varchar(20) DEFAULT NULL,
  `dateTime` text DEFAULT NULL,
  `observedBehavior` text DEFAULT NULL,
  `commentsRecommendations` text DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anecdotal_records`
--

INSERT INTO `anecdotal_records` (`id`, `name_of_students`, `age`, `year_course`, `gender`, `fname`, `fatherStatus`, `occupation1`, `mname`, `motherStatus`, `occupation2`, `guardian`, `occupation3`, `paddress`, `psaddress`, `cnumber`, `dateTime`, `observedBehavior`, `commentsRecommendations`, `action`) VALUES
(15, NULL, 3434, NULL, 'Male', 'gdfg', 'Living', 'dfgd', 'dgd', 'Living', 'dgd', 'dgd', 'gdf', 'dgd', 'dgg', '43534', 'Array', 'Array', 'Array', NULL),
(16, NULL, 3434, NULL, 'Male', 'gdfg', 'Living', 'dfgd', 'dgd', 'Living', 'dgd', 'dgd', 'gdf', 'dgd', 'dgg', '43534', 'Array', 'Array', 'Array', NULL),
(17, NULL, 3434, NULL, 'Male', 'gdfg', 'Living', 'dfgd', 'dgd', 'Living', 'dgd', 'dgd', 'gdf', 'dgd', 'dgg', '43534', 'Array', 'Array', 'Array', NULL),
(19, 'jeferson tonglo', 34, 'dsds', 'Female', 'wsdas', 'Living', 'dad', 'dsadda', 'Living', 'da', 'dad', 'sdas', 'sd', 'ada', '2312', 'cfdf', 'sdfsf', 'sfsdf', NULL),
(20, 'sfd', 2423, 'eew', 'Female', 'werwe', 'Living', 'erwe', 'rewr', 'Living', 'erwre', 'wr', 'rewwre', 'wrw', 'wee', '2321', 'wer', 'werw', 'rwe', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `counseling_sessions`
--

CREATE TABLE `counseling_sessions` (
  `id` int(100) NOT NULL,
  `session_no` int(100) NOT NULL,
  `session_type` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `year_course` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `student_description` text NOT NULL,
  `subjective_complaint` text NOT NULL,
  `objective_findings` text NOT NULL,
  `assessment_of_progress` text NOT NULL,
  `plans_for_next_session` text NOT NULL,
  `other_important_notes` text NOT NULL,
  `action` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counseling_sessions`
--

INSERT INTO `counseling_sessions` (`id`, `session_no`, `session_type`, `date`, `name`, `age`, `year_course`, `gender`, `student_description`, `subjective_complaint`, `objective_findings`, `assessment_of_progress`, `plans_for_next_session`, `other_important_notes`, `action`) VALUES
(141, 2323, 'Virtual', '2024-05-06', 'Reyna Nogalo', 2334, 'BSIT-3', 'Female', 'sdfds', 'sdfs', 'dsfdf', 'fsdf', 'sdf', 'dsf', NULL),
(142, 2323, 'Virtual', '2024-05-06', 'Reyna Nogalo', 2334, 'BSIT-3', 'Female', 'sdfds', 'sdfs', 'dsfdf', 'fsdf', 'sdf', 'dsf', NULL),
(143, 2323, 'Virtual', '2024-05-06', 'Reyna Nogalo', 2334, 'BSIT-3', 'Female', 'sdfds', 'sdfs', 'dsfdf', 'fsdf', 'sdf', 'dsf', NULL),
(144, 112, 'F2F', '2024-05-09', 'dsdf', 454, 'dfgdf', 'Female', 'gdfg', 'gdfg', 'dgfdfg', 'fgdfg', 'gdf', 'dfgdf', NULL),
(145, 13213, 'F2F', '2024-05-09', 'rhe', 45, 'sds', 'Female', 'sddsf', 'fdsf', 'fsdf', 'fdf', 'dfdf', 'sdfdf', NULL),
(146, 312, 'F2F', '2024-05-09', 'wer', 323, 'sfsd', 'Female', 'fdsf', 'sfsf', 'sdf', 'sfs', 'sf', 'sfs', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_list`
--

CREATE TABLE `course_list` (
  `id` int(30) NOT NULL,
  `tutor_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `experience` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `logo_path` text DEFAULT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_list`
--

CREATE TABLE `inquiry_list` (
  `id` int(30) NOT NULL,
  `tutor_id` int(30) NOT NULL,
  `course_id` int(30) NOT NULL,
  `fullname` text NOT NULL,
  `email` text NOT NULL,
  `contact` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interview_responses`
--

CREATE TABLE `interview_responses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `year_course` varchar(255) DEFAULT NULL,
  `interview_type` varchar(50) DEFAULT NULL,
  `expectations_school` text DEFAULT NULL,
  `expectations_instructors` text DEFAULT NULL,
  `expectations_peers` text DEFAULT NULL,
  `regulations_of_the_school` text DEFAULT NULL,
  `expectations_rules` text DEFAULT NULL,
  `expectations_law` text DEFAULT NULL,
  `expectations_social_media` text DEFAULT NULL,
  `something_wrong_about_them` text DEFAULT NULL,
  `expectations_schools_reputation` text DEFAULT NULL,
  `incidences_in_your_classroom` text DEFAULT NULL,
  `expectations_situation` text DEFAULT NULL,
  `expectations_home` text DEFAULT NULL,
  `expectations_parents` text DEFAULT NULL,
  `expectations_siblings` text DEFAULT NULL,
  `living_in_your_home` text DEFAULT NULL,
  `house_rules` text DEFAULT NULL,
  `state_those_rules` text DEFAULT NULL,
  `consequences_if_you_not_follow_rules` text DEFAULT NULL,
  `together_as_a_family` text DEFAULT NULL,
  `expectations_time` text DEFAULT NULL,
  `expectations_guidance_office` text DEFAULT NULL,
  `guidance_counselor_advocate` text DEFAULT NULL,
  `action` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interview_responses`
--

INSERT INTO `interview_responses` (`id`, `name`, `date`, `year_course`, `interview_type`, `expectations_school`, `expectations_instructors`, `expectations_peers`, `regulations_of_the_school`, `expectations_rules`, `expectations_law`, `expectations_social_media`, `something_wrong_about_them`, `expectations_schools_reputation`, `incidences_in_your_classroom`, `expectations_situation`, `expectations_home`, `expectations_parents`, `expectations_siblings`, `living_in_your_home`, `house_rules`, `state_those_rules`, `consequences_if_you_not_follow_rules`, `together_as_a_family`, `expectations_time`, `expectations_guidance_office`, `guidance_counselor_advocate`, `action`) VALUES
(24, 'Reyna Nogalo', '2024-02-06', 'BSIT-3', 'F2F', 'sghags', 'aasas', 'asaad', 'aadad', 'adadad', 'adasdad', 'adada', 'dasdaFA', 'WFQWFSA', 'fcdfdsg', 'sfsfasf', 'sdawf', 'fasfaa', 'afafasf', 'sfdasfsf', 'sfasfsfs', 'afsfa', 'sfasf', 'sdah', 'gsahgsh', 'hdg', 'gahdg', NULL),
(25, 'rhea jean', '2024-05-14', 'BSIT-3', 'F2F', 'sda', 'ad', 'adad', 'ada', 'ada', 'asdas', 'ada', 'das', 'da', 'dsas', 'sda', 'sdasd', 'dasd', 'asdas', 'dasd', 'ghf', 'hg', 'hty', 'rtert', 'ert', 'dgd', 'dfg', NULL),
(26, 'Reyna Nogalo', '2024-05-23', 'BSIT-3', 'F2F', 'ttt', 'ttt', 'tt', 'tt', 'tt', 'ttt', 'tt', 'tt', 'tt', 'tt', 'tt', 'tt', 'tt', 'tt', 'tt', 'tt', 'tt', 'tt', 'tt', 'tt', 'ttt', 'tt', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Guidance and Counseling Record Management'),
(6, 'short_name', 'GCRM'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1652751597'),
(15, 'welcome_content', 'Default welcome content.'),
(16, 'about_content', 'Default about us content.'),
(17, 'content_welcome', 'rhea'),
(18, 'content_about', 'rhea');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_list`
--

CREATE TABLE `tutor_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = Not Validated,\r\n1 = Validated,\r\n2 = Inactive,\r\n3 = Blocked',
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutor_list`
--

INSERT INTO `tutor_list` (`id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `avatar`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(7, 'reyna', 'r', 'er', 'mercullo@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 0, 0, '2024-05-06 12:48:00', '2024-05-06 12:48:00'),
(8, 'miguel', 'jean', 'Mercullo ', 'miguel@gmail.com', 'd81f9c1be2e08964bf9f24b15f0e4900', NULL, 2, 0, '2024-05-08 14:46:56', '2024-05-09 10:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_meta`
--

CREATE TABLE `tutor_meta` (
  `tutor_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='2';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Rhea Jean', 'Forcadilla ', 'Mercullo', 'rhea', '60579e7c700c3f17aae0d9924b46cef7', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2024-04-21 22:28:28'),
(4, 'Rhea Jean ', 'F.', 'Mercullo', 'rhea', '827ccb0eea8a706c4c34a16891f84e7b', 'uploads/avatars/4.png?v=1652667135', NULL, 2, '2022-05-16 10:12:15', '2024-05-05 19:48:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anecdotal_records`
--
ALTER TABLE `anecdotal_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counseling_sessions`
--
ALTER TABLE `counseling_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_list`
--
ALTER TABLE `course_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_id` (`tutor_id`);

--
-- Indexes for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_id` (`tutor_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `interview_responses`
--
ALTER TABLE `interview_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_list`
--
ALTER TABLE `tutor_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_meta`
--
ALTER TABLE `tutor_meta`
  ADD KEY `tutor_id` (`tutor_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anecdotal_records`
--
ALTER TABLE `anecdotal_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `counseling_sessions`
--
ALTER TABLE `counseling_sessions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `course_list`
--
ALTER TABLE `course_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `interview_responses`
--
ALTER TABLE `interview_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tutor_list`
--
ALTER TABLE `tutor_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_list`
--
ALTER TABLE `course_list`
  ADD CONSTRAINT `tutor_id_fk_cl` FOREIGN KEY (`tutor_id`) REFERENCES `tutor_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  ADD CONSTRAINT `course_id_fk_il` FOREIGN KEY (`course_id`) REFERENCES `course_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tutor_id_fk_il` FOREIGN KEY (`tutor_id`) REFERENCES `tutor_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tutor_meta`
--
ALTER TABLE `tutor_meta`
  ADD CONSTRAINT `tutor_id_fk_tm` FOREIGN KEY (`tutor_id`) REFERENCES `tutor_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
