-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 03:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cp251project`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(5) NOT NULL,
  `faculty` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `campus` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `Link` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `faculty`, `campus`, `Link`) VALUES
(1, 'สังคมศาสตร์', 'ประสานมิตร', 'https://www.google.co.uk/maps/dir/%E0%B9%81%E0%B8%82%E0%B8%A7%E0%B8%87+%E0%B8%AA%E0%B8%A7%E0%B8%99%E0%B8%AB%E0%B8%A5%E0%B8%A7%E0%B8%87+%E0%B9%81%E0%B8%82%E0%B8%A7%E0%B8%87%E0%B8%AA%E0%B8%A7%E0%B8%99%E'),
(2, 'วิทยาศาสตร์', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.746787607860718, 100.56686609078616'),
(3, 'พลศึกษา', 'องครักษ์', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=14.104500617617393,100.9811563225764'),
(4, 'กายภาพบำบัด', 'องครักษ์', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=14.105623666476031,100.9850483140773'),
(5, 'ทันตแพทย์ศาสตร์', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.745466129292442,100.56637472869845'),
(6, 'บริหารธุรกิจเพื่อสังคม', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.744729563653749,100.56377845416192'),
(7, 'บัณฑิตวิทยาลัย\r\n', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.74397865890207, 100.56401463542747'),
(8, 'พยาบาลศาสตร์', 'องครักษ์', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=14.109373485138748, 100.9845238696448'),
(9, 'มนุษย์ศาสตร์(ตึกเก่า)', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.746578255413633, 100.56578394033502'),
(10, 'วัฒนธรรมสิ่งแวดล้อมและการท่องเที่ยวเชิงนิเวศ', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.745109641606764, 100.56375942048892'),
(11, 'วิทยาลัยนวัตกรรมสื่อสารสังคม', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.747251225822275, 100.56545723817673'),
(12, 'วิทยาลัยนานาชาติเพื่อศึกษาความยั่งยืน', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.745045562577682, 100.56651725218146'),
(13, 'วิทยาลัยอุตสาหกรรมสร้างสรรค์', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.745208350119498, 100.5637597510277'),
(14, 'วิทยาลัยโพธิวิชชาลัย', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.74486269635503, 100.56641117388553'),
(15, 'เศรษฐศาสตร์', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.74459697893882, 100.56362523905054'),
(16, 'วิศวกรรมศาสตร์', 'องครักษ์', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=14.103138621078763, 100.98234291510133'),
(17, 'ศึกษาศาสตร์', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.746166094044588, 100.5649476283461'),
(18, 'ศิลปกรรมศาสตร์', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.74581493876519, 100.56640546241631'),
(19, 'เภสัชศาสตร์', 'องครักษ์', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=14.107665945313448, 100.98502101456054'),
(20, 'โรงพยาบาลทันตกรรมคณะทันตะ\r\n', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.74531495225492,100.56633835727484'),
(21, 'สถาบันยุทรศาสตร์ทางปัญญาและวิจัย ', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.74517064212157, 100.56387589306247'),
(22, 'สถาบันวัฒนธรรมและศิลปะ\r\n ', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.745851096502486, 100.56442321605971'),
(23, 'สำนักทดสอบทางการศึกษาและจิตวิทยา ', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.745020937905728, 100.56606028517773'),
(24, 'สำนักนวัฒกรรมการเรียนรู้\r\n ', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.746163880176477, 100.56574679986187'),
(25, 'สำนักสื่อและเทคโนโลยีการศึกษา\r\n', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.743844753405691, 100.56384484096644'),
(26, 'หอสมุดกลาง\r\n', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.745685425125059, 100.56563298212596'),
(27, 'สถาบันวิจัยพฤติกรรมศาสตร์\r\n', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.745179886292496, 100.56558187595002'),
(28, 'สำนักคอมพิวเตอร์\r\n', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.745238721130416, 100.56373733306849'),
(29, 'แพทย์ศาสตร์', 'องครักษ์', 'https://www.google.com/maps?saddr=Current+Location&daddr=14.110869802120511,100.98345136701863'),
(30, 'แพทย์ศาสตร์', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.746865898131501, 100.56593320316742'),
(31, 'วิทยาลัยโพธิวิชชาลัย', 'สระแก้ว', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.913947571265746, 102.37295481797904'),
(32, 'พลศึกษา', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.747063064013535,100.5645239639841'),
(33, 'มนุษย์ศาสตร์(ตึกใหม่)', 'ประสานมิตร', 'https://maps.google.co.uk/maps?t=m&f=d&saddr=Current+Location&daddr=13.746878689630137, 100.56523995923506');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `description` varchar(200) NOT NULL,
  `location_status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `lat`, `lng`, `description`, `location_status`) VALUES
(5, 13.746159, 100.564941, 'Khim', 1),
(6, 13.746064, 100.564903, 'ภาพตัวอย่าง', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `role`) VALUES
('admin', '21232F297A57A5A743894A0E4A801FC3', 'admin'),
('student', 'CD73502828457D15655BBD7A63FB0BC8', 'user'),
('waraporn', '7C689087EC3F74DE4C548D5A01EDB5C1', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
