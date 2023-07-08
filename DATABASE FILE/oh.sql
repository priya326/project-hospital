-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 04:03 PM
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
-- Database: `oh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(10) NOT NULL,
  `adminname` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `code` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`, `email`, `loginid`, `password`, `status`, `code`) VALUES
(1, 'Joseph Spector', 'vasundharaba247@gmail.com', 'admin', 'Password', 'Active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentid` int(10) NOT NULL,
  `appointmenttype` varchar(25) NOT NULL,
  `patientid` int(10) NOT NULL,
  `roomid` int(10) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `appointmentdate` date NOT NULL,
  `appointmenttime` time NOT NULL,
  `doctorid` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `app_reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentid`, `appointmenttype`, `patientid`, `roomid`, `departmentid`, `appointmentdate`, `appointmenttime`, `doctorid`, `status`, `app_reason`) VALUES
(1, '', 1, 0, 1, '2019-06-17', '03:00:00', 1, 'Active', 'Fever'),
(2, '', 3, 0, 2, '2021-06-25', '09:22:00', 2, 'Active', 'this is a demo test'),
(4, '', 5, 0, 4, '2021-06-24', '14:28:00', 5, 'Active', 'demo demo demo'),
(5, '', 6, 0, 7, '2021-06-24', '11:18:00', 7, 'Active', 'Demo Test, Demo Reason!!'),
(6, '', 7, 0, 4, '2022-04-09', '02:23:00', 5, 'Active', 'fdfg'),
(7, '', 6, 0, 3, '2022-04-08', '12:00:00', 3, 'Active', 'ggh'),
(8, '', 4, 0, 3, '2022-04-01', '02:56:00', 4, 'Active', 'dsfdfs'),
(9, '', 6, 0, 3, '2022-04-02', '01:00:00', 2, 'Active', 'dsfd'),
(10, '', 3, 0, 2, '2022-04-01', '12:30:00', 2, 'Active', 'fgfdgfd'),
(11, '', 3, 0, 2, '2022-04-01', '12:30:00', 2, 'Active', 'fgfdgfd'),
(12, '', 4, 0, 2, '2022-04-15', '11:30:00', 2, 'Active', 'vcxvxc'),
(13, '', 6, 0, 5, '2022-04-21', '01:00:00', 6, 'Active', 'dfd'),
(14, '', 16, 0, 2, '2022-04-10', '12:00:00', 3, 'Active', 'fever'),
(15, '', 16, 0, 2, '2022-04-01', '11:30:00', 2, 'Active', 'fever'),
(16, '', 16, 0, 1, '2022-04-03', '01:00:00', 1, 'Active', 'fever'),
(17, '', 12, 0, 5, '2022-04-16', '12:30:00', 6, 'Active', 'PRANGNANCY'),
(18, '', 15, 0, 1, '2022-04-01', '00:00:00', 1, 'Active', ''),
(19, '', 19, 0, 1, '2022-04-03', '11:00:00', 1, 'Active', 'fever'),
(20, '', 20, 0, 1, '2022-04-03', '11:30:00', 1, 'Active', 'fever'),
(21, '', 21, 0, 1, '2022-04-25', '11:30:00', 1, 'Active', 'fever'),
(22, '', 23, 0, 3, '2023-04-23', '11:00:00', 4, 'Active', 'Wanted To meet'),
(23, '', 13, 0, 2, '2022-12-24', '12:00:00', 2, 'Active', 'not well'),
(24, '', 13, 0, 8, '2022-12-23', '12:00:00', 6, 'Active', 'ydgiasukjlfnk'),
(25, '', 13, 0, 2, '2022-12-30', '12:00:00', 2, 'Active', 'wesrdtfgyj'),
(26, '', 25, 0, 2, '2022-12-31', '12:30:00', 3, 'Active', 'fever'),
(27, '', 26, 0, 1, '2023-07-21', '12:00:00', 1, 'Active', 'Stomach Ache'),
(28, '', 26, 0, 4, '2023-07-14', '12:00:00', 5, 'Active', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billingid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `billingdate` date NOT NULL,
  `billingtime` time NOT NULL,
  `discount` float(10,2) NOT NULL,
  `taxamount` float(10,2) NOT NULL,
  `discountreason` text NOT NULL,
  `discharge_time` time NOT NULL,
  `discharge_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billingid`, `patientid`, `appointmentid`, `billingdate`, `billingtime`, `discount`, `taxamount`, `discountreason`, `discharge_time`, `discharge_date`) VALUES
