-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2020 at 09:03 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobiledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `userid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cid`, `pid`, `quantity`, `userid`) VALUES
(111, 102, 1, 'sean'),
(112, 106, 2, 'shakira'),
(113, 105, 1, 'michal'),
(114, 103, 1, 'sean'),
(115, 101, 1, 'martha'),
(116, 104, 2, 'michal');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `oid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `odate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ddate` date NOT NULL,
  `ostatus` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `remarks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`oid`, `pid`, `cid`, `userid`, `price`, `odate`, `ddate`, `ostatus`, `address`, `remarks`) VALUES
(121, 102, 111, 'sean', 36000, '2020-08-14 05:42:24', '2020-08-19', 'shipped', 'mexico', 'best performance and camera'),
(122, 106, 112, 'shakira', 40000, '2020-08-14 05:46:31', '2020-08-18', 'shipped', 'argentina', 'best gaming phone'),
(123, 105, 113, 'michal', 37000, '2020-08-14 05:47:26', '2020-08-21', 'delivered', 'johansberg south africa', 'fast delivery and best camera'),
(124, 103, 114, 'sean', 35000, '2020-08-14 05:48:10', '2020-08-14', 'delivered', 'mexico', 'awesome phone'),
(125, 101, 115, 'martha', 17000, '2020-08-14 05:49:21', '2020-08-17', 'shipped', 'winden, germany', 'slow delivery of products'),
(126, 104, 116, 'michal', 17000, '2020-08-14 05:54:35', '2020-08-22', 'on the way', 'johansberg south africa', 'good battery performance');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(10) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `ram` varchar(10) NOT NULL,
  `rom` varchar(10) NOT NULL,
  `processor` varchar(50) NOT NULL,
  `battery` varchar(10) NOT NULL,
  `price` int(10) NOT NULL,
  `descrptn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `brand`, `ram`, `rom`, `processor`, `battery`, `price`, `descrptn`) VALUES
(101, 'realme 6', 'realme', '6gb', '128gb', '840 snapdragon', '6000mah', 17000, 'better camera quality with 24mp camera '),
(102, 'oppo reno', 'oppo', '6gb', '256gb', '865 snapdragon', '5500mah', 36000, 'quadcore camera with wide lense'),
(103, 'iphone 6s', 'apple', '4gb', '128gb', 'apple A13 bionic', '3300mah', 35000, 'best security provider with better camera quality'),
(104, 'samsung note 6', 'samsung', '4gb', '128gb', '840 snapdragon', '5500mah', 17000, 'better camera quality with 24mp camera'),
(105, 'oneplus 7T', 'oneplus', '6gb', '256gb', '840 snapdragon', '6000mah', 37000, 'best gaming phone with hd camera'),
(106, 'ROG 3', 'asus', '6gb', '128gb', '865 snapdragon', '6000mah', 40000, 'best gaming phone ever');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `userid` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phno` int(10) NOT NULL,
  `secretqsn` varchar(50) NOT NULL,
  `secretans` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `utype` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`userid`, `name`, `gender`, `email`, `password`, `phno`, `secretqsn`, `secretans`, `address`, `utype`) VALUES
('james', 'mitchell james', 'm', 'james444@gmail.com', '1234', 2147483647, 'what is ur father name', 'cordan', 'texas, usa', 'admin'),
('jonas', 'jonas fernandes', 'm', 'jonas123@gmail.com', '1456', 2147483647, 'what is ur mother name', 'hannah', 'winden, germany', 'user'),
('martha', 'martha d\'cruz', 'f', 'martha785@gmail.com', '412', 2147483647, 'favourite food', 'spaghetti', 'winden, germany', 'user'),
('michal', 'michal d\'souza', 'm', 'michal002@gmail.com', '885', 2147483647, 'what is ur mother name', 'sia', 'johansberg south africa', 'user'),
('sean ', 'sean paul', 'm', 'paul552@gmail.com', '556', 2147483647, 'favourite book', 'the witcher', 'mexico', 'user'),
('shakira', 'shakira pique', 'f', 'shakira111@gmail.com', '986', 2147483647, 'favourite song', 'hips dont lie', 'argentina', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
