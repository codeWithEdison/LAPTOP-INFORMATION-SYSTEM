-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2022 at 04:01 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sm_salon`
--

-- --------------------------------------------------------

--
-- Table structure for table `barbers`
--

CREATE TABLE `barbers` (
  `b_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `other_names` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(70) NOT NULL,
  `n_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barbers`
--

INSERT INTO `barbers` (`b_id`, `f_name`, `other_names`, `gender`, `phone`, `n_id`) VALUES
(1, 'KAMBANDA', 'Cyriake', 'Male', '+250', '2234567890098'),
(2, 'IRADUKUNDA', 'Adrien', 'Male', '+250787799286', '2234567890098');

-- --------------------------------------------------------

--
-- Table structure for table `barber_earns`
--

CREATE TABLE `barber_earns` (
  `b_e_id` int(11) NOT NULL,
  `b_id` int(20) NOT NULL,
  `date` varchar(50) NOT NULL,
  `earnings` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barber_earns`
--

INSERT INTO `barber_earns` (`b_e_id`, `b_id`, `date`, `earnings`) VALUES
(1, 1, '30/10/2022', 1),
(2, 0, '26/10/2022', 2);

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `cred_id` int(11) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`cred_id`, `user_name`, `password`) VALUES
(1, 'edison_u', '@edison123'),
(2, 'bobox1', '123'),
(3, 'esthermuk', '@esther123'),
(4, 'lathy', 'lathy123'),
(5, 'papitto', 'papias123');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `other_names` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `reg_num` varchar(100) NOT NULL,
  `reg_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `fname`, `other_names`, `phone`, `email`, `reg_num`, `reg_date`) VALUES
(1, 'DUSHIMIMANA ', 'Jean Patric', '+250787799286', 'dupa@gmail.com', '', '21/10/2022'),
(2, 'DUSHIMIMANA ', 'Henrico', '+250787799200', '222005615', 'dataema@gmail.com', '21/10/2022'),
(3, 'DUFITUMUKIZA', 'Francoise', '+25078124411', '222005615', 'eldembar@gmail.com', '26/10/2022'),
(4, 'RUKUNDO', 'Emaible', '+250785764111', '22200410112', 'eldembar@gmail.com', '26/10/2022'),
(5, 'RUKUNDO', 'Aime', '+250785764112', '22200410112', 'eldembar@gmail.com', '26/10/2022'),
(6, 'Tuyambaze', 'Papias', '+250781643904', '', 'papiastuy@gmali.com', '22/10/2022'),
(7, 'SEBIDEGEDE', 'Andrew', '+250727612224', '', '', '23/10/2022'),
(8, 'MBARIMOMBAZI', 'Tharcise', '+250787998812', '22200410112', 'sebi@gmail.com', '24/10/2022'),
(9, 'ISHIMWE', 'Diedone', '+250788240303', '222005615', 'diedone@gmail.com', '25/10/2022');

-- --------------------------------------------------------

--
-- Table structure for table `customer_service_current`
--

