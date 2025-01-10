-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2024 at 09:07 PM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `Guest_ID` int(5) NOT NULL,
  `Guest_Name` varchar(15) DEFAULT NULL,
  `Guardian` varchar(20) DEFAULT NULL,
  `Phone` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`Guest_ID`, `Guest_Name`, `Guardian`, `Phone`, `Email`) VALUES
(1, 'Wareesha', 'habib', 2147483647, 'hsu@gmail.com'),
(2, 'manal', 'shahid', 2147483647, 'olw@gmail.com'),
(3, 'sandal', 'shafaq', 2147483647, 'wun@gmail.com'),
(4, 'amnah', 'gul', 2147483647, 'vnk@gmail.com'),
(5, 'ayesha', 'habib', 2147483647, 'qed@gmail.com'),
(6, 'manahil', 'habib', 2147483647, 'kdl@gmail.com'),
(7, 'aneesa', 'inayat', 2147483647, 'hsw@gmail.com'),
(8, 'jaweria', 'durrani', 2147483647, 'for@gmail.com'),
(9, 'umer', 'haseeb', 2147483647, 'iwk@gmail.com'),
(10, 'usman', 'shoaib', 382849075, 'jau@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Hotel_ID` int(5) NOT NULL,
  `Hotel_Name` varchar(15) DEFAULT NULL,
  `Location` varchar(15) DEFAULT NULL,
  `Phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Hotel_ID`, `Hotel_Name`, `Location`, `Phone`) VALUES
(1, 'Marhaba Hotels', 'SMT Mardan', 836279374),
(2, 'Marhaba Hotels', 'SMT Mardan', 836279524),
(3, 'Marhaba Hotels', 'SMT Mardan', 839409374),
(4, 'Marhaba Hotels', 'SMT Mardan', 890279374),
(5, 'Marhaba Hotels', 'SMT Mardan', 834269376),
(6, 'Marhaba Hotels', 'SMT Mardan', 296279372),
(7, 'Marhaba Hotels', 'SMT Mardan', 429279374),
(8, 'Marhaba Hotels', 'SMT Mardan', 836279527),
(9, 'Marhaba Hotels', 'SMT Mardan', 836279293),
(10, 'Marhaba Hotels', 'SMT Mardan', 172279374);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` int(11) NOT NULL,
  `Reservation_ID` int(5) NOT NULL,
  `Amount` int(10) DEFAULT NULL,
  `Payment_Date` date NOT NULL,
  `Credit_Card` int(15) NOT NULL,
  `Debit_Card` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `Reservation_ID`, `Amount`, `Payment_Date`, `Credit_Card`, `Debit_Card`) VALUES
(1, 1, 25000, '2024-12-10', 25000, 0),
(2, 4, 30000, '2024-12-11', 25000, 0),
(3, 6, 25000, '2024-12-20', 20000, 0),
(4, 2, 30000, '2024-11-18', 25000, 0),
(5, 7, 25000, '2024-12-10', 25000, 0),
(6, 3, 15000, '2024-12-23', 25000, 0),
(7, 9, 25000, '2024-11-19', 30000, 0),
(8, 8, 25000, '2024-12-01', 30000, 0),
(9, 10, 25000, '2024-10-17', 15000, 0),
(10, 5, 25000, '2024-12-15', 25000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `Reservation_ID` int(11) NOT NULL,
  `Room_ID` int(11) NOT NULL,
  `Guest_ID` int(11) NOT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Checkin_Date` date NOT NULL,
  `Checkout_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`Reservation_ID`, `Room_ID`, `Guest_ID`, `Status`, `Checkin_Date`, `Checkout_Date`) VALUES
(1, 1, 2, 'Elite', '2024-12-10', '2024-12-08'),
(2, 4, 6, 'normal', '2024-12-12', '2024-12-10'),
(3, 2, 4, 'Elite', '2024-12-02', '2024-12-01'),
(4, 3, 8, 'normal', '2024-12-05', '2024-12-08'),
(5, 5, 9, 'normal', '2024-11-10', '2024-11-04'),
(6, 7, 3, 'Elite', '2024-12-21', '2024-12-12'),
(7, 6, 7, 'Elite', '2024-12-21', '2024-12-17'),
(8, 8, 10, 'VIP', '2024-12-02', '2024-12-01'),
(9, 9, 5, 'VIP', '2024-11-10', '2024-11-08'),
(10, 10, 1, 'Elite', '2024-12-10', '2024-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_ID` int(5) NOT NULL,
  `Room_No` int(15) NOT NULL,
  `Type` varchar(15) DEFAULT NULL,
  `Price` int(10) DEFAULT NULL,
  `Statuss` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_ID`, `Room_No`, `Type`, `Price`, `Statuss`) VALUES
(1, 45, 'one person', 50000, 'Elite'),
(2, 38, 'one person', 15000, 'normal'),
(3, 42, 'one person', 25000, 'VIP'),
(4, 30, 'one person', 15000, 'normal'),
(5, 67, 'one person', 30000, 'Elite'),
(6, 35, 'one person', 15000, 'normal'),
(7, 22, 'one person', 30000, 'Elite'),
(8, 2, 'one person', 25000, 'VIP'),
(9, 7, 'one person', 30000, 'Elite'),
(10, 19, 'one person', 30000, 'Elite');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_ID` int(11) NOT NULL,
  `Staff_Name` varchar(15) NOT NULL,
  `Position` varchar(10) NOT NULL,
  `Phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `Staff_Name`, `Position`, `Phone`) VALUES
(1, 'ahmed', 'worker', 575397434),
(2, 'haseeb', 'worker', 943280854),
(3, 'ahmed', 'helper', 2147483647),
(4, 'usman', 'co worker', 2147483647),
(5, 'ahmer', 'worker', 2147483647),
(6, 'umer', 'helper', 2147483647),
(7, 'ahmed', 'worker', 2147483647),
(8, 'ali', 'co worker', 583280854),
(9, 'ahmed', 'worker', 2147483647),
(10, 'ubaid', 'worker', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`Guest_ID`,`Email`,`Phone`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hotel_ID`,`Phone`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `Reservation_ID` (`Reservation_ID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Reservation_ID`),
  ADD KEY `Room_ID` (`Room_ID`),
  ADD KEY `Guest_ID` (`Guest_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_ID`,`Room_No`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`,`Phone`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Reservation_ID`) REFERENCES `reservation` (`Reservation_ID`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`Room_ID`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`Guest_ID`) REFERENCES `guest` (`Guest_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
