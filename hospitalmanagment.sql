-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Sep 14, 2021 at 03:01 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalmanagment`
--

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `channelno` varchar(255) NOT NULL,
  `doctorname` varchar(255) NOT NULL,
  `patientname` varchar(255) NOT NULL,
  `roomno` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`channelno`, `doctorname`, `patientname`, `roomno`, `date`) VALUES
('CH001', 'DS006', 'PS004', 1, '2021-09-15'),
('CH002', 'DS006', 'PS001', 2, '2021-09-16'),
('CH003', 'DS008', 'PS005', 3, '2021-09-17');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `channelfee` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorno`, `name`, `special`, `qualification`, `channelfee`, `phone`, `room`, `log_id`) VALUES
('DS001', 'Muamera', 'Neurolog', 'SAS', 13000, 641548712, 1, 1),
('DS002', 'Aida', 'Internista', 'SAS', 10000, 658456544, 2, 1),
('DS003', 'Adnan', 'Hirurg', 'SAS', 12000, 648794584, 3, 1),
('DS004', 'Aisa', 'Ginekolog', 'SAS', 14000, 684545455, 4, 1),
('DS005', 'Jasmina', 'Pneumoftiziolog', 'SAS', 14500, 658498512, 5, 1),
('DS006', 'Tatjana', 'Infektolog', 'SAS', 10000, 651294587, 6, 1),
('DS007', 'Nela', 'Pedijatar', 'SAS', 12500, 648597135, 7, 1),
('DS008', 'Pedja', 'Psihijatar', 'SAS', 13600, 658974581, 8, 1),
('DS009', 'Omer', 'Oftalmolog', 'SAS', 13000, 658459852, 9, 1),
('DS010', 'Mirsad', 'Otorinolaringolog', 'SAS', 16000, 648759815, 10, 1),
('DS011', 'Esad', 'Anesteziolog', 'SAS', 15400, 658795135, 11, 1),
('DS012', 'Suzana', 'Dermatolog', 'SAS', 15462, 625987351, 12, 1),
('DS013', 'Sandra', 'Reumatolog', 'SAS', 11000, 658594587, 13, 1),
('DS014', 'Aldin', 'Alergolog', 'SAS', 15230, 647595655, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `emegencypatient`
--

CREATE TABLE `emegencypatient` (
  `patientno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `bloodtype` varchar(255) NOT NULL,
  `dateOfBirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emegencypatient`
--

INSERT INTO `emegencypatient` (`patientno`, `name`, `phone`, `bloodtype`, `dateOfBirth`) VALUES
('EP001', 'Ajla', 63698566, 'A+', '1998-07-08'),
('EP002', 'Zerina', 649458854, 'B+', '1998-08-31'),
('EP003', 'Dzeneta', 648549784, 'AB+', '1998-10-14'),
('EP004', 'Elma', 644654655, '0+', '1998-10-21'),
('EP005', 'Amina', 645619827, '0+', '1999-03-05');

-- --------------------------------------------------------

--
-- Table structure for table `emergencychannel`
--

CREATE TABLE `emergencychannel` (
  `echannelno` varchar(255) NOT NULL,
  `doctorname` varchar(255) NOT NULL,
  `patientname` varchar(255) NOT NULL,
  `roomno` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emergencychannel`
--

INSERT INTO `emergencychannel` (`echannelno`, `doctorname`, `patientname`, `roomno`, `date`) VALUES
('EC001', 'DS001', 'EP001', 1, '2021-09-15'),
('EC002', 'DS002', 'EP002', 2, '2021-09-16'),
('EC003', 'DS003', 'EP003', 3, '2021-09-15'),
('EC004', 'DS004', 'EP004', 4, '2021-09-16');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemid` varchar(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sellprice` int(11) NOT NULL,
  `buyprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemid`, `itemname`, `description`, `sellprice`, `buyprice`, `qty`) VALUES
('IU001', 'Paracetamol', 'Antipiretik, Protiv bolova', 400, 350, 7),
('IU002', 'Brufen', 'Analgetik, za otklanjanje blagih do umerenih bolova', 450, 370, 8),
('IU003', 'Pantoprazol', 'Smanjuje stvaranje zeludacne kiseline', 370, 360, 6),
('IU004', 'Ranisan', 'Antagonist, smanjuje lucenje zeludacne kiseline', 500, 400, 5),
('IU005', 'Longacef', 'Antibiotik', 520, 480, 7),
('IU006', 'Forteca', 'Antibiotik', 420, 400, 6),
('IU007', 'Favipiravir', 'Antivirotik', 430, 420, 6),
('IU008', 'Probiotic Forte', 'Za dijareju', 300, 270, 6);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `bloodtype` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientno`, `name`, `phone`, `bloodtype`, `date`) VALUES
('PS001', 'Hamza', 68458455, '0-', '1999-02-20'),
('PS002', 'Anes', 69874125, 'AB+', '1996-02-09'),
('PS003', 'Vahid', 69874655, '0+', '1997-02-05'),
('PS004', 'Nerma', 66000097, 'A+', '1997-06-16'),
('PS005', 'Nejla', 64875981, 'B+', '1997-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `pid` varchar(255) NOT NULL,
  `channelid` varchar(255) NOT NULL,
  `doctorname` varchar(255) NOT NULL,
  `detype` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`pid`, `channelid`, `doctorname`, `detype`, `description`) VALUES
('PC001', 'EC004', 'Aisa', 'Covid-19', 'Temperatura, Gubitak ukusa, 1 doza favipiravir'),
('PC002', 'EC003', 'Adnan', 'Mozdani udar', 'Gubitak svesti, povracanje, Paracetamol'),
('PC003', 'CH003', 'Pedja', 'Dijareja', 'Pojacana dijareja, prehlada, Probiotik'),
('PC004', 'CH002', 'Tatjana', 'Glavobolja', 'Vrtoglavica, Paracetamol');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `subtotal`, `pay`, `balance`) VALUES
(1, '2021-09-14', 300, 400, 100),
(2, '2021-09-14', 400, 500, 100);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` varchar(255) NOT NULL,
  `sellprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `prod_id`, `sellprice`, `qty`, `total`) VALUES
(1, 1, 'IU008', 1, 300, 300),
(2, 2, 'IU001', 1, 400, 400);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `utype`) VALUES
(1, 'doktor', 'doktor', '12', 'Doctor'),
(2, 'recepcionar', 'recepcionar', '1233', 'Receptionist'),
(3, 'farmaceut', 'farmaceut', '123', 'Pharmacist'),
(4, 'Muamera', 'muamera', '147', 'Doctor'),
(5, 'Rec', 'rec', '11', 'Receptionist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`channelno`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorno`);

--
-- Indexes for table `emegencypatient`
--
ALTER TABLE `emegencypatient`
  ADD PRIMARY KEY (`patientno`);

--
-- Indexes for table `emergencychannel`
--
ALTER TABLE `emergencychannel`
  ADD PRIMARY KEY (`echannelno`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientno`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
