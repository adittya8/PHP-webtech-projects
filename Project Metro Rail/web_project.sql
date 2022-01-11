-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2021 at 04:06 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_emp`
--

CREATE TABLE `add_emp` (
  `e_id` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `pass` text NOT NULL,
  `gender` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL,
  `dob` text NOT NULL,
  `bl_grp` text NOT NULL,
  `nid` text NOT NULL,
  `salary` int(11) NOT NULL,
  `e_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_emp`
--

INSERT INTO `add_emp` (`e_id`, `name`, `pass`, `gender`, `email`, `phone`, `address`, `dob`, `bl_grp`, `nid`, `salary`, `e_count`) VALUES
('12345', 'jamil', '1234567', 'Male', 'jamil@gmail.com', '0171517000', 'qjqhbdkquw', '1999-07-07', 'A(-ve)', '11223344556', 10000, 1),
('1345', 'rafsun', '12345678', 'male', 'rafsun@gmail.com', '01821908765', 'uttara', '23.05.1999', 'o neg', '23456789', 10000, 3),
('1348', 'rakib', '123456', 'male', 'rafn@gmail.com', '01881908765', 'uttara', '28.05.1999', 'o neg', '23459889', 10000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `add_sm`
--

CREATE TABLE `add_sm` (
  `e_id` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `pass` text NOT NULL,
  `gender` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL,
  `dob` text NOT NULL,
  `bl_grp` text NOT NULL,
  `nid` text NOT NULL,
  `salary` int(11) NOT NULL,
  `e_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_sm`
--

INSERT INTO `add_sm` (`e_id`, `name`, `pass`, `gender`, `email`, `phone`, `address`, `dob`, `bl_grp`, `nid`, `salary`, `e_count`) VALUES
('34567', 'Ullash', '1234567', 'Male', 'ullash@ieee.org', '01112233445', 'dhaka', '1998-08-09', 'O(-ve)', '12345678987654', 2000, 1),
('3713', 'Hamidur Rahman Ullash', 'ullash04', 'Male', 'mhullash57@gmail.com', '01942511663', 'Shewrapara, Mirpur, Dhaka-1216.', '1997-07-17', 'B(+ve)', '123456789123', 20000, 3),
('9262', 'ABCD', '12345678', 'Male', 'abc@gmail.com', '0122334456', 'Mirpur', '1998-08-09', 'B(+ve)', '11223355667', 3000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `ad_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` text NOT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`ad_id`, `email`, `pass`, `Name`) VALUES
(1, 'admin001@gmail.com', '1234', 'Fahimin Haque Arpa'),
(2, 'admin002@gmail.com', '12345', 'Md. Tarif Sadman');

-- --------------------------------------------------------

--
-- Table structure for table `em_msg`
--

CREATE TABLE `em_msg` (
  `m_id` int(11) NOT NULL,
  `u_email` varchar(20) NOT NULL,
  `msg_rcvr` varchar(100) NOT NULL,
  `msg_type` varchar(20) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `msg` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fair_chart`
--

