-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 23, 2025 at 08:17 AM
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
-- Database: `DropEx`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_credentials`
--

CREATE TABLE `admin_credentials` (
  `admin_id` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_credentials`
--

INSERT INTO `admin_credentials` (`admin_id`, `password`, `name`, `email`, `last_login`) VALUES
('999', '1234', 'Elon Mask', 'iamelon@gmail.com', '2025-01-22 16:15:47');

-- --------------------------------------------------------

--
-- Stand-in structure for view `arrived`
-- (See below for the actual view)
--
CREATE TABLE `arrived` (
`TrackingID` int(11)
,`StaffID` varchar(30)
,`S_Name` varchar(30)
,`S_Add` varchar(50)
,`S_City` varchar(20)
,`S_State` varchar(20)
,`S_Contact` bigint(20)
,`R_Name` varchar(30)
,`R_Add` varchar(50)
,`R_City` varchar(20)
,`R_State` varchar(20)
,`R_Contact` bigint(20)
,`Weight_Kg` decimal(10,2)
,`Price` decimal(10,2)
,`Dispatched_Time` timestamp
,`Shipped` timestamp
,`Out_for_delivery` timestamp
,`Delivered` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `Branch_id` int(11) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Contact` bigint(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Manager_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`Branch_id`, `Address`, `Contact`, `Email`, `Manager_id`) VALUES
(1, 'Dhaka, Bangladesh', 880177654321, 'dhaka_branch@gmail.com', 'DE1137'),
(2, 'Paris, France', 331234567890, 'paris_branch@gmail.com', 'DE1124'),
(3, 'Berlin, Germany', 493012345678, 'berlin_branch@gmail.com', 'DE1139'),
(4, 'Madrid, Spain', 349112233445, 'madrid_branch@gmail.com', 'DE1131'),
(5, 'Rome, Italy', 390612345678, 'rome_branch@gmail.com', 'DE1127'),
(6, 'New York, USA', 12123456789, 'newyork_branch@gmail.com', 'DE1141'),
(7, 'London, UK', 442071234567, 'london_branch@gmail.com', 'DE9913'),
(8, 'Sydney, Australia', 61298765432, 'sydney_branch@gmail.com', 'DE1129'),
(9, 'Tokyo, Japan', 813123456789, 'tokyo_branch@gmail.com', 'DE1135'),
(10, 'Beijing, China', 8613509876543, 'beijing_branch@gmail.com', 'DE1140'),
(11, 'Moscow, Russia', 74951234567, 'moscow_branch@gmail.com', 'DE1130'),
(12, 'Cairo, Egypt', 2023456789, 'cairo_branch@gmail.com', 'DE1142'),
(13, 'Cape Town, South Africa', 27821234567, 'capetown_branch@gmail.com', 'DE1143');

-- --------------------------------------------------------

--
-- Stand-in structure for view `delivered`
-- (See below for the actual view)
--
CREATE TABLE `delivered` (
`TrackingID` int(11)
,`StaffID` varchar(30)
,`S_Name` varchar(30)
,`S_Add` varchar(50)
,`S_City` varchar(20)
,`S_State` varchar(20)
,`S_Contact` bigint(20)
,`R_Name` varchar(30)
,`R_Add` varchar(50)
,`R_City` varchar(20)
,`R_State` varchar(20)
,`R_Contact` bigint(20)
,`Weight_Kg` decimal(10,2)
,`Price` decimal(10,2)
,`Dispatched_Time` timestamp
,`Shipped` timestamp
,`Out_for_delivery` timestamp
,`Delivered` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `Cust_name` varchar(30) NOT NULL,
  `Cust_mail` varchar(50) NOT NULL,
  `Cust_msg` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `Cust_name`, `Cust_mail`, `Cust_msg`) VALUES
(2, 'Tahimul Amin', 'tahimul@gmail.com', 'hiii'),
(2, 'Tahimul Amin', 'tahimul@gmail.com', 'hiiiiiiiiiiiiiiiiiiiiiii'),
(2, 'Tahimul Amin', 'tahimul@gmail.com', 'good service '),
(2, 'Tahimul Amin', 'tahimul@gmail.com', 'good service\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `online_request`
--

CREATE TABLE `online_request` (
  `serial` int(11) NOT NULL,
  `S_Name` varchar(30) NOT NULL,
  `S_Add` varchar(50) NOT NULL,
  `S_City` varchar(20) NOT NULL,
  `S_State` varchar(20) NOT NULL,
  `S_Contact` bigint(20) NOT NULL,
  `R_Name` varchar(30) NOT NULL,
  `R_Add` varchar(50) NOT NULL,
  `R_City` varchar(20) NOT NULL,
  `R_State` varchar(20) NOT NULL,
  `R_Contact` bigint(20) NOT NULL,
  `Weight_Kg` decimal(10,2) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Dispatched_Time` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(255) NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `online_request`
--

INSERT INTO `online_request` (`serial`, `S_Name`, `S_Add`, `S_City`, `S_State`, `S_Contact`, `R_Name`, `R_Add`, `R_City`, `R_State`, `R_Contact`, `Weight_Kg`, `Price`, `Dispatched_Time`, `user_id`, `status`) VALUES
(14, 'Misbah', 'Dhaka', 'dhaka', 'Bangladesh', 123455, 'Neyamul', 'Italy', 'Paris', 'Italy', 6756342, 2.00, 2800.00, '2025-01-21 17:02:42', 2, 'approved'),
(15, 'Tahimul', 'Dhaka, Bangladesh', 'Dhaka', 'Bangladesh', 12345678, 'Neyamul', 'Paris, Italy', 'Paris', 'Italy', 987654, 10.00, 14000.00, '2025-01-21 18:21:47', 2, 'approved'),
(21, 'tahimul', 'drtfd', 'ddrd', 'Bangladesh', 2452, 'sdfsdf', 'sdfsd', 'sdf', 'Italy', 453, 2.00, 2800.00, '2025-01-21 18:53:48', 2, 'rejected'),
(22, 'tahimul', 'weyrg', 'dsg', 'Bangladesh', 3463, 'sdfsd', 'dfg', 'dfg', 'Italy', 34535, 5.00, 7000.00, '2025-01-21 18:54:10', 2, 'approved'),
(23, 'tahimul', 'ert', 'ert', 'Bangladesh', 3425, 'fgdfg', 'fdg', 'sdfg', 'Italy', 345, 21.00, 29400.00, '2025-01-21 18:56:19', 2, 'approved'),
(24, 'Tahimul Amin', 'fgdfg', 'dfg', 'Bangladesh', 345, 'dfgd', 'fgdfg', 'dfg', 'Italy', 234, 30.00, 42000.00, '2025-01-21 18:58:52', 2, 'approved'),
(25, 'tahimul', 'dfgss', 'dfs', 'Bangladesh', 3453254, 'dsfsdf', 'sdf', 'sdf', 'Italy', 234, 34.00, 47600.00, '2025-01-21 19:11:43', 2, 'approved'),
(26, 'tahimul', 'sydcus', 'sdcs', 'Bangladesh', 23456, 'sds', 'sdcs', 'sdc', 'Italy', 3456, 4.00, 5600.00, '2025-01-21 20:54:05', 2, 'approved'),
(27, 'tahimul', 'hgfgh', 'fdgh', 'Bangladesh', 7653456, 'misbah', 'jfhf', 'htdthd', 'Italy', 875, 45.00, 63000.00, '2025-01-21 21:55:06', 2, 'approved'),
(28, 'tahimul', 'htfth', 'dgrd', 'Bangladesh', 756, 'hgfh', 'gdhgd', 'hgd', 'Italy', 765675, 23.00, 32200.00, '2025-01-21 21:57:49', 2, 'rejected'),
(29, 'tahimul', 'Dhaka', 'Dhaka', 'Bangladesh', 1234456884, 'Jahid khan', 'Australia', 'Good people city', 'Australia', 3335656, 4.00, 6800.00, '2025-01-22 04:57:49', 2, 'approved'),
(30, 'tahimul', 'Dhaka', 'Dhaka', 'Bangladesh', 9964288, 'Nahid', 'UK,london', 'people city', 'UK', 82974647, 8.00, 12800.00, '2025-01-22 04:58:57', 2, 'rejected'),
(31, 'tahimul', 'Dhaka,mirpur', 'mirpur', 'Bangladesh', 746646778, 'Md harun', 'Tokyo,japan,house', 'Tokyo,japan,house', 'Japan', 66544567, 7.00, 12600.00, '2025-01-22 05:42:40', 2, 'approved'),
(32, 'tahimul', 'Dhaka,mirpur', 'mirpur', 'Bangladesh', 65468346, 'Rahim Ahamed', 'Tokyo,japan,house', 'Tokyo,japan,house', 'Japan', 665445676, 5.00, 9000.00, '2025-01-22 10:17:13', 2, 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `parcel`
--

CREATE TABLE `parcel` (
  `TrackingID` int(11) NOT NULL,
  `StaffID` varchar(30) NOT NULL,
  `S_Name` varchar(30) NOT NULL,
  `S_Add` varchar(50) NOT NULL,
  `S_City` varchar(20) NOT NULL,
  `S_State` varchar(20) NOT NULL,
  `S_Contact` bigint(20) NOT NULL,
  `R_Name` varchar(30) NOT NULL,
  `R_Add` varchar(50) NOT NULL,
  `R_City` varchar(20) NOT NULL,
  `R_State` varchar(20) NOT NULL,
  `R_Contact` bigint(20) NOT NULL,
  `Weight_Kg` decimal(10,2) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Dispatched_Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `parcel`
--

INSERT INTO `parcel` (`TrackingID`, `StaffID`, `S_Name`, `S_Add`, `S_City`, `S_State`, `S_Contact`, `R_Name`, `R_Add`, `R_City`, `R_State`, `R_Contact`, `Weight_Kg`, `Price`, `Dispatched_Time`) VALUES
(1407, 'DE9913', 'Mehedi hasan', 'Australia , good people town 1300', 'Sydney', 'Australia', 87655, 'Afrin sultana', 'Japan', 'Tokyo', 'Japan', 654844845, 48.00, 52800.00, '2025-01-14 19:52:00'),
(1408, 'DE9913', 'Mosaraf karim', 'Australia ,  1300', 'Sydney', 'Australia', 4367900, 'Samrat', 'Brazil', 'Rio de Janeiro', 'Brazil', 77876558, 79.00, 126400.00, '2025-01-14 19:54:37'),
(1415, 'DE1122', 'Tahimul', 'Badda,Dhaka', 'Dhaka', 'Bangladesh', 4567654, 'Ramim', 'Tokyo, Japan,good people city 223', 'Tokyo,japan,house', 'Japan', 765434, 5.00, 9000.00, '2025-01-18 08:56:25'),
(142154, 'DE1137', 'tahimul', 'Dhaka,mirpur', 'mirpur', 'Bangladesh', 746646778, 'Md harun', 'Tokyo,japan,house', 'Tokyo,japan,house', 'Japan', 66544567, 7.00, 12600.00, '2025-01-22 05:42:40'),
(241711, 'DE8888', 'tahimul', 'sydcus', 'sdcs', 'Bangladesh', 23456, 'sds', 'sdcs', 'sdc', 'Italy', 3456, 4.00, 5600.00, '2025-01-21 20:54:05'),
(374600, 'DE1124', 'dfgsdg', 'sdfgsdg', 'sdfsdf', 'France', 4345, 'fdsgs', 'sdfg', 'sdfgdh', 'Italy', 324, 3.00, 4800.00, '2025-01-21 12:39:40'),
(392643, 'DE1137', 'asfasf', 'wetgtw', 'regq', 'Bangladesh', 2142, 'dfsdf', 'sdg', 'sdg', 'Italy', 3552352, 2.00, 2800.00, '2025-01-20 06:08:44'),
(417492, 'DE8888', 'Tahimul Amin', 'fgdfg', 'dfg', 'Bangladesh', 345, 'dfgd', 'fgdfg', 'dfg', 'Italy', 234, 30.00, 42000.00, '2025-01-21 18:58:52'),
(418195, 'DE1137', 'ytfgqwhgfdqwedfq', 'qedq', 'wedq', 'Bangladesh', 6545, 'jhfhg', 'htgfyt', 'uyrytr', 'Italy', 644, 2.00, 2800.00, '2025-01-20 13:07:45'),
(422046, 'DE1124', 'asfasf', 'wetgtw', 'regq', 'Bangladesh', 2142, 'dfsdf', 'sdg', 'sdg', 'Italy', 3552352, 2.00, 2800.00, '2025-01-20 06:08:44'),
(478674, 'DE8888', 'tahimul', 'ert', 'ert', 'Bangladesh', 3425, 'fgdfg', 'fdg', 'sdfg', 'Italy', 345, 21.00, 29400.00, '2025-01-21 18:56:19'),
(549849, 'DE8888', 'tahimul', 'dfgss', 'dfs', 'Bangladesh', 3453254, 'dsfsdf', 'sdf', 'sdf', 'Italy', 234, 34.00, 47600.00, '2025-01-21 19:11:43'),
(571343, 'DE1137', 'tahimul', 'Dhaka', 'Dhaka', 'Bangladesh', 1234456884, 'Jahid khan', 'Australia', 'Good people city', 'Australia', 3335656, 4.00, 6800.00, '2025-01-22 04:57:49'),
(667565, 'DE1137', 'asfasf', 'wetgtw', 'regq', 'Bangladesh', 2142, 'dfsdf', 'sdg', 'sdg', 'Italy', 3552352, 2.00, 2800.00, '2025-01-20 06:08:44'),
(674046, 'DE8888', 'tahimul', 'weyrg', 'dsg', 'Bangladesh', 3463, 'sdfsd', 'dfg', 'dfg', 'Italy', 34535, 5.00, 7000.00, '2025-01-21 18:54:10'),
(749949, 'DE1137', 'asfasf', 'wetgtw', 'regq', 'Bangladesh', 2142, 'dfsdf', 'sdg', 'sdg', 'Italy', 3552352, 2.00, 2800.00, '2025-01-20 06:08:44'),
(804435, 'DE8888', 'Misbah', 'Dhaka', 'dhaka', 'Bangladesh', 123455, 'Neyamul', 'Italy', 'Paris', 'Italy', 6756342, 2.00, 2800.00, '2025-01-21 17:02:42'),
(841194, 'DE8888', 'tahimul', 'dfg', 'dfgdf', 'Bangladesh', 654, 'tghdfg', 'fddfg', 'dfg', 'Italy', 76543, 3.00, 4200.00, '2025-01-21 18:34:08'),
(898625, 'DE1137', 'tahimul', 'hgfgh', 'fdgh', 'Bangladesh', 7653456, 'misbah', 'jfhf', 'htdthd', 'Italy', 875, 45.00, 63000.00, '2025-01-21 21:55:06'),
(961029, 'DE1137', 'tahimul', 'Dhaka,mirpur', 'mirpur', 'Bangladesh', 65468346, 'Rahim Ahamed', 'Tokyo,japan,house', 'Tokyo,japan,house', 'Japan', 665445676, 5.00, 9000.00, '2025-01-22 10:17:13'),
(992826, 'DE8888', 'tahimul', 'dfgd', 'dfgdfg', 'Bangladesh', 345, 'sdfsf', 'sdfs', 'sdf', 'Italy', 5635, 2.00, 2800.00, '2025-01-21 18:46:36'),
(992827, 'DE1137', 'Khaled Mosaraf', 'Dhaka, Vatara thana', 'Dhaka', 'Bangladesh', 162576209166, 'Jhangir kabir', 'Japan', 'Tokyo', 'Japan', 65556776, 4.00, 7200.00, '2025-01-22 10:13:20');

--
-- Triggers `parcel`
--
DELIMITER $$
CREATE TRIGGER `placeParcel` AFTER INSERT ON `parcel` FOR EACH ROW BEGIN
	UPDATE staff SET Credits=Credits+5 WHERE StaffID=NEW.StaffID;
    
    INSERT INTO status (TrackingID, StaffID, Dispatched)
    VALUES ( NEW.TrackingID, NEW.StaffID, NEW.Dispatched_Time);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `p_id` int(11) NOT NULL,
  `State_1` varchar(30) NOT NULL,
  `State_2` varchar(30) NOT NULL,
  `Cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`p_id`, `State_1`, `State_2`, `Cost`) VALUES
(1, 'Bangladesh', 'France', 1100),
(2, 'Bangladesh', 'Germany', 1200),
(3, 'Bangladesh', 'Spain', 1300),
(4, 'Bangladesh', 'Italy', 1400),
(5, 'Bangladesh', 'USA', 1500),
(6, 'Bangladesh', 'UK', 1600),
(7, 'Bangladesh', 'Australia', 1700),
(8, 'Bangladesh', 'Japan', 1800),
(9, 'Bangladesh', 'China', 1900),
(10, 'Bangladesh', 'Russia', 1000),
(11, 'Bangladesh', 'Egypt', 1100),
(12, 'Bangladesh', 'South Africa', 1200),
(13, 'Bangladesh', 'Brazil', 1300),
(14, 'France', 'Germany', 1400),
(15, 'France', 'Spain', 1500),
(16, 'France', 'Italy', 1600),
(17, 'France', 'USA', 1700),
(18, 'France', 'UK', 1800),
(19, 'France', 'Australia', 1900),
(20, 'France', 'Japan', 1000),
(21, 'France', 'China', 1100),
(22, 'France', 'Russia', 1200),
(23, 'France', 'Egypt', 1300),
(24, 'France', 'South Africa', 1400),
(25, 'France', 'Brazil', 1500),
(26, 'Germany', 'Spain', 1600),
(27, 'Germany', 'Italy', 1700),
(28, 'Germany', 'USA', 1800),
(29, 'Germany', 'UK', 1900),
(30, 'Germany', 'Australia', 1000),
(31, 'Germany', 'Japan', 1100),
(32, 'Germany', 'China', 1200),
(33, 'Germany', 'Russia', 1300),
(34, 'Germany', 'Egypt', 1400),
(35, 'Germany', 'South Africa', 1500),
(36, 'Germany', 'Brazil', 1600),
(37, 'Spain', 'Italy', 1700),
(38, 'Spain', 'USA', 1800),
(39, 'Spain', 'UK', 1900),
(40, 'Spain', 'Australia', 1000),
(41, 'Spain', 'Japan', 1100),
(42, 'Spain', 'China', 1200),
(43, 'Spain', 'Russia', 1300),
(44, 'Spain', 'Egypt', 1400),
(45, 'Spain', 'South Africa', 1500),
(46, 'Spain', 'Brazil', 1600),
(47, 'Italy', 'USA', 1700),
(48, 'Italy', 'UK', 1800),
(49, 'Italy', 'Australia', 1900),
(50, 'Italy', 'Japan', 1000),
(51, 'Italy', 'China', 1100),
(52, 'Italy', 'Russia', 1200),
(53, 'Italy', 'Egypt', 1300),
(54, 'Italy', 'South Africa', 1400),
(55, 'Italy', 'Brazil', 1500),
(56, 'USA', 'UK', 1600),
(57, 'USA', 'Australia', 1700),
(58, 'USA', 'Japan', 1800),
(59, 'USA', 'China', 1900),
(60, 'USA', 'Russia', 1000),
(61, 'USA', 'Egypt', 1100),
(62, 'USA', 'South Africa', 1200),
(63, 'USA', 'Brazil', 1300),
(64, 'UK', 'Australia', 1400),
(65, 'UK', 'Japan', 1500),
(66, 'UK', 'China', 1600),
(67, 'UK', 'Russia', 1700),
(68, 'UK', 'Egypt', 1800),
(69, 'UK', 'South Africa', 1900),
(70, 'UK', 'Brazil', 1000),
(71, 'Australia', 'Japan', 1100),
(72, 'Australia', 'China', 1200),
(73, 'Australia', 'Russia', 1300),
(74, 'Australia', 'Egypt', 1400),
(75, 'Australia', 'South Africa', 1500),
(76, 'Australia', 'Brazil', 1600),
(77, 'Japan', 'China', 1700),
(78, 'Japan', 'Russia', 1800),
(79, 'Japan', 'Egypt', 1900),
(80, 'Japan', 'South Africa', 1000),
(81, 'Japan', 'Brazil', 1100),
(82, 'China', 'Russia', 1200),
(83, 'China', 'Egypt', 1300),
(84, 'China', 'South Africa', 1400),
(85, 'China', 'Brazil', 1500),
(86, 'Russia', 'Egypt', 1600),
(87, 'Russia', 'South Africa', 1700),
(88, 'Russia', 'Brazil', 1800),
(89, 'Egypt', 'South Africa', 1900),
(90, 'Egypt', 'Brazil', 1000),
(91, 'South Africa', 'Brazil', 1100);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` varchar(30) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Designation` varchar(30) NOT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `DOJ` date NOT NULL,
  `Salary` int(11) NOT NULL,
  `Mobile` bigint(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Credits` int(11) NOT NULL DEFAULT 0,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `branch_id`, `Name`, `Designation`, `branch`, `Gender`, `DOB`, `DOJ`, `Salary`, `Mobile`, `Email`, `Credits`, `pass`) VALUES
('DE1124', 0, 'Md. AR Hossain', 'Manager', 'France', 'M', '1980-02-14', '2025-01-13', 55000, 1234567890, 'arhossain@gmail.com', 10, '1234'),
('DE1127', 0, 'Mohiuddin Chowdhury', 'Manager', 'Italy', 'M', '1978-11-30', '2025-01-13', 60000, 5566778899, 'mohiuddinchowdhury@gmail.com', 0, '1234'),
('DE1129', 0, 'Rahul Islam', 'Manager', 'Australia', 'M', '1983-12-05', '2025-01-13', 65000, 4455667788, 'rahulislam@gmail.com', 0, '1234'),
('DE1130', 0, 'Md. Arifur Rahman', 'Manager', 'Russia', 'M', '1987-04-18', '2025-01-13', 47000, 1234876543, 'arifurrahman@gmail.com', 0, '1234'),
('DE1131', 0, 'Nashidah Rahman', 'Manager', 'Spain', 'F', '1994-02-22', '2025-01-13', 31000, 7766554433, 'nashidahrahman@gmail.com', 0, '1234'),
('DE1135', 0, 'Md. Rakib Hossain', 'Manager', 'Japan', 'M', '1985-04-25', '2025-01-13', 60000, 9876543211, 'rakibhossain@gmail.com', 0, '1234'),
('DE1137', 0, 'Abdullah Al Noman', 'Manager', 'Bangladesh', 'M', '1992-09-20', '2025-01-13', 48000, 9876543213, 'abdullahnoman@gmail.com', 45, '1234'),
('DE1139', 0, 'Kazi Shadman', 'Manager', 'Germany', 'M', '1989-11-05', '2025-01-13', 47000, 9876543215, 'kazishadman@gmail.com', 0, '1234'),
('DE1140', 0, 'Rumana Sultana', 'Manager', 'China', 'F', '1984-01-28', '2025-01-13', 60000, 9876543216, 'rumanasultana@gmail.com', 0, '1234'),
('DE1141', 0, 'Moinul Haque', 'Manager', 'USA', 'M', '1991-05-16', '2025-01-13', 46000, 9876543217, 'moinulhaque@gmail.com', 0, '1234'),
('DE1142', 0, 'Shahed Ali', 'Manager', 'Egypt', 'M', '1988-08-22', '2025-01-13', 55000, 9876543218, 'shahedali@gmail.com', 0, '1234'),
('DE1143', 0, 'Shirin Akhter', 'Manager', 'South Africa', 'F', '1993-03-18', '2025-01-13', 43000, 9876543219, 'shirinakhter@gmail.com', 0, '1234'),
('DE6688', 0, 'Ahmed Khan', 'Manager', 'France', 'Male', '1980-05-15', '2015-03-01', 120000, 1712345601, 'ahmed.khaun@gmail.com', 5, '1234'),
('DE7039', 0, 'Amir Jasim', 'Staff', 'Japan', 'M', '1999-01-08', '2003-01-31', 48000, 8765444444, 'amirjas@gmail.com', 0, '1234'),
('DE8888', 0, 'Misbah', 'Staff', 'Bangladesh', 'M', '2002-01-01', '2020-01-02', 50000, 123456, 'misbah@gmail.com', 40, '1234'),
('DE9913', 0, 'Alim Hosaian', 'Manager', 'UK', 'M', '2006-01-07', '2015-07-07', 25000, 87654345, 'alimalim@gmail.com', 25, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `TrackingID` int(11) NOT NULL,
  `StaffID` varchar(30) NOT NULL,
  `Dispatched` timestamp NULL DEFAULT NULL,
  `Shipped` timestamp NULL DEFAULT NULL,
  `Out_for_delivery` timestamp NULL DEFAULT NULL,
  `Delivered` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`TrackingID`, `StaffID`, `Dispatched`, `Shipped`, `Out_for_delivery`, `Delivered`) VALUES
(1401, 'DE1125', '2025-01-13 20:12:54', '2025-01-13 20:14:40', '2025-01-13 20:14:52', '2025-01-13 20:15:02'),
(1407, 'DE9913', '2025-01-14 19:52:00', '2025-01-20 15:57:42', '2025-01-20 15:57:57', '2025-01-20 15:58:43'),
(1408, 'DE9913', '2025-01-14 19:54:37', '2025-01-15 05:56:19', '2025-01-16 09:13:57', '2025-01-16 09:14:27'),
(142154, 'DE1137', '2025-01-22 05:42:40', '2025-01-22 05:45:04', '2025-01-22 05:45:09', '2025-01-22 05:47:37'),
(241711, 'DE8888', '2025-01-21 20:54:05', NULL, NULL, NULL),
(374600, 'DE1124', '2025-01-21 12:39:40', NULL, NULL, NULL),
(392643, 'DE1137', '2025-01-20 06:08:44', NULL, NULL, NULL),
(417492, 'DE8888', '2025-01-21 18:58:52', NULL, NULL, NULL),
(418195, 'DE1137', '2025-01-20 13:07:45', NULL, NULL, NULL),
(422046, 'DE1124', '2025-01-20 06:08:44', NULL, NULL, NULL),
(478674, 'DE8888', '2025-01-21 18:56:19', NULL, NULL, NULL),
(549849, 'DE8888', '2025-01-21 19:11:43', NULL, NULL, NULL),
(571343, 'DE1137', '2025-01-22 04:57:49', NULL, NULL, NULL),
(667565, 'DE1137', '2025-01-20 06:08:44', NULL, NULL, NULL),
(674046, 'DE8888', '2025-01-21 18:54:10', NULL, NULL, NULL),
(749949, 'DE1137', '2025-01-20 06:08:44', NULL, NULL, NULL),
(804435, 'DE8888', '2025-01-21 17:02:42', NULL, NULL, NULL),
(841194, 'DE8888', '2025-01-21 18:34:08', NULL, NULL, NULL),
(898625, 'DE1137', '2025-01-21 21:55:06', NULL, NULL, NULL),
(961029, 'DE1137', '2025-01-22 10:17:13', NULL, NULL, NULL),
(992826, 'DE8888', '2025-01-21 18:46:36', '2025-01-22 04:55:20', '2025-01-22 04:55:25', '2025-01-22 04:55:30'),
(992827, 'DE1137', '2025-01-22 10:13:20', '2025-01-22 10:14:05', '2025-01-22 10:14:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_login` timestamp NULL DEFAULT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `last_login`, `name`) VALUES
(1, 'tahmid', 'tah12@gmail.com', '$2y$10$Jh86wYMLY2Syqa61ISyg5eWG5F89Q3xRf2pyhR3jllTxTt9MB0VKa', '2025-01-15 16:22:17', '2025-01-15 21:29:24', 'Tahamid '),
(2, 'tahimul', 'tahimul@gmail.com', '$2y$10$vJa4e3a0NpK/smw63UZhJetpeTWoj/6ajtm8Tcx/IQJ8rzQ6/QjC.', '2025-01-15 16:24:21', '2025-01-22 10:16:46', 'Tahimul Amin');

-- --------------------------------------------------------

--
-- Structure for view `arrived`
--
DROP TABLE IF EXISTS `arrived`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `arrived`  AS SELECT `p`.`TrackingID` AS `TrackingID`, `p`.`StaffID` AS `StaffID`, `p`.`S_Name` AS `S_Name`, `p`.`S_Add` AS `S_Add`, `p`.`S_City` AS `S_City`, `p`.`S_State` AS `S_State`, `p`.`S_Contact` AS `S_Contact`, `p`.`R_Name` AS `R_Name`, `p`.`R_Add` AS `R_Add`, `p`.`R_City` AS `R_City`, `p`.`R_State` AS `R_State`, `p`.`R_Contact` AS `R_Contact`, `p`.`Weight_Kg` AS `Weight_Kg`, `p`.`Price` AS `Price`, `p`.`Dispatched_Time` AS `Dispatched_Time`, `s`.`Shipped` AS `Shipped`, `s`.`Out_for_delivery` AS `Out_for_delivery`, `s`.`Delivered` AS `Delivered` FROM (`parcel` `p` join `status` `s`) WHERE `p`.`TrackingID` = `s`.`TrackingID` AND `s`.`Delivered` is null ;

-- --------------------------------------------------------

--
-- Structure for view `delivered`
--
DROP TABLE IF EXISTS `delivered`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `delivered`  AS SELECT `p`.`TrackingID` AS `TrackingID`, `p`.`StaffID` AS `StaffID`, `p`.`S_Name` AS `S_Name`, `p`.`S_Add` AS `S_Add`, `p`.`S_City` AS `S_City`, `p`.`S_State` AS `S_State`, `p`.`S_Contact` AS `S_Contact`, `p`.`R_Name` AS `R_Name`, `p`.`R_Add` AS `R_Add`, `p`.`R_City` AS `R_City`, `p`.`R_State` AS `R_State`, `p`.`R_Contact` AS `R_Contact`, `p`.`Weight_Kg` AS `Weight_Kg`, `p`.`Price` AS `Price`, `p`.`Dispatched_Time` AS `Dispatched_Time`, `s`.`Shipped` AS `Shipped`, `s`.`Out_for_delivery` AS `Out_for_delivery`, `s`.`Delivered` AS `Delivered` FROM (`parcel` `p` join `status` `s`) WHERE `p`.`TrackingID` = `s`.`TrackingID` AND `s`.`Delivered` is not null ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`Branch_id`),
  ADD KEY `Manager` (`Manager_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD KEY `fk_users_feedback` (`f_id`);

--
-- Indexes for table `online_request`
--
ALTER TABLE `online_request`
  ADD PRIMARY KEY (`serial`),
  ADD KEY `fk_users_online_request` (`user_id`);

--
-- Indexes for table `parcel`
--
ALTER TABLE `parcel`
  ADD PRIMARY KEY (`TrackingID`),
  ADD KEY `fk_staff_parcel` (`StaffID`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD KEY `fk_branches_staff` (`branch_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD UNIQUE KEY `TrackID` (`TrackingID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `Branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `online_request`
--
ALTER TABLE `online_request`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `parcel`
--
ALTER TABLE `parcel`
  MODIFY `TrackingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=992828;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `Manager` FOREIGN KEY (`Manager_id`) REFERENCES `staff` (`StaffID`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_users_feedback` FOREIGN KEY (`f_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `online_request`
--
ALTER TABLE `online_request`
  ADD CONSTRAINT `fk_users_online_request` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `parcel`
--
ALTER TABLE `parcel`
  ADD CONSTRAINT `fk_staff_parcel` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `fk_branches_staff` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`Branch_id`);

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `delivery_status` FOREIGN KEY (`TrackingID`) REFERENCES `parcel` (`TrackingID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
