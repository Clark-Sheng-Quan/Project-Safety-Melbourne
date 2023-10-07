-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2022 at 11:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

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
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `emergency` varchar(50) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `emergency`, `subject`, `message`) VALUES
(1, 'q', 'q', 'q', 'q'),
(2, 'w', 'w', 'w', 'w'),
(26, 'w', 'w', 'e', 'r'),
(27, 'q', 'w', 'e', 'r'),
(28, 'e', 'r', 't', 'a'),
(29, 'Sheng', 'squa0009@studnet.monash.edu', 'Test', 'here is the message');

-- --------------------------------------------------------

--
-- Table structure for table `crime`
--

CREATE TABLE `crime` (
  `Suburb` varchar(50) NOT NULL,
  `A_Crimes_against_the_person` int(5) NOT NULL,
  `B_property_and_deception` int(5) NOT NULL,
  `C_Drug_offences` int(5) NOT NULL,
  `D_Public_order_and_security_offences` int(5) NOT NULL,
  `E_Justice_procedures_offences` int(5) NOT NULL,
  `F_other_offences` int(5) NOT NULL,
  `Grand_Total` int(5) NOT NULL,
  `Year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crime`
--

INSERT INTO `crime` (`Suburb`, `A_Crimes_against_the_person`, `B_property_and_deception`, `C_Drug_offences`, `D_Public_order_and_security_offences`, `E_Justice_procedures_offences`, `F_other_offences`, `Grand_Total`, `Year`) VALUES
('Port Melbourne', 19, 104, 12, 6, 10, 13, 164, 2022),
('Port Melbourne', 16, 101, 13, 5, 10, 20, 165, 2021),
('Port Melbourne', 17, 143, 8, 5, 12, 8, 193, 2020),
('Port Melbourne', 17, 183, 2, 17, 17, 0, 236, 2019),
('South Yarra', 16, 294, 7, 13, 16, 9, 355, 2021),
('South Yarra', 37, 296, 5, 13, 17, 2, 370, 2019),
('South Yarra', 32, 279, 12, 11, 16, 23, 373, 2022),
('South Yarra', 39, 325, 6, 15, 35, 0, 420, 2020),
('Parkville', 73, 392, 11, 15, 37, 31, 559, 2022),
('Parkville', 99, 370, 20, 25, 41, 64, 619, 2021),
('Parkville', 102, 438, 13, 25, 29, 14, 621, 2020),
('Kensington and Flemington', 85, 415, 16, 25, 30, 54, 625, 2021),
('Parkville', 90, 488, 12, 34, 35, 2, 661, 2019),
('East Melbourne', 95, 372, 78, 146, 17, 3, 711, 2019),
('East Melbourne', 98, 437, 42, 119, 39, 32, 767, 2020),
('East Melbourne', 122, 364, 29, 64, 50, 177, 806, 2022),
('West Melbourne', 115, 460, 86, 94, 50, 3, 808, 2019),
('Kensington and Flemington', 92, 548, 97, 25, 53, 12, 827, 2022),
('Kensington and Flemington', 112, 548, 78, 27, 67, 10, 842, 2020),
('West Melbourne', 123, 565, 56, 77, 63, 36, 920, 2020),
('Kensington and Flemington', 106, 577, 122, 59, 61, 2, 932, 2019),
('East Melbourne', 99, 410, 38, 46, 53, 361, 1007, 2021),
('West Melbourne', 113, 533, 39, 35, 56, 292, 1068, 2021),
('West Melbourne', 136, 610, 75, 59, 87, 108, 1075, 2022),
('North Melbourne', 185, 716, 42, 101, 63, 4, 1111, 2019),
('North Melbourne', 216, 755, 60, 44, 121, 130, 1326, 2021),
('North Melbourne', 213, 888, 53, 72, 80, 24, 1330, 2020),
('North Melbourne', 184, 921, 39, 58, 98, 41, 1341, 2022),
('Carlton', 206, 1030, 20, 69, 74, 1, 1400, 2019),
('Carlton', 203, 1115, 29, 63, 69, 40, 1519, 2020),
('Carlton', 244, 1010, 43, 71, 112, 103, 1583, 2021),
('Carlton', 277, 1417, 41, 94, 112, 83, 2024, 2022),
('Docklands', 351, 1004, 157, 184, 203, 159, 2058, 2022),
('Docklands', 333, 1168, 175, 210, 165, 109, 2160, 2020),
('Docklands', 276, 1274, 226, 280, 149, 4, 2209, 2019),
('Docklands', 294, 992, 164, 166, 273, 496, 2385, 2021),
('Southbank', 437, 1477, 142, 321, 95, 20, 2492, 2019),
('Southbank', 364, 1135, 185, 193, 178, 506, 2561, 2021),
('Southbank', 469, 1365, 161, 182, 173, 221, 2571, 2022),
('Southbank', 459, 1619, 197, 247, 126, 115, 2763, 2020),
('Melbourne', 2156, 6253, 736, 1161, 1741, 1700, 13747, 2022),
('Melbourne', 2031, 5798, 729, 1079, 1682, 2552, 13871, 2021),
('Melbourne', 2188, 7677, 860, 1738, 2045, 323, 14831, 2020),
('Melbourne', 2192, 7578, 776, 2408, 2225, 24, 15203, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `crimetest`
--

CREATE TABLE `crimetest` (
  `Suburb` varchar(50) NOT NULL,
  `A_Crimes_against_the_person` int(5) NOT NULL,
  `B_property_and_deception` int(5) NOT NULL,
  `C_Drug_offences` int(5) NOT NULL,
  `D_Public_order_and_security_offences` int(5) NOT NULL,
  `E_Justice_procedures_offences` int(5) NOT NULL,
  `F_other_offences` int(5) NOT NULL,
  `Grand_Total` int(5) NOT NULL,
  `Year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crimetest`
--

INSERT INTO `crimetest` (`Suburb`, `A_Crimes_against_the_person`, `B_property_and_deception`, `C_Drug_offences`, `D_Public_order_and_security_offences`, `E_Justice_procedures_offences`, `F_other_offences`, `Grand_Total`, `Year`) VALUES
('Port Melbourne', 50, 50, 50, 50, 50, 50, 300, 2022),
('Port Melbourne', 50, 50, 50, 50, 50, 50, 300, 2021),
('Port Melbourne', 50, 50, 50, 50, 50, 50, 300, 2020),
('Port Melbourne', 50, 50, 50, 50, 50, 50, 300, 2019),
('South Yarra', 50, 50, 50, 50, 50, 50, 300, 2021),
('South Yarra', 50, 50, 50, 50, 50, 50, 300, 2019),
('South Yarra', 50, 50, 50, 50, 50, 50, 300, 2022),
('South Yarra', 50, 50, 50, 50, 50, 50, 300, 2020),
('Parkville', 50, 50, 50, 50, 50, 50, 300, 2022),
('Parkville', 50, 50, 50, 50, 50, 50, 300, 2021),
('Parkville', 50, 50, 50, 50, 50, 50, 300, 2020),
('Kensington and Flemington', 50, 50, 50, 50, 50, 50, 300, 2021),
('Parkville', 50, 50, 50, 50, 50, 50, 300, 2019),
('East Melbourne', 50, 50, 50, 50, 50, 50, 300, 2019),
('East Melbourne', 50, 50, 50, 50, 50, 50, 300, 2020),
('East Melbourne', 50, 50, 50, 50, 50, 50, 300, 2022),
('West Melbourne', 50, 50, 50, 50, 50, 50, 300, 2019),
('Kensington and Flemington', 50, 50, 50, 50, 50, 50, 300, 2022),
('Kensington and Flemington', 50, 50, 50, 50, 50, 50, 300, 2020),
('West Melbourne', 50, 50, 50, 50, 50, 50, 300, 2020),
('Kensington and Flemington', 50, 50, 50, 50, 50, 50, 300, 2019),
('East Melbourne', 50, 50, 50, 50, 50, 50, 300, 2021),
('West Melbourne', 50, 50, 50, 50, 50, 50, 300, 2021),
('West Melbourne', 50, 50, 50, 50, 50, 50, 300, 2022),
('North Melbourne', 50, 50, 50, 50, 50, 50, 300, 2019),
('North Melbourne', 50, 50, 50, 50, 50, 50, 300, 2021),
('North Melbourne', 50, 50, 50, 50, 50, 50, 300, 2020),
('North Melbourne', 50, 50, 50, 50, 50, 50, 300, 2022),
('Carlton', 50, 50, 50, 50, 50, 50, 300, 2019),
('Carlton', 50, 50, 50, 50, 50, 50, 300, 2020),
('Carlton', 50, 50, 50, 50, 50, 50, 300, 2021),
('Carlton', 50, 50, 50, 50, 50, 50, 300, 2022),
('Docklands', 50, 50, 50, 50, 50, 50, 300, 2022),
('Docklands', 50, 50, 50, 50, 50, 50, 300, 2020),
('Docklands', 50, 50, 50, 50, 50, 50, 300, 2019),
('Docklands', 50, 50, 50, 50, 50, 50, 300, 2021),
('Southbank', 50, 50, 50, 50, 50, 50, 300, 2019),
('Southbank', 50, 50, 50, 50, 50, 50, 300, 2021),
('Southbank', 50, 50, 50, 50, 50, 50, 300, 2022),
('Southbank', 50, 50, 50, 50, 50, 50, 300, 2020),
('Melbourne', 50, 50, 50, 50, 50, 50, 300, 2022),
('Melbourne', 50, 50, 50, 50, 50, 50, 300, 2021),
('Melbourne', 50, 50, 50, 50, 50, 50, 300, 2020),
('Melbourne', 50, 50, 50, 50, 50, 50, 300, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `TYPE` varchar(10) NOT NULL,
  `TOPIC` varchar(50) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `RESPONSE` varchar(50) NOT NULL,
  `YEAR` int(4) NOT NULL,
  `RESPONDENT_GROUP` varchar(50) NOT NULL,
  `SAMPLE_SIZE` int(5) NOT NULL,
  `RESULT` decimal(4,1) NOT NULL,
  `FORMAT` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `indicators`
--

INSERT INTO `indicators` (`TYPE`, `TOPIC`, `DESCRIPTION`, `RESPONSE`, `YEAR`, `RESPONDENT_GROUP`, `SAMPLE_SIZE`, `RESULT`, `FORMAT`) VALUES
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'City of Melbourne', 1246, '89.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'Carlton 3053', 126, '86.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'Docklands 3008', 103, '88.4', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'East Melbourne 3002', 82, '86.7', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'Kensington / Flemington 3031', 142, '88.6', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'Melbourne 3000', 284, '90.2', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'North Melbourne 3051 / West Melbourne 3003', 184, '87.4', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'Parkville 3052', 72, '94.6', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'South Wharf / Southbank 3006', 123, '91.5', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 130, '85.6', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'City of Melbourne', 1227, '64.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'Carlton 3053', 125, '57.6', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'Docklands 3008', 100, '67.6', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'East Melbourne 3002', 80, '62.5', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'Kensington / Flemington 3031', 140, '62.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'Melbourne 3000', 280, '59.4', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'North Melbourne 3051 / West Melbourne 3003', 182, '66.1', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'Parkville 3052', 71, '74.9', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'South Wharf / Southbank 3006', 122, '71.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 127, '68.7', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'City of Melbourne', 1188, '86.5', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'Carlton 3053', 120, '89.8', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'Docklands 3008', 103, '82.5', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'East Melbourne 3002', 72, '74.2', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'Kensington / Flemington 3031', 133, '86.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'Melbourne 3000', 280, '87.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'North Melbourne 3051 / West Melbourne 3003', 173, '81.1', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'Parkville 3052', 70, '90.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'South Wharf / Southbank 3006', 118, '92.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 119, '83.2', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'City of Melbourne', 1086, '59.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'Carlton 3053', 108, '53.8', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'Docklands 3008', 96, '66.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'East Melbourne 3002', 61, '51.8', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'Kensington / Flemington 3031', 116, '50.7', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'Melbourne 3000', 263, '62.7', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'North Melbourne 3051 / West Melbourne 3003', 164, '60.8', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'Parkville 3052', 67, '51.1', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'South Wharf / Southbank 3006', 108, '57.9', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 103, '61.9', 'Per cent\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'City of Melbourne', 1166, '8.1', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'Carlton 3053', 116, '8.1', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'Docklands 3008', 90, '8.6', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'East Melbourne 3002', 77, '8.3', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'Kensington / Flemington 3031', 136, '8.1', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'Melbourne 3000', 267, '8.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'North Melbourne 3051 / West Melbourne 3003', 178, '8.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'Parkville 3052', 68, '8.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'South Wharf / Southbank 3006', 115, '8.4', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 119, '8.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'City of Melbourne', 1166, '6.7', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'Carlton 3053', 116, '7.1', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'Docklands 3008', 90, '7.2', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'East Melbourne 3002', 77, '6.8', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'Kensington / Flemington 3031', 136, '6.6', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'Melbourne 3000', 267, '6.5', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'North Melbourne 3051 / West Melbourne 3003', 178, '6.6', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'Parkville 3052', 68, '6.3', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'South Wharf / Southbank 3006', 115, '7.1', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 119, '7.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'City of Melbourne', 1166, '73.2', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'Carlton 3053', 116, '74.1', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'Docklands 3008', 90, '76.2', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'East Melbourne 3002', 77, '76.7', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'Kensington / Flemington 3031', 136, '72.9', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'Melbourne 3000', 267, '71.2', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'North Melbourne 3051 / West Melbourne 3003', 178, '71.6', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'Parkville 3052', 68, '73.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'South Wharf / Southbank 3006', 115, '75.7', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 119, '73.3', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'City of Melbourne', 1244, '7.4', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'Carlton 3053', 126, '7.5', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'Docklands 3008', 103, '7.5', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'East Melbourne 3002', 81, '7.5', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'Kensington / Flemington 3031', 142, '7.1', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'Melbourne 3000', 285, '7.3', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'North Melbourne 3051 / West Melbourne 3003', 183, '7.3', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'Parkville 3052', 72, '7.4', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'South Wharf / Southbank 3006', 122, '7.8', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 130, '7.3', 'Average\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'City of Melbourne', 1234, '93.3', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'Carlton 3053', 124, '94.6', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'Docklands 3008', 103, '88.9', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'East Melbourne 3002', 80, '92.9', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'Kensington / Flemington 3031', 141, '94.7', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'Melbourne 3000', 280, '95.5', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'North Melbourne 3051 / West Melbourne 3003', 182, '91.6', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'Parkville 3052', 72, '86.9', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'South Wharf / Southbank 3006', 123, '96.3', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 129, '85.4', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'City of Melbourne', 1232, '30.8', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'Carlton 3053', 126, '47.4', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'Docklands 3008', 100, '15.2', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'East Melbourne 3002', 82, '23.2', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'Kensington / Flemington 3031', 142, '27.7', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'Melbourne 3000', 279, '26.9', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'North Melbourne 3051 / West Melbourne 3003', 182, '33.6', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'Parkville 3052', 72, '39.2', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'South Wharf / Southbank 3006', 122, '33.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 127, '15.7', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'City of Melbourne', 1250, '86.1', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'Carlton 3053', 132, '88.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'Docklands 3008', 104, '89.7', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'East Melbourne 3002', 94, '91.8', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'Kensington / Flemington 3031', 112, '90.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'Melbourne 3000', 265, '85.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'North Melbourne 3051 / West Melbourne 3003', 212, '80.2', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'Parkville 3052', 93, '75.8', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'South Wharf / Southbank 3006', 138, '88.5', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 100, '92.5', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'City of Melbourne', 1235, '57.4', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'Carlton 3053', 129, '61.1', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'Docklands 3008', 103, '60.9', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'East Melbourne 3002', 93, '66.7', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'Kensington / Flemington 3031', 113, '62.1', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'Melbourne 3000', 263, '53.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'North Melbourne 3051 / West Melbourne 3003', 209, '54.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'Parkville 3052', 91, '36.9', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'South Wharf / Southbank 3006', 137, '65.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 97, '62.1', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'City of Melbourne', 1197, '86.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'Carlton 3053', 123, '83.4', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'Docklands 3008', 101, '86.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'East Melbourne 3002', 86, '87.8', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'Kensington / Flemington 3031', 104, '84.4', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'Melbourne 3000', 260, '87.4', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'North Melbourne 3051 / West Melbourne 3003', 205, '77.7', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'Parkville 3052', 89, '82.9', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'South Wharf / Southbank 3006', 132, '92.8', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 97, '94.4', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'City of Melbourne', 1080, '55.1', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'Carlton 3053', 108, '55.7', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'Docklands 3008', 92, '57.7', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'East Melbourne 3002', 76, '55.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'Kensington / Flemington 3031', 88, '53.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'Melbourne 3000', 247, '51.5', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'North Melbourne 3051 / West Melbourne 3003', 191, '50.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'Parkville 3052', 75, '49.5', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'South Wharf / Southbank 3006', 120, '63.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 83, '70.8', 'Per cent\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'City of Melbourne', 1185, '78.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'Carlton 3053', 125, '77.2', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'Docklands 3008', 94, '81.7', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'East Melbourne 3002', 88, '77.8', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'Kensington / Flemington 3031', 108, '77.4', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'Melbourne 3000', 251, '80.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'North Melbourne 3051 / West Melbourne 3003', 204, '72.2', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'Parkville 3052', 89, '72.2', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'South Wharf / Southbank 3006', 129, '80.8', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 97, '80.7', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'City of Melbourne', 1185, '66.7', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'Carlton 3053', 125, '63.8', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'Docklands 3008', 94, '69.9', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'East Melbourne 3002', 88, '70.1', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'Kensington / Flemington 3031', 108, '60.7', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'Melbourne 3000', 251, '68.5', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'North Melbourne 3051 / West Melbourne 3003', 204, '65.3', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'Parkville 3052', 89, '67.6', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'South Wharf / Southbank 3006', 129, '67.9', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 97, '66.9', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'City of Melbourne', 1185, '72.6', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'Carlton 3053', 125, '70.1', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'Docklands 3008', 94, '75.3', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'East Melbourne 3002', 88, '74.1', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'Kensington / Flemington 3031', 108, '70.3', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'Melbourne 3000', 251, '73.8', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'North Melbourne 3051 / West Melbourne 3003', 204, '69.8', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'Parkville 3052', 89, '72.4', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'South Wharf / Southbank 3006', 129, '75.5', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 97, '71.9', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'City of Melbourne', 1256, '74.6', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'Carlton 3053', 132, '71.5', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'Docklands 3008', 105, '77.2', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'East Melbourne 3002', 93, '74.5', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'Kensington / Flemington 3031', 113, '69.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'Melbourne 3000', 265, '75.5', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'North Melbourne 3051 / West Melbourne 3003', 215, '74.6', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'Parkville 3052', 94, '71.9', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'South Wharf / Southbank 3006', 138, '79.4', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 101, '70.8', 'Average\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'City of Melbourne', 1252, '95.5', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'Carlton 3053', 131, '94.5', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'Docklands 3008', 105, '93.2', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'East Melbourne 3002', 94, '96.3', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'Kensington / Flemington 3031', 113, '96.5', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'Melbourne 3000', 263, '95.4', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'North Melbourne 3051 / West Melbourne 3003', 214, '97.2', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'Parkville 3052', 93, '98.5', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'South Wharf / Southbank 3006', 138, '93.6', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 101, '98.3', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'City of Melbourne', 1246, '27.9', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'Carlton 3053', 130, '41.2', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'Docklands 3008', 103, '19.5', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'East Melbourne 3002', 95, '21.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'Kensington / Flemington 3031', 113, '27.3', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'Melbourne 3000', 263, '27.7', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'North Melbourne 3051 / West Melbourne 3003', 213, '22.7', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'Parkville 3052', 93, '45.4', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'South Wharf / Southbank 3006', 136, '21.2', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 100, '26.9', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'City of Melbourne', 1344, '85.6', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'Carlton 3053', 143, '78.1', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'Docklands 3008', 118, '86.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'East Melbourne 3002', 94, '90.8', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'Kensington / Flemington 3031', 119, '91.1', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'Melbourne 3000', 296, '80.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'North Melbourne 3051 / West Melbourne 3003', 221, '88.8', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'Parkville 3052', 100, '88.1', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'South Wharf / Southbank 3006', 142, '92.8', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 111, '94.8', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'City of Melbourne', 1320, '64.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'Carlton 3053', 139, '56.1', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'Docklands 3008', 117, '75.4', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'East Melbourne 3002', 94, '67.8', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'Kensington / Flemington 3031', 118, '61.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'Melbourne 3000', 290, '62.6', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'North Melbourne 3051 / West Melbourne 3003', 217, '57.6', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'Parkville 3052', 97, '59.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'South Wharf / Southbank 3006', 138, '78.7', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 110, '66.1', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'City of Melbourne', 1268, '81.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'Carlton 3053', 136, '78.6', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'Docklands 3008', 117, '82.9', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'East Melbourne 3002', 85, '79.7', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'Kensington / Flemington 3031', 108, '88.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'Melbourne 3000', 289, '81.4', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'North Melbourne 3051 / West Melbourne 3003', 205, '77.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'Parkville 3052', 94, '84.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'South Wharf / Southbank 3006', 133, '79.3', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 101, '91.4', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'City of Melbourne', 1174, '54.2', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'Carlton 3053', 125, '48.1', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'Docklands 3008', 111, '60.4', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'East Melbourne 3002', 78, '59.4', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'Kensington / Flemington 3031', 101, '52.6', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'Melbourne 3000', 277, '55.9', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'North Melbourne 3051 / West Melbourne 3003', 190, '51.4', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'Parkville 3052', 81, '57.6', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'South Wharf / Southbank 3006', 119, '52.2', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 92, '59.4', 'Per cent\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'City of Melbourne', 1282, '79.3', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'Carlton 3053', 137, '75.9', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'Docklands 3008', 110, '81.6', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'East Melbourne 3002', 92, '81.7', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'Kensington / Flemington 3031', 117, '78.8', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'Melbourne 3000', 281, '77.6', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'North Melbourne 3051 / West Melbourne 3003', 208, '79.7', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'Parkville 3052', 99, '82.6', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'South Wharf / Southbank 3006', 133, '81.1', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 105, '84.1', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'City of Melbourne', 1282, '65.5', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'Carlton 3053', 137, '60.1', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'Docklands 3008', 110, '70.5', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'East Melbourne 3002', 92, '71.6', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'Kensington / Flemington 3031', 117, '66.7', 'Average\r');
INSERT INTO `indicators` (`TYPE`, `TOPIC`, `DESCRIPTION`, `RESPONSE`, `YEAR`, `RESPONDENT_GROUP`, `SAMPLE_SIZE`, `RESULT`, `FORMAT`) VALUES
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'Melbourne 3000', 281, '64.6', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'North Melbourne 3051 / West Melbourne 3003', 208, '67.4', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'Parkville 3052', 99, '64.7', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'South Wharf / Southbank 3006', 133, '65.9', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 105, '65.5', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'City of Melbourne', 1282, '71.9', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'Carlton 3053', 137, '68.7', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'Docklands 3008', 110, '75.3', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'East Melbourne 3002', 92, '75.8', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'Kensington / Flemington 3031', 117, '72.1', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'Melbourne 3000', 281, '70.8', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'North Melbourne 3051 / West Melbourne 3003', 208, '72.5', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'Parkville 3052', 99, '73.3', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'South Wharf / Southbank 3006', 133, '72.5', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 105, '73.7', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'City of Melbourne', 1342, '69.5', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'Carlton 3053', 142, '66.2', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'Docklands 3008', 118, '74.2', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'East Melbourne 3002', 94, '73.6', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'Kensington / Flemington 3031', 119, '69.4', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'Melbourne 3000', 295, '67.8', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'North Melbourne 3051 / West Melbourne 3003', 221, '70.6', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'Parkville 3052', 100, '72.2', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'South Wharf / Southbank 3006', 142, '68.3', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 111, '74.5', 'Average\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'City of Melbourne', 1334, '96.3', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'Carlton 3053', 141, '97.3', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'Docklands 3008', 118, '94.8', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'East Melbourne 3002', 94, '93.3', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'Kensington / Flemington 3031', 119, '93.4', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'Melbourne 3000', 293, '96.2', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'North Melbourne 3051 / West Melbourne 3003', 219, '96.4', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'Parkville 3052', 99, '98.1', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'South Wharf / Southbank 3006', 141, '97.2', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 110, '97.6', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'City of Melbourne', 1325, '23.4', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'Carlton 3053', 142, '28.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'Docklands 3008', 116, '26.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'East Melbourne 3002', 93, '28.7', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'Kensington / Flemington 3031', 115, '20.6', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'Melbourne 3000', 290, '21.6', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'North Melbourne 3051 / West Melbourne 3003', 220, '20.1', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'Parkville 3052', 99, '28.7', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'South Wharf / Southbank 3006', 141, '21.8', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 109, '25.1', 'Per cent\r');

-- --------------------------------------------------------

--
-- Table structure for table `indicatorstest`
--

CREATE TABLE `indicatorstest` (
  `TYPE` varchar(10) NOT NULL,
  `TOPIC` varchar(50) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `RESPONSE` varchar(50) NOT NULL,
  `YEAR` int(4) NOT NULL,
  `RESPONDENT_GROUP` varchar(50) NOT NULL,
  `SAMPLE_SIZE` int(5) NOT NULL,
  `RESULT` decimal(4,1) NOT NULL,
  `FORMAT` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `indicatorstest`
--

INSERT INTO `indicatorstest` (`TYPE`, `TOPIC`, `DESCRIPTION`, `RESPONSE`, `YEAR`, `RESPONDENT_GROUP`, `SAMPLE_SIZE`, `RESULT`, `FORMAT`) VALUES
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'City of Melbourne', 1246, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'Carlton 3053', 126, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'Docklands 3008', 103, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'East Melbourne 3002', 82, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'Kensington / Flemington 3031', 142, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'Melbourne 3000', 284, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'North Melbourne 3051 / West Melbourne 3003', 184, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'Parkville 3052', 72, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'South Wharf / Southbank 3006', 123, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 130, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'City of Melbourne', 1227, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'Carlton 3053', 125, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'Docklands 3008', 100, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'East Melbourne 3002', 80, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'Kensington / Flemington 3031', 140, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'Melbourne 3000', 280, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'North Melbourne 3051 / West Melbourne 3003', 182, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'Parkville 3052', 71, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'South Wharf / Southbank 3006', 122, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 127, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'City of Melbourne', 1188, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'Carlton 3053', 120, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'Docklands 3008', 103, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'East Melbourne 3002', 72, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'Kensington / Flemington 3031', 133, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'Melbourne 3000', 280, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'North Melbourne 3051 / West Melbourne 3003', 173, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'Parkville 3052', 70, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'South Wharf / Southbank 3006', 118, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 119, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'City of Melbourne', 1086, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'Carlton 3053', 108, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'Docklands 3008', 96, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'East Melbourne 3002', 61, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'Kensington / Flemington 3031', 116, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'Melbourne 3000', 263, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'North Melbourne 3051 / West Melbourne 3003', 164, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'Parkville 3052', 67, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'South Wharf / Southbank 3006', 108, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 103, '50.0', 'Per cent\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'City of Melbourne', 1166, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'Carlton 3053', 116, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'Docklands 3008', 90, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'East Melbourne 3002', 77, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'Kensington / Flemington 3031', 136, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'Melbourne 3000', 267, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'North Melbourne 3051 / West Melbourne 3003', 178, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'Parkville 3052', 68, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'South Wharf / Southbank 3006', 115, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-10)', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 119, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'City of Melbourne', 1166, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'Carlton 3053', 116, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'Docklands 3008', 90, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'East Melbourne 3002', 77, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'Kensington / Flemington 3031', 136, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'Melbourne 3000', 267, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'North Melbourne 3051 / West Melbourne 3003', 178, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'Parkville 3052', 68, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'South Wharf / Southbank 3006', 115, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-10)', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 119, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'City of Melbourne', 1166, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'Carlton 3053', 116, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'Docklands 3008', 90, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'East Melbourne 3002', 77, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'Kensington / Flemington 3031', 136, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'Melbourne 3000', 267, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'North Melbourne 3051 / West Melbourne 3003', 178, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'Parkville 3052', 68, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'South Wharf / Southbank 3006', 115, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-100)', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 119, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'City of Melbourne', 1244, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'Carlton 3053', 126, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'Docklands 3008', 103, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'East Melbourne 3002', 81, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'Kensington / Flemington 3031', 142, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'Melbourne 3000', 285, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'North Melbourne 3051 / West Melbourne 3003', 183, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'Parkville 3052', 72, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'South Wharf / Southbank 3006', 122, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-10)', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 130, '50.0', 'Average\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'City of Melbourne', 1234, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'Carlton 3053', 124, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'Docklands 3008', 103, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'East Melbourne 3002', 80, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'Kensington / Flemington 3031', 141, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'Melbourne 3000', 280, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'North Melbourne 3051 / West Melbourne 3003', 182, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'Parkville 3052', 72, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'South Wharf / Southbank 3006', 123, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 129, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'City of Melbourne', 1232, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'Carlton 3053', 126, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'Docklands 3008', 100, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'East Melbourne 3002', 82, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'Kensington / Flemington 3031', 142, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'Melbourne 3000', 279, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'North Melbourne 3051 / West Melbourne 3003', 182, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'Parkville 3052', 72, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'South Wharf / Southbank 3006', 122, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2018, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 127, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'City of Melbourne', 1250, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'Carlton 3053', 132, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'Docklands 3008', 104, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'East Melbourne 3002', 94, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'Kensington / Flemington 3031', 112, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'Melbourne 3000', 265, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'North Melbourne 3051 / West Melbourne 3003', 212, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'Parkville 3052', 93, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'South Wharf / Southbank 3006', 138, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 100, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'City of Melbourne', 1235, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'Carlton 3053', 129, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'Docklands 3008', 103, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'East Melbourne 3002', 93, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'Kensington / Flemington 3031', 113, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'Melbourne 3000', 263, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'North Melbourne 3051 / West Melbourne 3003', 209, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'Parkville 3052', 91, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'South Wharf / Southbank 3006', 137, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 97, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'City of Melbourne', 1197, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'Carlton 3053', 123, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'Docklands 3008', 101, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'East Melbourne 3002', 86, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'Kensington / Flemington 3031', 104, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'Melbourne 3000', 260, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'North Melbourne 3051 / West Melbourne 3003', 205, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'Parkville 3052', 89, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'South Wharf / Southbank 3006', 132, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 97, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'City of Melbourne', 1080, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'Carlton 3053', 108, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'Docklands 3008', 92, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'East Melbourne 3002', 76, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'Kensington / Flemington 3031', 88, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'Melbourne 3000', 247, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'North Melbourne 3051 / West Melbourne 3003', 191, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'Parkville 3052', 75, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'South Wharf / Southbank 3006', 120, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 83, '50.0', 'Per cent\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'City of Melbourne', 1185, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'Carlton 3053', 125, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'Docklands 3008', 94, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'East Melbourne 3002', 88, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'Kensington / Flemington 3031', 108, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'Melbourne 3000', 251, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'North Melbourne 3051 / West Melbourne 3003', 204, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'Parkville 3052', 89, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'South Wharf / Southbank 3006', 129, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 97, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'City of Melbourne', 1185, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'Carlton 3053', 125, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'Docklands 3008', 94, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'East Melbourne 3002', 88, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'Kensington / Flemington 3031', 108, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'Melbourne 3000', 251, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'North Melbourne 3051 / West Melbourne 3003', 204, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'Parkville 3052', 89, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'South Wharf / Southbank 3006', 129, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 97, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'City of Melbourne', 1185, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'Carlton 3053', 125, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'Docklands 3008', 94, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'East Melbourne 3002', 88, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'Kensington / Flemington 3031', 108, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'Melbourne 3000', 251, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'North Melbourne 3051 / West Melbourne 3003', 204, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'Parkville 3052', 89, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'South Wharf / Southbank 3006', 129, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 97, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'City of Melbourne', 1256, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'Carlton 3053', 132, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'Docklands 3008', 105, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'East Melbourne 3002', 93, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'Kensington / Flemington 3031', 113, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'Melbourne 3000', 265, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'North Melbourne 3051 / West Melbourne 3003', 215, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'Parkville 3052', 94, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'South Wharf / Southbank 3006', 138, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 101, '50.0', 'Average\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'City of Melbourne', 1252, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'Carlton 3053', 131, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'Docklands 3008', 105, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'East Melbourne 3002', 94, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'Kensington / Flemington 3031', 113, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'Melbourne 3000', 263, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'North Melbourne 3051 / West Melbourne 3003', 214, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'Parkville 3052', 93, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'South Wharf / Southbank 3006', 138, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 101, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'City of Melbourne', 1246, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'Carlton 3053', 130, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'Docklands 3008', 103, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'East Melbourne 3002', 95, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'Kensington / Flemington 3031', 113, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'Melbourne 3000', 263, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'North Melbourne 3051 / West Melbourne 3003', 213, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'Parkville 3052', 93, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'South Wharf / Southbank 3006', 136, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2019, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 100, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'City of Melbourne', 1344, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'Carlton 3053', 143, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'Docklands 3008', 118, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'East Melbourne 3002', 94, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'Kensington / Flemington 3031', 119, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'Melbourne 3000', 296, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'North Melbourne 3051 / West Melbourne 3003', 221, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'Parkville 3052', 100, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'South Wharf / Southbank 3006', 142, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - during the day', 'Reported as feeling very safe or safe', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 111, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'City of Melbourne', 1320, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'Carlton 3053', 139, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'Docklands 3008', 117, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'East Melbourne 3002', 94, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'Kensington / Flemington 3031', 118, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'Melbourne 3000', 290, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'North Melbourne 3051 / West Melbourne 3003', 217, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'Parkville 3052', 97, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'South Wharf / Southbank 3006', 138, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself in your neighbourhood - at night', 'Reported as feeling very safe or safe', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 110, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'City of Melbourne', 1268, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'Carlton 3053', 136, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'Docklands 3008', 117, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'East Melbourne 3002', 85, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'Kensington / Flemington 3031', 108, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'Melbourne 3000', 289, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'North Melbourne 3051 / West Melbourne 3003', 205, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'Parkville 3052', 94, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'South Wharf / Southbank 3006', 133, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - during the day', 'Reported as feeling very safe or safe', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 101, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'City of Melbourne', 1174, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'Carlton 3053', 125, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'Docklands 3008', 111, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'East Melbourne 3002', 78, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'Kensington / Flemington 3031', 101, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'Melbourne 3000', 277, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'North Melbourne 3051 / West Melbourne 3003', 190, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'Parkville 3052', 81, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'South Wharf / Southbank 3006', 119, '50.0', 'Per cent\r'),
('Safety', 'Perceptions of safety', 'Feel safe by yourself on public transport in and around City of Melbourne - at night', 'Reported as feeling very safe or safe', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 92, '50.0', 'Per cent\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'City of Melbourne', 1282, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'Carlton 3053', 137, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'Docklands 3008', 110, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'East Melbourne 3002', 92, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'Kensington / Flemington 3031', 117, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'Melbourne 3000', 281, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'North Melbourne 3051 / West Melbourne 3003', 208, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'Parkville 3052', 99, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'South Wharf / Southbank 3006', 133, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with how safe you feel', 'Average satisfaction score (from 0-100)', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 105, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'City of Melbourne', 1282, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'Carlton 3053', 137, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'Docklands 3008', 110, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'East Melbourne 3002', 92, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'Kensington / Flemington 3031', 117, '50.0', 'Average\r');
INSERT INTO `indicatorstest` (`TYPE`, `TOPIC`, `DESCRIPTION`, `RESPONSE`, `YEAR`, `RESPONDENT_GROUP`, `SAMPLE_SIZE`, `RESULT`, `FORMAT`) VALUES
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'Melbourne 3000', 281, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'North Melbourne 3051 / West Melbourne 3003', 208, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'Parkville 3052', 99, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'South Wharf / Southbank 3006', 133, '50.0', 'Average\r'),
('Safety', 'Subjective wellbeing', 'Satisfaction with future security', 'Average satisfaction score (from 0-100)', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 105, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'City of Melbourne', 1282, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'Carlton 3053', 137, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'Docklands 3008', 110, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'East Melbourne 3002', 92, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'Kensington / Flemington 3031', 117, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'Melbourne 3000', 281, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'North Melbourne 3051 / West Melbourne 3003', 208, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'Parkville 3052', 99, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'South Wharf / Southbank 3006', 133, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Personal Wellbeing Index (subjective wellbeing combined)', 'Average of subjective wellbeing (0-1000)', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 105, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'City of Melbourne', 1342, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'Carlton 3053', 142, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'Docklands 3008', 118, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'East Melbourne 3002', 94, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'Kensington / Flemington 3031', 119, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'Melbourne 3000', 295, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'North Melbourne 3051 / West Melbourne 3003', 221, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'Parkville 3052', 100, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'South Wharf / Southbank 3006', 142, '50.0', 'Average\r'),
('Kindness', 'Quality of life', 'Satisfaction with life as a whole', 'Average satisfaction score (from 0-100)', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 111, '50.0', 'Average\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'City of Melbourne', 1334, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'Carlton 3053', 141, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'Docklands 3008', 118, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'East Melbourne 3002', 94, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'Kensington / Flemington 3031', 119, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'Melbourne 3000', 293, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'North Melbourne 3051 / West Melbourne 3003', 219, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'Parkville 3052', 99, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'South Wharf / Southbank 3006', 141, '50.0', 'Per cent\r'),
('Kindness', 'Tolerance of diversity', 'It’s a good thing for society to be made up of different cultures', 'Reported as strongly agree or agree', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 110, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'City of Melbourne', 1325, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'Carlton 3053', 142, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'Docklands 3008', 116, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'East Melbourne 3002', 93, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'Kensington / Flemington 3031', 115, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'Melbourne 3000', 290, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'North Melbourne 3051 / West Melbourne 3003', 220, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'Parkville 3052', 99, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'South Wharf / Southbank 3006', 141, '50.0', 'Per cent\r'),
('Kindness', 'Volunteering', 'Help out as a volunteer in the City of Melbourne', 'Yes in the last 12 months', 2020, 'South Yarra 3141 / Melbourne/St Kilda Road 3004', 109, '50.0', 'Per cent\r');

-- --------------------------------------------------------

--
-- Table structure for table `suburbs`
--

CREATE TABLE `suburbs` (
  `NO` int(2) NOT NULL,
  `Suburb` varchar(30) NOT NULL,
  `Postcode` int(4) NOT NULL,
  `Population` int(11) NOT NULL,
  `Daily_population` int(10) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suburbs`
--

INSERT INTO `suburbs` (`NO`, `Suburb`, `Postcode`, `Population`, `Daily_population`, `Description`) VALUES
(5, 'Melbourne', 3000, 46000, 413200, 'Melbourne, including the central city, has the highest number of businesses and residents in a small area in the municipality.'),
(3, 'East Melbourne', 3002, 5000, 106400, 'East Melbourne is an established, affluent area with many 19th century homes, iconic landmarks and parks. The historic Fitzroy, Treasury and Parliament gardens separate East Melbourne from the central city.'),
(11, 'West Melbourne', 3003, 8000, 76800, 'West Melbourne is a sprawling region with the Yarra River forming part of its southern border. The west section of West Melbourne is mostly devoted to railway lines, container yards, shipping docks, and industrial, warehouse and wholesale activities. The east is mainly residential.'),
(10, 'Southbank', 3006, 22000, 134100, 'The small suburb of Southbank is situated on the southern side of the Yarra River. Southbank includes Southbank Promenade that stretches from Southgate shopping and dining complex to Queensbridge Square.'),
(2, 'Docklands', 3008, 15000, 126500, 'Docklands became part of the City of Melbourne municipality in July 2007. The suburb\'s 200 hectares of land and water are on Victoria Harbour, west of the city centre.'),
(4, 'Kensington and Flemington', 3031, 10000, 44600, 'This area consists of Kensington and a small part of neighbouring Flemington including Flemington Racecourse and Melbourne Showgrounds.'),
(6, 'North Melbourne', 3051, 15000, 48100, 'North Melbourne is one of the city\'s most dynamic and complex areas. Its residences are a mix of established and new housing with commercial, industrial, retail and community facilities scattered throughout.'),
(7, 'Parkville', 3052, 7000, 73100, 'Parkville is known for its leafy streets, heritage houses and the University of Melbourne\'s bustling campus and residential colleges.'),
(1, 'Carlton', 3053, 16000, 100700, 'Carlton is a lively suburb, well-known for the Italian cafes and restaurants of the Lygon Street Italian precinct. It is also known for its Victorian buildings and leafy parks and gardens.'),
(9, 'South Yarra', 3141, 4000, 86000, 'Only a portion of South Yarra is located in the City of Melbourne – the area west of Punt Road. The area to the east is in Stonnington City Council.'),
(8, 'Port Melbourne', 3207, 17000, 34100, 'Port Melbourne is bordered by the shore of Hobsons Bay and the lower reaches of the Yarra River, and includes Fishermans Bend - a well-situated business location.');

-- --------------------------------------------------------

--
-- Table structure for table `suburbstest`
--

CREATE TABLE `suburbstest` (
  `NO` int(2) NOT NULL,
  `Suburb` varchar(30) NOT NULL,
  `Postcode` int(4) NOT NULL,
  `Population` int(11) NOT NULL,
  `Daily_population` int(10) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suburbstest`
--

INSERT INTO `suburbstest` (`NO`, `Suburb`, `Postcode`, `Population`, `Daily_population`, `Description`) VALUES
(5, 'Melbourne', 3000, 46000, 100000, 'Melbourne, including the central city, has the highest number of businesses and residents in a small area in the municipality.'),
(3, 'East Melbourne', 3002, 5000, 100000, 'East Melbourne is an established, affluent area with many 19th century homes, iconic landmarks and parks. The historic Fitzroy, Treasury and Parliament gardens separate East Melbourne from the central city.'),
(11, 'West Melbourne', 3003, 8000, 100000, 'West Melbourne is a sprawling region with the Yarra River forming part of its southern border. The west section of West Melbourne is mostly devoted to railway lines, container yards, shipping docks, and industrial, warehouse and wholesale activities. The east is mainly residential.'),
(10, 'Southbank', 3006, 22000, 100000, 'The small suburb of Southbank is situated on the southern side of the Yarra River. Southbank includes Southbank Promenade that stretches from Southgate shopping and dining complex to Queensbridge Square.'),
(2, 'Docklands', 3008, 15000, 100000, 'Docklands became part of the City of Melbourne municipality in July 2007. The suburb\'s 200 hectares of land and water are on Victoria Harbour, west of the city centre.'),
(4, 'Kensington and Flemington', 3031, 10000, 100000, 'This area consists of Kensington and a small part of neighbouring Flemington including Flemington Racecourse and Melbourne Showgrounds.'),
(6, 'North Melbourne', 3051, 15000, 100000, 'North Melbourne is one of the city\'s most dynamic and complex areas. Its residences are a mix of established and new housing with commercial, industrial, retail and community facilities scattered throughout.'),
(7, 'Parkville', 3052, 7000, 100000, 'Parkville is known for its leafy streets, heritage houses and the University of Melbourne\'s bustling campus and residential colleges.'),
(1, 'Carlton', 3053, 16000, 100000, 'Carlton is a lively suburb, well-known for the Italian cafes and restaurants of the Lygon Street Italian precinct. It is also known for its Victorian buildings and leafy parks and gardens.'),
(9, 'South Yarra', 3141, 4000, 100000, 'Only a portion of South Yarra is located in the City of Melbourne – the area west of Punt Road. The area to the east is in Stonnington City Council.'),
(8, 'Port Melbourne', 3207, 17000, 100000, 'Port Melbourne is bordered by the shore of Hobsons Bay and the lower reaches of the Yarra River, and includes Fishermans Bend - a well-situated business location.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(20) NOT NULL,
  `fullname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `email`, `phone`, `fullname`) VALUES
(0, 'Mishra000', '123456', 'smis0013@gmail.com', 466071096, 'Shresth Mishra'),
(1, 'Li001', '123456', 'lmaa0018@student.monash.edu', 466071091, 'Li Ma'),
(2, 'Sheng002', '123456', 'squa0009@student.monash.edu ', 466071092, 'Sheng Quan'),
(3, 'Shresth003', '123456', 'smis0013@student.monash.edu', 466071093, 'Shresth Mishra'),
(4, 'Quan004', '123456', 'squa0009@gmail.com', 466071094, 'Sheng Quan'),
(5, 'Ma005', '123456', 'lmaa0018@gmail.com', 466071095, 'Li Ma'),
(6, 'Bruce006', '123456', 'qweqwe@gmail.com', 32254589, ''),
(8, 'pooo05', '123456', '9485415', 1451515, ''),
(9, 'Joe007', '123456', '9841515@gmail.com', 14519515, ''),
(11, 'kris004', '123456', '84848151@gmail.com', 415185125, ''),
(12, 'testnaem', '123456', 'qwewq@qq.com', 446671090, ''),
(13, 'YUeki992', '123456', 'qweras@gmail.com', 466071081, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crime`
--
ALTER TABLE `crime`
  ADD PRIMARY KEY (`Grand_Total`);

--
-- Indexes for table `suburbs`
--
ALTER TABLE `suburbs`
  ADD PRIMARY KEY (`Postcode`),
  ADD UNIQUE KEY `suburb` (`Suburb`),
  ADD UNIQUE KEY `postcode` (`Postcode`),
  ADD UNIQUE KEY `NO` (`NO`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
