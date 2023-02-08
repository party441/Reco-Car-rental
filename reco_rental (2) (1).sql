-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2023 at 08:47 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reco_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ADMIN_ID` varchar(255) NOT NULL,
  `ADMIN_PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ADMIN_ID`, `ADMIN_PASSWORD`) VALUES
('ADMIN', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BOOK_ID` int(11) NOT NULL,
  `CAR_ID` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `BOOK_PLACE` varchar(255) NOT NULL,
  `BOOK_DATE` date NOT NULL,
  `RETURN_DATE` date NOT NULL,
  `PRICE` int(11) NOT NULL,
  `FULL_AMOUNT` int(11) NOT NULL,
  `BOOK_STATUS` varchar(255) NOT NULL DEFAULT 'UNDER PROCESSING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BOOK_ID`, `CAR_ID`, `EMAIL`, `BOOK_PLACE`, `BOOK_DATE`, `RETURN_DATE`, `PRICE`, `FULL_AMOUNT`, `BOOK_STATUS`) VALUES
(154, 'GFR 201 GP', 'reco@gmail.com', '', '2022-11-20', '2022-11-26', 10800, 10800, 'successful'),
(155, 'GFR 002GP', 'reco@gmail.com', '', '2022-11-20', '2022-11-26', 15000, 15000, 'successful'),
(156, 'GFR 002GP', 'reco@gmail.com', '', '2022-11-27', '2022-11-29', 5000, 5000, 'successful'),
(157, 'GFR 002GP', 'reco@gmail.com', '', '2022-11-30', '2022-12-01', 2500, 2500, 'successful'),
(158, 'RFG 564 L', 'reco@gmail.com', '', '2022-11-17', '2022-11-19', 5000, 5000, 'successful'),
(159, 'RFG 564 L', 'reco@gmail.com', '', '2022-11-20', '2022-11-30', 25000, 25000, 'successful'),
(160, 'GFR 201 GP', 'reco@gmail.com', '', '2022-12-05', '2022-12-09', 7200, 7200, 'successful'),
(161, 'GFR 645 GP', 'reco@gmail.com', '', '2022-12-29', '2023-01-07', 18000, 18000, 'successful'),
(162, 'GFR 645 GP', 'reco@gmail.com', '', '2022-11-23', '2022-11-30', 14000, 14000, 'successful');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `CAR_ID` varchar(255) NOT NULL,
  `CAR_NAME` varchar(255) NOT NULL,
  `FUEL_TYPE` varchar(255) NOT NULL,
  `CAR_BRAND` varchar(255) NOT NULL,
  `CAR_DESC` varchar(255) NOT NULL,
  `CATEGORY` varchar(255) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `LOCATION` varchar(255) NOT NULL,
  `CAR_IMG` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`CAR_ID`, `CAR_NAME`, `FUEL_TYPE`, `CAR_BRAND`, `CAR_DESC`, `CATEGORY`, `PRICE`, `LOCATION`, `CAR_IMG`) VALUES
('GFR 002GP', 'Rogue', 'Diesel', 'Land Rover', '5', 'Passanger', 2500, 'jhb_cars', 'IMG-63614f8697fb36.11721411.jpg'),
('GFR 201 GP', 'polo tsi', 'Diesel', 'VW', '5', 'Passanger', 1800, 'jhb_cars', 'IMG-635c226c9629f5.65026923.jpg'),
('GFR 202 GP', 'hino Truck', 'Diesel', 'hino', '35', 'Truck', 2999, 'plk_cars', 'IMG-6375e79a19d9b5.26844231.jpg'),
('GFR 450 GP', 'polo tsi 3.0', 'Diesel', 'VW', '5', 'Passanger', 1800, 'plk_cars', 'IMG-6375fc6a39bd99.26530282.jpeg'),
('GFR 450 L', 'min bus', 'Diesel', 'Hino', '35', 'Bus', 3800, 'plk_cars', 'IMG-637638a81fb8b4.81460779.jpg'),
('GFR 458 GP', 'polo tsi 3.0', 'Diesel', 'VW', '5', 'Passanger', 1800, 'plk_cars', 'IMG-6375fce7e9b108.16702568.jpg'),
('GFR 645 GP', 'amarok', 'Diesel', 'VW', '5', 'Bakkie', 2000, 'jhb_cars', 'IMG-6362f0e1a2acd2.73462280.jpg'),
('GFR 651 GP', 'min bus', 'Diesel', 'Hino', '45', 'Bus', 3800, 'jhb_cars', 'IMG-63726afa9fb363.69707539.jpg'),
('GFR 656 GP', 'Actos', 'Petrol', 'Mercedices Benz', '7', 'Truck', 1900, 'jhb_cars', 'IMG-637231b7939fb1.26824370.jpg'),
('RFG 564 L', 'X5 Series', 'Petrol', 'BMW', '6', 'Passanger', 2500, 'plk_cars', 'IMG-63764c168d6616.32261404.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PAY_ID` int(11) NOT NULL,
  `BOOK_ID` int(11) NOT NULL,
  `CARD_NO` varchar(255) NOT NULL,
  `EXP_DATE` varchar(255) NOT NULL,
  `CVV` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `FNAME` varchar(255) NOT NULL,
  `LNAME` varchar(255) NOT NULL,
  `ID_NUM` int(11) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`FNAME`, `LNAME`, `ID_NUM`, `EMAIL`, `PASSWORD`) VALUES
('steyn', 'tladi', 12, 'reco@gmail.com', '1a2857d71f38f98e784d610fb57c71bd'),
('remy', 'rammy', 2147483647, 'remy@gmail.com', 'ae1af654cea078e21999ea3594914f7c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ADMIN_ID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BOOK_ID`),
  ADD KEY `CAR_ID` (`CAR_ID`),
  ADD KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`CAR_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PAY_ID`),
  ADD UNIQUE KEY `BOOK_ID` (`BOOK_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`EMAIL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `BOOK_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PAY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`CAR_ID`) REFERENCES `cars` (`CAR_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`EMAIL`) REFERENCES `users` (`EMAIL`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `booking` (`BOOK_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