(1, 0, 0, '2019-06-15', '18:53:38', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(2, 1, 1, '2019-06-15', '19:56:20', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(3, 3, 2, '2021-06-24', '14:39:11', 0.00, 0.00, 'none , ', '07:56:26', '2021-06-24'),
(4, 5, 4, '2021-06-24', '18:48:00', 0.00, 0.00, 'none , ', '07:26:39', '2021-06-24'),
(5, 6, 5, '2021-06-24', '19:36:12', 0.00, 0.00, 'no discounts , ', '07:54:07', '2021-06-24'),
(6, 7, 6, '2022-03-31', '19:50:54', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(7, 4, 12, '2022-03-31', '20:47:41', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(8, 6, 13, '2022-03-31', '20:53:57', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(9, 3, 11, '2022-04-01', '01:08:27', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(10, 19, 19, '2022-04-01', '10:38:58', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(11, 20, 20, '2022-04-01', '11:31:16', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(12, 21, 21, '2022-04-23', '06:44:03', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(13, 23, 22, '2022-04-23', '09:37:25', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(14, 15, 18, '2022-06-06', '13:27:42', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(15, 26, 27, '2023-07-08', '13:12:22', 0.00, 0.00, '', '00:00:00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `billing_records`
--

CREATE TABLE `billing_records` (
  `billingservice_id` int(10) NOT NULL,
  `billingid` int(10) NOT NULL,
  `bill_type_id` int(10) NOT NULL COMMENT 'id of service charge or treatment charge',
  `bill_type` varchar(250) NOT NULL,
  `bill_amount` float(10,2) NOT NULL,
  `bill_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_records`
--

INSERT INTO `billing_records` (`billingservice_id`, `billingid`, `bill_type_id`, `bill_type`, `bill_amount`, `bill_date`, `status`) VALUES
(1, 2, 1, 'Consultancy Charge', 45.00, '2022-06-01', 'Active'),
(2, 2, 20, 'Treatment', 300.00, '2022-06-17', 'Active'),
(3, 2, 1, 'Prescription Charge', 45.00, '2022-06-03', 'Active'),
(4, 3, 2, 'Consultancy Charge', 55.00, '2022-06-02', 'Active'),
(5, 3, 20, 'Treatment', 300.00, '2022-06-02', 'Active'),
(6, 4, 5, 'Consultancy Charge', 3.00, '2022-06-02', 'Active'),
(7, 4, 20, 'Treatment', 179.00, '2022-06-03', 'Active'),
(8, 4, 2, 'Prescription Charge', 55.00, '2021-06-24', 'Active'),
(9, 5, 7, 'Consultancy Charge', 12.00, '2021-06-24', 'Active'),
(10, 5, 33, 'Treatment', 4850.00, '2021-06-24', 'Active'),
(11, 5, 3, 'Prescription Charge', 267.00, '2021-06-24', 'Active'),
(12, 6, 5, 'Consultancy Charge', 3.00, '2022-03-31', 'Active'),
(13, 6, 28, 'Treatment', 989.00, '2022-03-31', 'Active'),
(15, 1, 24, 'Treatment', 318.00, '2022-03-31', 'Active'),
(16, 1, 4, 'Prescription Charge', 59.00, '2022-03-31', 'Active'),
(17, 7, 4, 'Consultancy Charge', 155.00, '2022-03-31', 'Active'),
(18, 7, 24, 'Treatment', 318.00, '2022-03-31', 'Active'),
(19, 8, 6, 'Consultancy Charge', 12.00, '2022-03-31', 'Active'),
(20, 8, 24, 'Treatment', 318.00, '2022-03-31', 'Active'),
(21, 9, 5, 'Prescription Charge', 3.00, '2022-04-01', 'Active'),
(22, 10, 1, 'Consultancy Charge', 7.00, '2022-04-01', 'Active'),
(23, 10, 20, 'Treatment', 179.00, '2022-04-01', 'Active'),
(24, 10, 6, 'Prescription Charge', 12.00, '2022-04-01', 'Active'),
(25, 11, 1, 'Consultancy Charge', 7.00, '2022-04-01', 'Active'),
(26, 11, 20, 'Treatment', 179.00, '2022-04-01', 'Active'),
(27, 11, 7, 'Prescription Charge', 12.00, '2022-04-01', 'Active'),
(28, 12, 1, 'Consultancy Charge', 7.00, '2022-04-23', 'Active'),
(29, 12, 20, 'Treatment', 179.00, '2022-04-23', 'Active'),
(30, 12, 8, 'Prescription Charge', 3.00, '2022-04-23', 'Active'),
(31, 12, 9, 'Prescription Charge', 3.00, '2022-04-23', 'Active'),
(32, 11, 10, 'Prescription Charge', 327.00, '2022-04-23', 'Active'),
(33, 13, 4, 'Consultancy Charge', 155.00, '2022-04-23', 'Active'),
(34, 13, 27, 'Treatment', 25448.00, '2022-04-23', 'Active'),
(35, 14, 1, 'Consultancy Charge', 7.00, '2022-06-06', 'Active'),
(36, 14, 27, 'Treatment', 25448.00, '2022-06-06', 'Active'),
(37, 15, 1, 'Consultancy Charge', 10.00, '2023-07-08', 'Active'),
(38, 15, 21, 'Treatment', 70.00, '2023-07-08', 'Active'),
(39, 15, 11, 'Prescription Charge', 84.00, '2023-07-08', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentid` int(10) NOT NULL,
  `departmentname` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentid`, `departmentname`, `description`, `status`) VALUES
(1, 'Medicine', 'Medicine', 'Active'),
(2, 'Cardiology', 'Provides medical care to patients who have problems with their heart or circulation.', 'Active'),
(3, 'Gynecology', 'Investigates and treats problems relating to the female urinary tract and reproductive organs, such as Endometriosis, infertility and incontinence', 'Inactive'),
(4, 'Haematology', 'These hospital services work with the laboratory. In addition doctors treat blood diseases and malignancies related to the blood', 'Active'),
(5, 'Maternity', 'Maternity wards provide antenatal care, delivery of babies and care during childbirth, and postnatal support', 'Active'),
(6, 'Nephrology', 'Monitors and assesses patients with various kidney (renal) problems and conditions', 'Active'),
(7, 'Oncology', 'A branch of medicine that deals with cancer and tumors. A medical professional who practices oncology is an oncologist. The Oncology department provides treatments, including radiotherapy and chemotherapy, for cancerous tumors and blood disorders', 'Active'),
(8, 'Orthopaedics', 'Treats conditions related to the musculoskeletal system, including joints, ligaments, bones, muscles, tendons and nerves', 'Active'),
(9, 'Radiology', 'Deals with the study and application of imaging technology like XRay', 'Active'),
(10, 'jay', 'jay', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorid` int(10) NOT NULL,
  `doctorname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `education` varchar(25) NOT NULL,
  `experience` float(11,1) NOT NULL,
  `consultancy_charge` float(10,2) NOT NULL,
  `code` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorid`, `doctorname`, `email`, `mobileno`, `departmentid`, `loginid`, `password`, `status`, `education`, `experience`, `consultancy_charge`, `code`) VALUES
(1, 'Carol Bosworth', 'vasundharaba247@gmail.com', '7002225650', 1, 'carol', 'New Password', 'Active', 'MD Neurologist', 10.0, 10.00, 0),
(2, 'Sirena S Rivera', 'vasundharaba247@gmail.com', '7023695696', 2, 'rivera', 'New Password', 'Active', 'DM', 4.0, 400.00, 0),
(3, 'Will Williams', 'vasundharaba247@gmail.com', '7014545470', 2, 'wiliams', 'New Password', 'Active', 'DM', 7.0, 500.00, 0),
(4, 'Thomas Borkowski', 'vasundharaba247@gmail.com', '7025558690', 3, 'thomas', 'New Password', 'Active', 'MD', 4.0, 155.00, 0),
(5, 'Jason Graham', 'vasundharaba247@gmail.com', '7854025410', 4, 'jason', 'New Password', 'Active', 'DM', 5.0, 75.00, 0),
(6, 'Viola McRoy', 'vasundharaba247@gmail.com', '7410002540', 5, 'viola', 'New Password', 'Active', 'MD', 8.0, 4200.00, 0),
(7, 'Logan Fletcher', 'vasundharaba247@gmail.com', '7012569990', 7, 'logan', 'New Password', 'Active', 'MD', 5.0, 995.00, 0),
(8, 'Ben Bernier', 'vasundharaba247@gmail.com', '7012225470', 6, 'ben', 'New Password', 'Active', 'DM', 3.0, 689.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_timings`
--

CREATE TABLE `doctor_timings` (
  `doctor_timings_id` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `available_day` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_timings`
--

INSERT INTO `doctor_timings` (`doctor_timings_id`, `doctorid`, `start_time`, `end_time`, `available_day`, `status`) VALUES
(17, 35, '09:30:00', '13:00:00', '', 'Active'),
(18, 36, '13:30:00', '17:00:00', '', 'Active'),
(19, 37, '14:00:00', '18:00:00', '', 'Active'),
(20, 38, '17:00:00', '21:00:00', '', 'Active'),
(21, 39, '13:00:00', '19:00:00', '', 'Active'),
(22, 40, '07:00:00', '11:00:00', '', 'Active'),
(23, 41, '13:30:00', '16:30:00', '', 'Active'),
(24, 42, '11:30:00', '14:30:00', '', 'Active'),
(25, 43, '12:30:00', '16:30:00', '', 'Active'),
(26, 44, '21:30:00', '12:30:00', '', 'Active'),
(27, 36, '01:03:00', '13:03:00', '', 'Active'),
(28, 61, '11:11:00', '19:07:00', '', 'Active'),
(29, 35, '11:11:00', '16:44:00', '', 'Active'),
(30, 35, '01:10:00', '16:11:00', '', 'Active'),
(31, 35, '01:02:00', '15:04:00', '2018-03-26', 'Active'),
(32, 35, '16:25:00', '01:00:00', '', 'Active'),
(33, 1, '18:00:00', '00:02:00', '', 'Active'),
(34, 2, '07:36:00', '15:37:00', '', 'Active'),
(35, 7, '09:24:00', '16:24:00', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicineid` int(10) NOT NULL,
  `medicinename` varchar(25) NOT NULL,
  `medicinecost` float(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicineid`, `medicinename`, `medicinecost`, `description`, `status`) VALUES
(1, 'Paracetamol', 3.00, 'For fever per day 1 pc', 'Active'),
(2, 'Clotrimazole', 14.00, 'Clotrimazole is an antifungal, prescribed for local fungal infections', 'Active'),
(3, 'Miconazole', 26.00, 'Prescribed for various skin infections such as jockitch and also for vaginal yeast infections', 'Active'),
(4, 'Nystatin', 6.00, 'Antifungal drug, prescribed for fungal infections of the skin mouth vagina and intestinal tract', 'Active'),
(5, 'Lotensin', 3.00, 'prevent your body from forming angiotensin', 'Active'),
(6, 'Cozaan', 5.00, 'ARBs block the effects of angiotensin on your heart.', 'Active'),
(7, 'Lovenox', 59.00, 'may prescribe an anticoagulant to prevent heart attack, stroke, or other serious health problems', 'Active'),
(8, 'Abemaciclib', 278.00, 'drug for the treatment of advanced or metastatic breast cancers.', 'Active'),
(9, 'Cyclophosphamide', 231.00, ' to treat lymphoma, multiple myeloma, leukemia, ovarian cancer, breast cancer, small cell lung cancer', 'Active'),
(10, 'Captopril', 92.00, 'used alone or in combination with other medications to treat high blood pressure and heart failure.', 'Active'),
(11, 'Enalapril', 18.00, 'to treat high blood pressure, diabetic kidney disease, and heart failure', 'Active'),
(12, 'Ramipril', 31.00, 'to treat high blood pressure, diabetic kidney disease', 'Active'),
(13, 'Hydroxyurea', 55.00, 'used in sickle-cell disease, essential thrombocythemia, chronic myelogenous leukemia and cervical cancer', 'Active'),
(14, 'Phenprocoumon', 258.00, 'Used for prevention of thrombosis', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientid` int(10) NOT NULL,
  `patientname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `admissiondate` date NOT NULL,
  `admissiontime` time NOT NULL,
  `address` varchar(250) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `bloodgroup` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `code` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientid`, `patientname`, `email`, `admissiondate`, `admissiontime`, `address`, `mobileno`, `city`, `pincode`, `loginid`, `password`, `bloodgroup`, `gender`, `dob`, `status`, `code`) VALUES
(1, 'Vernon', 'vasundharaba247@gmail.com', '2022-03-22', '18:47:22', 'Dhanmondi', '2125798361', 'Dhaka', '1207', 'admin', '123456789', 'O+', 'MALE', '1990-01-01', 'Active', 0),
(4, 'Demoname', 'vasundharaba247@gmail.com', '2022-03-16', '15:26:32', 'demo address', '7474747474', 'demo city', '', 'demo', 'password', '', 'Male', '1995-02-02', 'Active', 0),
(5, 'Thomas', 'vasundharaba247@gmail.com', '2022-03-16', '18:44:22', '1723  Cinnamon Lane', '7023658800', 'San Antonio', '', 'thomas', 'password', '', 'Female', '1992-03-12', 'Active', 0),
(6, 'Carlos Sainz', 'vasundharaba247@gmail.com', '2022-03-24', '19:34:27', '2649 Wayside Lane', '7012225896', 'San Jose', '', 'carlos', 'password', '', 'Male', '1994-03-12', 'Active', 0),
(7, 'Demo2', '', '2022-03-31', '19:49:59', 'demodemo', '32343232', 'gh', '', 'demoacc', 'password', '', 'Female', '2022-04-02', 'Active', 0),
(12, 'Priya', 'priya834739@gmail.com', '2022-03-31', '00:00:22', 'xdsafsds', '1321232', 'Ananad', '388315', 'pririr', '12345678', 'O+', 'F', '2022-04-14', 'Active', 0),
(26, 'Priya', 'priya123@gmail.com', '2023-07-08', '00:00:16', 'dfkjhdkfjhdf', '9016750899', 'abc', '388315', 'priya30', 'password', 'O+', 'F', '2007-02-06', 'Active', 209084);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `paiddate` date NOT NULL,
  `paidtime` time NOT NULL,
  `paidamount` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `cardholder` varchar(50) NOT NULL,
  `cardnumber` int(25) NOT NULL,
  `cvvno` int(5) NOT NULL,
  `expdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentid`, `patientid`, `appointmentid`, `paiddate`, `paidtime`, `paidamount`, `status`, `cardholder`, `cardnumber`, `cvvno`, `expdate`) VALUES
(1, 5, 4, '2021-06-24', '19:26:51', 324.45, 'Active', '', 0, 0, '0000-00-00'),
(2, 6, 5, '2021-06-24', '19:54:23', 6379.80, 'Active', '', 0, 0, '0000-00-00'),
(3, 3, 2, '2021-06-24', '19:56:33', 372.75, 'Active', '', 0, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `prescriptionid` int(10) NOT NULL,
  `treatment_records_id` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `delivery_type` varchar(10) NOT NULL COMMENT 'Delivered through appointment or online order',
  `delivery_id` int(10) NOT NULL COMMENT 'appointmentid or orderid',
  `prescriptiondate` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `appointmentid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescriptionid`, `treatment_records_id`, `doctorid`, `patientid`, `delivery_type`, `delivery_id`, `prescriptiondate`, `status`, `appointmentid`) VALUES
(1, 0, 1, 1, '', 0, '2022-06-01', 'Active', 1),
(2, 0, 5, 5, '', 0, '2022-06-02', 'Active', 4),
(3, 0, 7, 6, '', 0, '2022-06-04', 'Active', 5),
(4, 0, 3, 6, '', 0, '2022-04-02', 'Active', 7),
(5, 0, 2, 3, '', 0, '2022-04-01', 'Active', 11),
(6, 0, 1, 19, '', 0, '2022-04-01', 'Active', 19),
(7, 0, 1, 20, '', 0, '2022-04-01', 'Active', 20),
(8, 0, 1, 21, '', 0, '2022-04-23', 'Active', 21),
(9, 0, 1, 21, '', 0, '2022-04-24', 'Active', 21),
(10, 0, 1, 20, '', 0, '2022-04-23', 'Active', 20),
(11, 0, 1, 26, '', 0, '2023-07-08', 'Active', 27);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_records`
--

CREATE TABLE `prescription_records` (
  `prescription_record_id` int(10) NOT NULL,
  `prescription_id` int(10) NOT NULL,
  `medicine_name` varchar(25) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `unit` int(10) NOT NULL,
  `dosage` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription_records`
--

INSERT INTO `prescription_records` (`prescription_record_id`, `prescription_id`, `medicine_name`, `cost`, `unit`, `dosage`, `status`) VALUES
(1, 1, '1', 3.00, 15, '1-1-1', 'Active'),
(2, 2, '13', 55.00, 1, '0-1-1', 'Active'),
(4, 4, '7', 59.00, 1, '1-1-0', 'Active'),
(5, 5, '1', 3.00, 1, '0-1-1', 'Active'),
(6, 6, '1', 3.00, 4, '1-1-1', 'Active'),
(7, 7, '1', 3.00, 4, '1-1-1', 'Active'),
(8, 8, '1', 3.00, 1, '0-0-1', 'Active'),
(9, 9, '1', 3.00, 1, '0-1-1', 'Active'),
(10, 10, '1', 3.00, 109, '1-0-1', 'Active'),
(11, 3, '14', 258.00, 1, '1-1-1', 'Active'),
(12, 3, '1', 3.00, 3, '0-1-1', 'Active'),
(13, 11, '2', 14.00, 6, '0-1-1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatmentid` int(10) NOT NULL,
  `treatmenttype` varchar(25) NOT NULL,
  `treatment_cost` decimal(10,2) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatmentid`, `treatmenttype`, `treatment_cost`, `note`, `status`) VALUES
(20, 'Blood Test', '179.00', 'test checks for levels of 10 different components of every major cell in your blood', 'Active'),
(21, 'Electrocardiogram', '70.00', 'Records the electrical activity of the heart', 'Active'),
(22, 'Echocardiogram', '1750.00', 'Provides an ultrasound picture that shows the structure of the heart chambers and surrounding areas, and it can show how well the heart is working.', 'Active'),
(23, 'Nuclear cardiology', '530.00', 'Nuclear imaging techniques use radioactive materials to study cardiovascular disorders and diseases in a noninvasive way.', 'Active'),
(24, 'Colposcopy', '318.00', 'procedure to visually examine the cervix as well as the vagina and vulva using a colposcope.', 'Active'),
(25, 'Colporrhaphy', '5518.00', 'surgical procedure in humans that repairs a defect in the wall of the vagina.', 'Active'),
(26, 'Spine Surgery', '97560.00', 'This entails opening the operative site with a long incision so the surgeon can view and access the spinal anatomy', 'Active'),
(27, 'Trauma surgery', '25448.00', 'surgical specialty that utilizes both operative and non-operative management to treat traumatic injuries, typically in an acute setting', 'Active'),
(28, 'Diagnostic Tests', '989.00', 'may include MRI, CT, Bone Scan, Ultra sound, blood tests', 'Active'),
(29, 'Chest XRay', '258.00', ' projection radiograph of the chest used to diagnose conditions affecting the chest, its contents, and nearby structures', 'Active'),
(30, 'Ultrasound of the Abdomen', '560.00', 'noninvasive procedure used to assess the organs and structures within the abdomen', 'Active'),
(31, 'Exercise Stress Test', '198.00', 'This test is good for evaluating chest pain to see if your heart is the cause.', 'Active'),
(32, 'Ultrasound of the Pelvis', '520.00', 'noninvasive diagnostic exam that produces images that are used to assess organs and structures within the female pelvis', 'Active'),
(33, 'Chemotherapy and Radiatio', '4850.00', 'Most common types of cancer treatment. They work by destroying these fast-growing cells.', 'Active'),
(34, 'Bypass Surgery', '20000.00', 'We have specialist', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_records`
--

CREATE TABLE `treatment_records` (
  `treatment_records_id` int(10) NOT NULL,
  `treatmentid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `treatment_description` text NOT NULL,
  `uploads` varchar(100) NOT NULL,
  `treatment_date` date NOT NULL,
  `treatment_time` time NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_records`
--

INSERT INTO `treatment_records` (`treatment_records_id`, `treatmentid`, `appointmentid`, `patientid`, `doctorid`, `treatment_description`, `uploads`, `treatment_date`, `treatment_time`, `status`) VALUES
(1, 20, 1, 1, 1, 'Fever \r\ntake paracitamol', '1746614148', '2022-03-02', '17:00:00', 'Active'),
(2, 20, 2, 3, 2, 'Demo Treatment Description...', '20245sample_image.jpg', '2022-03-10', '18:24:00', 'Active'),
(3, 20, 4, 5, 5, 'to study the morphology of blood and blood-forming tissues', '853sample_image.jpg', '2022-03-02', '16:40:00', 'Active'),
(4, 33, 5, 6, 7, 'based on small cell lung cancer', '25208sample_image.jpg', '2022-03-09', '15:22:00', 'Active'),
(5, 28, 6, 7, 5, 'fdggf', '756811381', '2022-03-26', '03:25:00', 'Active'),
(6, 24, 7, 6, 3, 'dfds', '1723955838', '2022-03-25', '03:35:00', 'Active'),
(7, 24, 12, 4, 4, 'fgffd', '533926507', '2022-03-25', '05:23:00', 'Active'),
(8, 24, 13, 6, 6, 'fggf', '2096427396', '2022-03-25', '05:28:00', 'Active'),
(9, 20, 19, 19, 1, 'demo', '1541919055', '2022-04-01', '14:08:00', 'Active'),
(10, 20, 20, 20, 1, 'xyzz', '53407438', '2022-04-01', '15:00:00', 'Active'),
(11, 20, 21, 21, 1, 'xyz', '548530232', '2022-04-23', '11:30:00', 'Active'),
(12, 27, 22, 23, 4, 'Checked', '1179589252', '2022-04-22', '11:06:00', 'Active'),
(14, 21, 27, 26, 1, 'jjhj', '118078246', '2023-07-08', '19:45:00', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`),
  ADD UNIQUE KEY `adminname` (`adminname`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentid`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billingid`);

--
-- Indexes for table `billing_records`
--
ALTER TABLE `billing_records`
  ADD PRIMARY KEY (`billingservice_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorid`);

--
-- Indexes for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
  ADD PRIMARY KEY (`doctor_timings_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicineid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientid`),
  ADD KEY `loginid` (`loginid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prescriptionid`);

--
-- Indexes for table `prescription_records`
--
ALTER TABLE `prescription_records`
  ADD PRIMARY KEY (`prescription_record_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatmentid`);

--
-- Indexes for table `treatment_records`
--
ALTER TABLE `treatment_records`
  ADD PRIMARY KEY (`treatment_records_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `billingid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `billing_records`
--
ALTER TABLE `billing_records`
  MODIFY `billingservice_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `departmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctorid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
  MODIFY `doctor_timings_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicineid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patientid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `prescriptionid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `prescription_records`
--
ALTER TABLE `prescription_records`
  MODIFY `prescription_record_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `treatmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `treatment_records`
--
ALTER TABLE `treatment_records`
  MODIFY `treatment_records_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
