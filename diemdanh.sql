-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2020 at 07:11 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diemdanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdd`
--

CREATE TABLE `chitietdd` (
  `id` int(11) NOT NULL,
  `masv` varchar(100) NOT NULL,
  `trangthai` varchar(100) NOT NULL,
  `madd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdd`
--

INSERT INTO `chitietdd` (`id`, `masv`, `trangthai`, `madd`) VALUES
(12, '18IT184', 'Vắng', 3),
(13, '18IT185', 'Vắng', 3),
(14, '18IT232', 'Vắng', 3),
(15, '18IT2222', 'Có mặt', 3),
(16, '18IT184', 'Vắng', 4),
(17, '18IT185', 'Vắng', 4),
(18, '18IT232', 'Vắng', 4),
(19, '18IT2222', 'Có mặt', 4);

-- --------------------------------------------------------

--
-- Table structure for table `diemdanh`
--

CREATE TABLE `diemdanh` (
  `id` int(11) NOT NULL,
  `mamon` int(11) NOT NULL,
  `ngaydd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diemdanh`
--

INSERT INTO `diemdanh` (`id`, `mamon`, `ngaydd`) VALUES
(3, 1, '2020-12-29'),
(4, 1, '2020-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `dsds`
--

CREATE TABLE `dsds` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `time_in` varchar(100) NOT NULL,
  `time_out` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dsds`
--

INSERT INTO `dsds` (`id`, `name`, `time_in`, `time_out`) VALUES
(1, '18it2222', 'haha', 'None'),
(2, '18it2222', 'haha', 'None'),
(3, '18it2222', 'haha', 'None'),
(4, '18it2222', 'haha', 'None'),
(5, '18it2222', 'haha', 'None'),
(6, '18it2222', 'haha', 'None'),
(7, '18it2222', 'haha', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `giaovien`
--

CREATE TABLE `giaovien` (
  `id` int(11) NOT NULL,
  `magv` varchar(100) NOT NULL,
  `tengv` varchar(100) NOT NULL,
  `matkhaugv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giaovien`
--

INSERT INTO `giaovien` (`id`, `magv`, `tengv`, `matkhaugv`) VALUES
(1, 'gvabc', 'ABC', '111'),
(2, 'gvabc2', 'ABC2', '111');

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `id` int(11) NOT NULL,
  `malop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`id`, `malop`) VALUES
(1, '18IT3'),
(2, '18IT4');

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `id` int(11) NOT NULL,
  `tenmon` varchar(100) NOT NULL,
  `magv` varchar(100) NOT NULL,
  `malop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`id`, `tenmon`, `magv`, `malop`) VALUES
(1, 'ĐỒ ÁN', 'gvabc', '18IT3'),
(2, 'CHUYÊN ĐỀ', 'gvabc2', '18IT4');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `id` int(11) NOT NULL,
  `masv` varchar(100) NOT NULL,
  `tensv` varchar(100) NOT NULL,
  `malop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`id`, `masv`, `tensv`, `malop`) VALUES
(1, '18IT184', 'Trường', '18IT3'),
(2, '18IT185', 'Cô Cô', '18IT3'),
(3, '18IT186', 'Dương Quá', '18IT4'),
(5, '18IT232', 'nama', '18IT3'),
(6, '18IT2222', 'sds', '18IT3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdd`
--
ALTER TABLE `chitietdd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_masv` (`masv`),
  ADD KEY `fk_madd` (`madd`) USING BTREE;

--
-- Indexes for table `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mamon` (`mamon`);

--
-- Indexes for table `dsds`
--
ALTER TABLE `dsds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `magv` (`magv`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `malop` (`malop`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_magv` (`magv`),
  ADD KEY `fk_malop` (`malop`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `masv` (`masv`),
  ADD KEY `fk_malop` (`malop`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdd`
--
ALTER TABLE `chitietdd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `diemdanh`
--
ALTER TABLE `diemdanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dsds`
--
ALTER TABLE `dsds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lop`
--
ALTER TABLE `lop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdd`
--
ALTER TABLE `chitietdd`
  ADD CONSTRAINT `chitietdd_ibfk_1` FOREIGN KEY (`masv`) REFERENCES `sinhvien` (`masv`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietdd_ibfk_2` FOREIGN KEY (`madd`) REFERENCES `diemdanh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD CONSTRAINT `diemdanh_ibfk_1` FOREIGN KEY (`mamon`) REFERENCES `monhoc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD CONSTRAINT `monhoc_ibfk_1` FOREIGN KEY (`magv`) REFERENCES `giaovien` (`magv`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `monhoc_ibfk_2` FOREIGN KEY (`malop`) REFERENCES `lop` (`malop`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`malop`) REFERENCES `lop` (`malop`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