CREATE TABLE `customer_service_current` (
  `cus_current_id` int(11) NOT NULL,
  `cust_id` int(100) NOT NULL,
  `times` int(100) NOT NULL,
  `d_o_s` varchar(50) NOT NULL,
  `q_type` varchar(20) NOT NULL,
  `b_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_service_current`
--

INSERT INTO `customer_service_current` (`cus_current_id`, `cust_id`, `times`, `d_o_s`, `q_type`, `b_id`) VALUES
(1, 1, 3, '30/10/2022 01:57:15', 'payment', 0),
(2, 1, 2, '30/10/2022 01:57:28', 'service', 1),
(3, 1, 1, '26/10/2022 03:32:40', 'service', 0),
(4, 1, 0, '26/10/2022 03:33:17', 'service', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_service_init`
--

CREATE TABLE `customer_service_init` (
  `cus_sinit_id` int(11) NOT NULL,
  `cust_id` int(100) NOT NULL,
  `amount` int(50) NOT NULL,
  `p_method` varchar(50) NOT NULL,
  `d_o_p` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_service_init`
--

INSERT INTO `customer_service_init` (`cus_sinit_id`, `cust_id`, `amount`, `p_method`, `d_o_p`) VALUES
(1, 1, 1000, 'cash', '30/10/2022 01:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `direct_services`
--

CREATE TABLE `direct_services` (
  `ds_id` int(11) NOT NULL,
  `s_id` int(100) NOT NULL,
  `offerer` int(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `direct_services`
--

INSERT INTO `direct_services` (`ds_id`, `s_id`, `offerer`, `date`) VALUES
(1, 1, 2, '30/10/2022'),
(2, 1, 1, '30/10/2022'),
(3, 3, 2, '30/10/2022'),
(4, 1, 1, '28/10/2022'),
(5, 1, 1, '27/10/2022'),
(6, 5, 1, '26/10/2022'),
(7, 1, 1, '25/10/2022'),
(8, 3, 2, '25/10/2022'),
(9, 4, 1, '25/10/2022'),
(10, 1, 1, '24/10/2022'),
(11, 5, 2, '24/10/2022'),
(12, 1, 1, '23/10/2022'),
(13, 2, 2, '20/10/2022'),
(14, 4, 1, '20/10/2022'),
(15, 4, 1, '21/10/2022'),
(16, 5, 2, '22/10/2022');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `rep_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `reg_customers` int(200) NOT NULL,
  `service_provided` int(200) NOT NULL,
  `pending_service` int(200) NOT NULL,
  `current_balance` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `charge` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`s_id`, `s_name`, `charge`) VALUES
(1, 'KOGOSHA', 400),
(2, 'GUCONGA', 200),
(3, 'UBWANWA', 200),
(4, 'RETOUCH', 300),
(5, 'KOGOSHA(ABAKOBWA)', 500);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `other_names` varchar(50) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(70) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `other_names`, `user_name`, `gender`, `email`, `phone`, `user_type`) VALUES
(1, 'Edison', 'UWIHANGANYE', 'edison_u', 'male', 'edisonu@gmail.com', '+250787799286', 'admin'),
(2, 'IRADUKUNDA', 'Bonheur', 'bobox', 'Male', 'chrishab@gmail.com', '+250787799286', 'auditor'),
(3, 'IRADUKUNDA', 'Bonheur', 'bobox1', 'Male', 'chrishab@gmail.com', '+250787799286', 'auditor'),
(4, 'Mukamana', 'Esther', 'esthermuk', 'Female', 'mukesther@gmail.com', '+250787723156', 'auditor'),
(5, 'Mukamana', 'Lathiffa', 'lathy', 'Female', 'lath@gmail.com', '+250787766543', 'auditor'),
(6, 'TUYAMBAZE ', 'Papias', 'papitto', 'Male', 'papiaselast@gmail.com', '+250781097652', 'auditor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barbers`
--
ALTER TABLE `barbers`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `barber_earns`
--
ALTER TABLE `barber_earns`
  ADD PRIMARY KEY (`b_e_id`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`cred_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `customer_service_current`
--
ALTER TABLE `customer_service_current`
  ADD PRIMARY KEY (`cus_current_id`);

--
-- Indexes for table `customer_service_init`
--
ALTER TABLE `customer_service_init`
  ADD PRIMARY KEY (`cus_sinit_id`);

--
-- Indexes for table `direct_services`
--
ALTER TABLE `direct_services`
  ADD PRIMARY KEY (`ds_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`rep_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barbers`
--
ALTER TABLE `barbers`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `barber_earns`
--
ALTER TABLE `barber_earns`
  MODIFY `b_e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `cred_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer_service_current`
--
ALTER TABLE `customer_service_current`
  MODIFY `cus_current_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_service_init`
--
ALTER TABLE `customer_service_init`
  MODIFY `cus_sinit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `direct_services`
--
ALTER TABLE `direct_services`
  MODIFY `ds_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `rep_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
