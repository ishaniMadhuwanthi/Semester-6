-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 03:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e15211co525ra`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DNAME` varchar(100) NOT NULL,
  `DNUMBER` int(11) NOT NULL,
  `MGRSSN` int(11) NOT NULL,
  `MGRSTARTDATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DNAME`, `DNUMBER`, `MGRSSN`, `MGRSTARTDATE`) VALUES
('headquaters', 1, 888556666, '1961-06-19'),
('administration', 4, 987654321, '1996-01-01'),
('research', 5, 333445555, '1998-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `dependent`
--

CREATE TABLE `dependent` (
  `ESSN` int(11) NOT NULL,
  `DEPENDENT_NAME` varchar(100) NOT NULL,
  `SEX` varchar(10) NOT NULL,
  `BDATE` date NOT NULL,
  `RELATIONSHIP` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dependent`
--

INSERT INTO `dependent` (`ESSN`, `DEPENDENT_NAME`, `SEX`, `BDATE`, `RELATIONSHIP`) VALUES
(123456789, 'Alice', 'F', '1988-12-30', 'DAUGHTER'),
(123456789, 'Elizabeth', 'F', '1967-05-05', 'SPOUSE'),
(123456789, 'Michael', 'M', '1988-06-04', 'SON'),
(333445555, 'Alice', 'F', '1986-04-25', 'DAUGHTER'),
(333445555, 'Joy', 'F', '1958-05-03', 'SPOUSE'),
(333445555, 'Theodore', 'M', '1983-10-25', 'SON'),
(987654321, 'Abner', 'M', '1942-02-28', 'SPOUSE');

-- --------------------------------------------------------

--
-- Table structure for table `dept_locations`
--

CREATE TABLE `dept_locations` (
  `DNUMBER` int(11) NOT NULL,
  `DLOCATION` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept_locations`
--

INSERT INTO `dept_locations` (`DNUMBER`, `DLOCATION`) VALUES
(1, 'Houston'),
(4, 'Stafford'),
(5, 'Bellaire'),
(5, 'Houston'),
(5, 'Sugarland');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `FNAME` varchar(100) NOT NULL,
  `MINT` varchar(10) NOT NULL,
  `LNAME` varchar(100) NOT NULL,
  `SSN` int(11) NOT NULL,
  `BDATE` date NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `SEX` varchar(10) NOT NULL,
  `SALARY` int(11) NOT NULL,
  `SUPERSSN` int(11) NOT NULL,
  `DNO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`FNAME`, `MINT`, `LNAME`, `SSN`, `BDATE`, `ADDRESS`, `SEX`, `SALARY`, `SUPERSSN`, `DNO`) VALUES
('John', 'B', 'Smith', 123456789, '1965-01-09', '731 Fondren Houston TX', 'M', 30000, 333445555, 5),
('Franklin', 'T', 'Wong', 333445555, '1955-12-08', '638 Voss Houston TX', 'M', 40000, 888665555, 5),
('Joyce', 'A', 'English', 453453453, '1972-07-31', '5631 Rice Houston TX', 'F', 25000, 333445555, 5),
('Ramesh', 'K', 'Narayan', 666884444, '1962-09-15', '975 Fire Oak Humble TX', 'M', 38000, 333445555, 5),
('James', 'E', 'Bong', 888665555, '1937-11-10', '450 Stone Houston TX', 'M', 55000, 0, 1),
('Jennifer', 'S', 'Walace', 987654321, '1941-06-20', '291 Berry Bellaire TX', 'F', 43000, 888665555, 4),
('Ahmed', 'V', 'Jabber', 987987987, '1969-03-29', '980 Dallas Houston TX', 'M', 25000, 987654321, 4),
('Alicia', 'J', 'Zelaya', 999887777, '1968-07-19', '3321 Castle Spring TX', 'F', 25000, 987654321, 4);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `PNAME` varchar(100) NOT NULL,
  `PNUMBER` int(11) NOT NULL,
  `PLOCATION` varchar(100) NOT NULL,
  `DNUM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`PNAME`, `PNUMBER`, `PLOCATION`, `DNUM`) VALUES
('ProductX', 1, 'Bellaire', 5),
('ProductY', 2, 'Sugarland', 5),
('ProductZ', 3, 'Houston', 5),
('Computerization', 10, 'Stafford', 4),
('Reorganization', 20, 'Houston', 1),
('Newbenefits', 30, 'Stafford', 4);

-- --------------------------------------------------------

--
-- Table structure for table `works_on`
--

CREATE TABLE `works_on` (
  `ESSN` int(11) NOT NULL,
  `PNO` int(11) NOT NULL,
  `HOURS` decimal(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works_on`
--

INSERT INTO `works_on` (`ESSN`, `PNO`, `HOURS`) VALUES
(123456789, 1, '32.5'),
(123456789, 2, '7.5'),
(333445555, 2, '10.0'),
(333445555, 3, '10.0'),
(333445555, 10, '10.0'),
(333445555, 20, '10.0'),
(453453453, 1, '20.0'),
(453453453, 2, '20.0'),
(666884444, 3, '40.0'),
(888665555, 20, '0.0'),
(987654321, 20, '15.0'),
(987654321, 30, '20.0'),
(987987987, 10, '35.0'),
(987987987, 30, '5.0'),
(999887777, 10, '10.0'),
(999887777, 30, '30.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DNUMBER`);

--
-- Indexes for table `dependent`
--
ALTER TABLE `dependent`
  ADD PRIMARY KEY (`ESSN`,`DEPENDENT_NAME`);

--
-- Indexes for table `dept_locations`
--
ALTER TABLE `dept_locations`
  ADD PRIMARY KEY (`DNUMBER`,`DLOCATION`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`PNUMBER`);

--
-- Indexes for table `works_on`
--
ALTER TABLE `works_on`
  ADD PRIMARY KEY (`ESSN`,`PNO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