CREATE TABLE `fair_chart` (
  `s_id` int(10) NOT NULL,
  `s_name` text NOT NULL,
  `r_code` varchar(20) NOT NULL,
  `cost` int(3) NOT NULL,
  `count` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fair_chart`
--

INSERT INTO `fair_chart` (`s_id`, `s_name`, `r_code`, `cost`, `count`) VALUES
(1, 'Uttara North', 'UN-01', 40, 13),
(2, 'Uttara Center', 'UC-02', 60, 14),
(3, 'Uttara South', 'US-03', 24, 15),
(4, 'Pallabi', 'PL-04', 120, 16),
(5, 'Mirpur 11', 'MP-05', 100, 17),
(6, 'Mirpur 10', 'MP-06', 125, 18),
(7, 'Kazipara', 'KZ-07', 35, 19),
(8, 'Shewrapara', 'SP-08', 80, 20),
(9, 'Agargaon', 'AG-09', 70, 21),
(10, 'Bijoy Sarani', 'BS-10', 65, 22),
(11, 'Farmgate', 'FG-11', 45, 23),
(12, 'Karwan Bazar', 'KB-12', 25, 24),
(13, 'Shahbag', 'SB-13', 20, 25),
(14, 'Dhaka University', 'DU-14', 65, 26),
(15, 'Bangladesh Secretariat', 'BS-15', 35, 27),
(16, 'Motijheel', 'ML-16', 15, 28),
(17, 'Bonani', 'BN-17', 75, 29),
(18, 'Airport', 'AP-18', 85, 30),
(19, 'Amin Bazar', 'AB-19', 90, 31),
(20, 'Gabtoli', 'GB-20', 30, 32),
(21, 'Kollanpur', 'KP-21', 55, 33),
(22, 'New Market', 'NM-22', 60, 34),
(23, 'Moh. pur', 'MH-23', 40, 35),
(24, 'Kuril', 'KU-34', 90, 36),
(25, 'Gazipur', 'GZ-03', 60, 39);

-- --------------------------------------------------------

--
-- Table structure for table `payment_data`
--

CREATE TABLE `payment_data` (
  `t_num` text NOT NULL,
  `u_email` text NOT NULL,
  `p_method` text NOT NULL,
  `p_amount` int(11) NOT NULL,
  `p_num` text NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_ticket`
--

CREATE TABLE `purchase_ticket` (
  `u_id` int(10) NOT NULL,
  `tkt_id` int(5) NOT NULL,
  `u_email` varchar(20) NOT NULL,
  `route_from` text NOT NULL,
  `route_to` text NOT NULL,
  `p_date` text NOT NULL,
  `p_time` text NOT NULL,
  `class` text NOT NULL,
  `p_num` int(5) NOT NULL,
  `p_type` text NOT NULL,
  `adult` int(5) NOT NULL,
  `child` int(5) NOT NULL,
  `t_name` text NOT NULL,
  `c_num` text NOT NULL,
  `sit_num` int(3) DEFAULT NULL,
  `sit_num1` int(10) NOT NULL,
  `sit_num2` int(10) NOT NULL,
  `sit_num3` int(10) NOT NULL,
  `sit_num4` int(10) NOT NULL,
  `cost` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `tkt_id` int(11) NOT NULL,
  `u_email` text NOT NULL,
  `route_from` text NOT NULL,
  `route_to` text NOT NULL,
  `p_date` text NOT NULL,
  `p_time` text NOT NULL,
  `class` text NOT NULL,
  `t_name` text NOT NULL,
  `c_num` text NOT NULL,
  `sit_1` int(11) NOT NULL,
  `sit_2` int(11) NOT NULL,
  `sit_3` int(11) NOT NULL,
  `sit_4` int(11) NOT NULL,
  `sit_5` int(11) NOT NULL,
  `c_tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `train_list`
--

CREATE TABLE `train_list` (
  `t_id` int(10) NOT NULL,
  `t_name` text NOT NULL,
  `T_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train_list`
--

INSERT INTO `train_list` (`t_id`, `t_name`, `T_code`) VALUES
(1, 'Surma-Meghna', 'TR-01'),
(2, 'Padma ', 'TR-02'),
(3, 'Jomuna', 'TR-03'),
(4, 'Dhaleswari ', 'TR-04'),
(5, 'Karatoya ', 'TR-05'),
(6, 'Punarbhaba ', 'TR-06'),
(7, 'Himaloy ', 'TR-07'),
(8, 'Sky ', 'TR-08'),
(9, 'Testa ', 'TR-09'),
(10, 'Brahmaputra ', 'TR-10');

-- --------------------------------------------------------

--
-- Table structure for table `train_route`
--

CREATE TABLE `train_route` (
  `r_id` int(10) NOT NULL,
  `r_name` text NOT NULL,
  `r_code` varchar(20) NOT NULL,
  `sm_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train_route`
--

INSERT INTO `train_route` (`r_id`, `r_name`, `r_code`, `sm_name`) VALUES
(1, 'Uttara North', 'UN-01', 'Akash'),
(2, 'Uttara Center', 'UC-02', 'Sadman'),
(3, 'Uttara South', 'US-03', 'Nadia'),
(4, 'Pallabi', 'PL-04', 'Tanvir'),
(5, 'Mirpur 11', 'MP-05', 'Sabbir'),
(6, 'Mirpur 10', 'MP-06', 'Sami'),
(7, 'Kazipara', 'KZ-07', 'Moon'),
(8, 'Shewrapara', 'SP-08', 'Rafat'),
(9, 'Agargaon', 'AG-09', 'Oyshee'),
(10, 'Bijoy Sarani', 'BS-10', 'Arpa'),
(11, 'Farmgate', 'FG-11', 'Farhan'),
(12, 'Karwan Bazar', 'KB-12', 'Hamim'),
(13, 'Shahbag', 'SB-13', 'Hasan'),
(14, 'Dhaka University', 'DU-14', 'Rakib'),
(15, 'Bangladesh Secretariat', 'BS-15', 'Sami'),
(16, 'Motijheel', 'ML-16', 'Sameen'),
(17, 'Bonani', 'BN-17', 'Taha'),
(18, 'Airport', 'AP-18', 'Nabil'),
(19, 'Amin Bazar', 'AB-19', 'Hanif'),
(20, 'Gabtoli', 'GB-20', 'Abdur'),
(21, 'Kollanpur', 'KP-21', 'Mumin'),
(22, 'New Market', 'NM-22', 'Sky'),
(23, 'Moh. pur', 'MH-23', 'Sadad'),
(24, 'Kuril', 'Kuril-34', 'Mr. Ali'),
(25, 'Gazipur', 'GZ-03', 'Ali Islam');

-- --------------------------------------------------------

--
-- Table structure for table `train_schedule`
--

CREATE TABLE `train_schedule` (
  `r_id` int(11) NOT NULL,
  `r_name` text NOT NULL,
  `r_code` varchar(10) NOT NULL,
  `t_name` text NOT NULL,
  `t_code` varchar(10) NOT NULL,
  `dep_time` text NOT NULL,
  `ar_time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train_schedule`
--

INSERT INTO `train_schedule` (`r_id`, `r_name`, `r_code`, `t_name`, `t_code`, `dep_time`, `ar_time`) VALUES
(64, 'Uttara North', 'UN-01', 'Surma-Meghna', 'TR-01', '07:00AM', '06:45AM'),
(65, 'Uttara Center', 'UC-02', 'Padma', 'TR-02', '09:00AM', '08:45AM'),
(66, 'Uttara South', 'US-03', 'Jomuna', 'TR-03', '11:00AM', '10:45AM'),
(67, 'Pallabi', 'PL-04', 'Dhaleswari', 'TR-04', '01:00PM', '12:45PM'),
(68, 'Mirpur 11', 'MP-05', 'Karatoya', 'TR-05', '03:00PM', '02:45PM'),
(69, 'Mirpur 10', 'MP-06', 'Punarbhaba', 'TR-06', '05:00PM', '04:45PM'),
(70, 'Kazipara', 'KZ-07', 'Himaloy', 'TR-07', '07:00PM', '06:45PM'),
(71, 'Shewrapara', 'SP-08', 'Sky', 'TR-08', '09:00PM', '08:45PM'),
(72, 'Agargaon', 'AG-09', 'Testa', 'TR-09', '11:00PM', '10:45PM'),
(73, 'Bijoy Sarani', 'BS-10', 'Brahmaputra ', 'TR-10', '07:00AM', '06:45AM');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `name` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `pswrd` text NOT NULL,
  `phn_number` text NOT NULL,
  `nid` int(13) NOT NULL,
  `adrs` text NOT NULL,
  `dob` text NOT NULL,
  `bl_group` varchar(5) NOT NULL,
  `gender` text NOT NULL,
  `ocpsn` text NOT NULL,
  `healt_issue` text NOT NULL,
  `user_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`name`, `email`, `pswrd`, `phn_number`, `nid`, `adrs`, `dob`, `bl_group`, `gender`, `ocpsn`, `healt_issue`, `user_count`) VALUES
('User', 'aaaa@gmail.com', '12345##.', '00000000000', 2147483647, 'uttara', '1886-Jul-23', 'B(+)', 'Female', 'student', 'high pressure', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_emp`
--
ALTER TABLE `add_emp`
  ADD PRIMARY KEY (`e_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `e_count` (`e_count`);

--
-- Indexes for table `add_sm`
--
ALTER TABLE `add_sm`
  ADD PRIMARY KEY (`e_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `e_count` (`e_count`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`ad_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `em_msg`
--
ALTER TABLE `em_msg`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `fair_chart`
--
ALTER TABLE `fair_chart`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `count` (`count`);

--
-- Indexes for table `payment_data`
--
ALTER TABLE `payment_data`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `purchase_ticket`
--
ALTER TABLE `purchase_ticket`
  ADD PRIMARY KEY (`tkt_id`),
  ADD UNIQUE KEY `sit_num` (`sit_num`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`c_tid`);

--
-- Indexes for table `train_list`
--
ALTER TABLE `train_list`
  ADD PRIMARY KEY (`t_id`),
  ADD UNIQUE KEY `T_code` (`T_code`);

--
-- Indexes for table `train_route`
--
ALTER TABLE `train_route`
  ADD PRIMARY KEY (`r_id`),
  ADD UNIQUE KEY `r_code` (`r_code`);

--
-- Indexes for table `train_schedule`
--
ALTER TABLE `train_schedule`
  ADD PRIMARY KEY (`r_id`),
  ADD UNIQUE KEY `r_code` (`r_code`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`email`),
  ADD KEY `user_count` (`user_count`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_emp`
--
ALTER TABLE `add_emp`
  MODIFY `e_count` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_sm`
--
ALTER TABLE `add_sm`
  MODIFY `e_count` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `em_msg`
--
ALTER TABLE `em_msg`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fair_chart`
--
ALTER TABLE `fair_chart`
  MODIFY `count` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `payment_data`
--
ALTER TABLE `payment_data`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchase_ticket`
--
ALTER TABLE `purchase_ticket`
  MODIFY `tkt_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `c_tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `train_list`
--
ALTER TABLE `train_list`
  MODIFY `t_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `train_route`
--
ALTER TABLE `train_route`
  MODIFY `r_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `train_schedule`
--
ALTER TABLE `train_schedule`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_count` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `train_route`
--
ALTER TABLE `train_route`
  ADD CONSTRAINT `train_route_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `fair_chart` (`s_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
