-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2020 at 05:47 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `take_photo`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `image`) VALUES
(2, 'masrizal', 'masrizal04@gmail.com', '$2y$10$WVr/W2oNwZy7fBjHIUdqNOX8SX8i3To7pDfp6Mlr3NHJP6Sll.ueG', 'image_1606712920.png'),
(3, 'masrizal', 'masrizal04@gmail.com', '$2y$10$ouav9hABrhxvFv2OYFOd7epjgiubCgDNQkChWn4JE2pl1ZNe/pVZC', 'image_1606713031.png'),
(4, 'masrizal', 'masrizal04@gmail.com', '$2y$10$Aal.CL1tftqiM3sOhKwcXu9R.O6p5sVvKs15mVA4fL.i/EBb8j.Ze', 'image_1606713086.png'),
(5, 'ahmad', 'masrizal04@gmail.com', '$2y$10$.sDfrPBa5KZPauRaytGh8.YJcnI3qKx.9.YzGLpy8407wNvk68O9i', 'image_1606713247.png'),
(6, 'ahmad', 'masrizal04@gmail.com', '$2y$10$I2zmUKAQ93rWlBloS48V4uENp6RMkNceHLOQDMSPBREzsUiwz/vFK', 'image_1606714327.png'),
(7, 'admin', 'masrizal04@gmail.com', '$2y$10$ouA4VHXXfw7KA9Wv4ZlSmOsLJoh9Z2GTniyIldVEXO3M2Nm/uEmFS', 'image_1606714364.png'),
(8, 'asdfg', 'masrizal04@gmail.com', '$2y$10$IkJvUsxc0CvAlBnwhfnI/es0a/pfeMmrtYgm1aT7h.PqGJx4nC/Hu', 'image_1606714442.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
