-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2018 at 09:11 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpc_osams`
--

-- --------------------------------------------------------

--
-- Table structure for table `osams_about`
--

CREATE TABLE `osams_about` (
  `abt_id` int(11) NOT NULL,
  `abt_pic` varchar(255) NOT NULL,
  `abt_desc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `osams_admin`
--

CREATE TABLE `osams_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_uname` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osams_admin`
--

INSERT INTO `osams_admin` (`admin_id`, `admin_name`, `admin_uname`, `admin_pass`) VALUES
(1, 'Beatrisse Bantug', 'bea', 'qwe123'),
(2, 'Roanne Capule', 'anne', 'qwe123'),
(3, 'Mandy Villacastin', 'mandy', 'qwe123'),
(4, 'Anne Santos', 'superadmin', 'qwerty1234');

-- --------------------------------------------------------

--
-- Table structure for table `osams_announcement`
--

CREATE TABLE `osams_announcement` (
  `announce_id` int(11) NOT NULL,
  `announce_pic` varchar(255) NOT NULL,
  `announce_desc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `osams_course`
--

CREATE TABLE `osams_course` (
  `crs_id` int(11) NOT NULL,
  `crs_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `osams_developers`
--

CREATE TABLE `osams_developers` (
  `dev_id` int(11) NOT NULL,
  `dev_pic` varchar(255) NOT NULL,
  `dev_name` varchar(255) NOT NULL,
  `dev_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `osams_gallery`
--

CREATE TABLE `osams_gallery` (
  `pic_id` int(11) NOT NULL,
  `pic_pic` varchar(255) NOT NULL,
  `pic_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `osams_member`
--

CREATE TABLE `osams_member` (
  `mem_id` int(11) NOT NULL,
  `mem_name` varchar(500) NOT NULL,
  `mem_username` varchar(500) NOT NULL,
  `mem_pass` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osams_member`
--

INSERT INTO `osams_member` (`mem_id`, `mem_name`, `mem_username`, `mem_pass`) VALUES
(1, 'Anne Byun', 'anne', 'byun'),
(2, 'Chloe Matsui', 'chloe', 'matsui'),
(3, 'Mandy Villacastin', 'mandy', 'villa'),
(4, 'Beatrisse Bantug', 'bea', 'bantug');

-- --------------------------------------------------------

--
-- Table structure for table `osams_misc`
--

CREATE TABLE `osams_misc` (
  `misc_id` int(11) NOT NULL,
  `misc_course` int(11) NOT NULL,
  `misc_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `osams_scholars`
--

CREATE TABLE `osams_scholars` (
  `sch_no` int(11) NOT NULL,
  `sch_id` varchar(255) NOT NULL,
  `sch_fname` varchar(255) NOT NULL,
  `sch_mfname` varchar(255) NOT NULL,
  `sch_lname` varchar(255) NOT NULL,
  `sch_extname` varchar(255) NOT NULL,
  `sch_bday` varchar(255) NOT NULL,
  `sch_age` varchar(255) NOT NULL,
  `sch_gender` varchar(255) NOT NULL,
  `sch_add_st` varchar(255) NOT NULL,
  `sch_add_brgy` varchar(255) NOT NULL,
  `sch_add_mun` varchar(255) NOT NULL,
  `sch_add_prov` varchar(255) NOT NULL,
  `sch_zip` varchar(255) NOT NULL,
  `sch_cp_no` varchar(255) NOT NULL,
  `sch_email` varchar(255) NOT NULL,
  `sch_father` varchar(255) NOT NULL,
  `sch_f_occu` varchar(255) NOT NULL,
  `sch_mother` varchar(255) NOT NULL,
  `sch_m_occu` varchar(255) NOT NULL,
  `sch_civ_stat` varchar(255) NOT NULL,
  `sch_course` varchar(255) NOT NULL,
  `sch_yr_lvl` varchar(255) NOT NULL,
  `sch_section` varchar(255) NOT NULL,
  `sch_sem` varchar(255) NOT NULL,
  `sch_acad_yr` varchar(255) NOT NULL,
  `sch_verified` varchar(255) NOT NULL,
  `sch_pic` varchar(255) NOT NULL,
  `sch_cor` varchar(255) NOT NULL,
  `sch_or` varchar(255) NOT NULL,
  `sch_idpc` varchar(255) NOT NULL,
  `sch_loa` varchar(255) NOT NULL,
  `sch_brgy_ndgncy` varchar(255) NOT NULL,
  `sch_cc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osams_scholars`
--

INSERT INTO `osams_scholars` (`sch_no`, `sch_id`, `sch_fname`, `sch_mfname`, `sch_lname`, `sch_extname`, `sch_bday`, `sch_age`, `sch_gender`, `sch_add_st`, `sch_add_brgy`, `sch_add_mun`, `sch_add_prov`, `sch_zip`, `sch_cp_no`, `sch_email`, `sch_father`, `sch_f_occu`, `sch_mother`, `sch_m_occu`, `sch_civ_stat`, `sch_course`, `sch_yr_lvl`, `sch_section`, `sch_sem`, `sch_acad_yr`, `sch_verified`, `sch_pic`, `sch_cor`, `sch_or`, `sch_idpc`, `sch_loa`, `sch_brgy_ndgncy`, `sch_cc`) VALUES
(37, '15-1236', 'Rianne', 'Tancinco', 'Capule', '', 'August 22, 2006', '12', 'Female', '049', 'Partida', 'Norzagaray', 'Bulacan', '3013', '09364517920', 'riannecapule22@gmail.com', 'Robert Capule', 'Carpenter', 'Marianne Capule', 'MR Staff', 'Single', 'BSAIS', '1st', 'A', '1st', '2018-2019', 'no', '', '', '', '', '', '', ''),
(38, '15-1239', 'Roanne', 'Tancinco', 'ghg', '', '1998-07-21', '', '', 'hg', 'Atlag', 'hgj', 'hg', 'hg', '09356701894', 'roanne.capule21@gmail.com', 'Robert Capule', 'Carpenter', 'Marianne Capule', 'MR Staff', 'Single', 'BSIS', '4th', '', '1st', '2018-2019', 'no', '41165879_2192632984350950_6083976042714759168_n.jpg', '40636677_201378900601519_2490432921115033600_o.jpg', '40910873_464835757350287_3000393526543384576_n.jpg', 'MG.jpeg', '', '40924676_660988397619850_2881430169464078336_n.jpg', '40922976_330077764407559_2226069429119090688_n.jpg'),
(39, '15-1239', 'Roanne', 'Tancinco', 'ghg', '', '1998-07-21', '20', 'Female', 'hg', 'Atlag', 'hgj', 'hg', 'hg', '09356701894', 'roanne.capule21@gmail.com', 'Robert Capule', 'Carpenter', 'Marianne Capule', 'MR Staff', 'Single', 'BSIS', '4th', '', '1st', '2018-2019', 'no', '41165879_2192632984350950_6083976042714759168_n.jpg', '40636677_201378900601519_2490432921115033600_o.jpg', '40910873_464835757350287_3000393526543384576_n.jpg', 'MG.jpeg', '', '40924676_660988397619850_2881430169464078336_n.jpg', '40922976_330077764407559_2226069429119090688_n.jpg'),
(40, '15-1239', 'Roanne', 'sds', 'Capule', 'dsd', '1987-02-09', '20', 'Female', '174 Sevilla St', 'da', 'Malolos', 'Bulacan', '3000', 'da', 'roanne.capule21@gmail.com', 'ad', 'nbm', 'nbn', 'bmnb', 'bnbmb', 'BSIS', '1st', '2nd', '1st', 'sa', 'no', '43518826_283724755684065_8084309214891081728_n.jpg', '42271823_707522979610760_1049507629946109952_n.jpg', '42326727_479762309207479_2854637742564835328_n.jpg', '42299124_299482420645407_7723561777690050560_n.jpg', '', '42231117_240666696621662_7481580562864406528_n.jpg', '464340cf24b015d4d0609873fb9ce0cb.jpg'),
(41, '15-1239', 'Roanne', 'sds', 'Capule', 'dsd', '1987-02-09', '20', 'Female', '174 Sevilla St', 'da', 'Malolos', 'Bulacan', '3000', 'da', 'roanne.capule21@gmail.com', 'ad', 'nbm', 'nbn', 'bmnb', 'bnbmb', 'BSIS', '1st', '2nd', '1st', 'sa', 'no', '43518826_283724755684065_8084309214891081728_n.jpg', '42271823_707522979610760_1049507629946109952_n.jpg', '42326727_479762309207479_2854637742564835328_n.jpg', '42299124_299482420645407_7723561777690050560_n.jpg', '', '42231117_240666696621662_7481580562864406528_n.jpg', '464340cf24b015d4d0609873fb9ce0cb.jpg'),
(42, '15-1239', 'Roanne', 'sds', 'Capule', 'dsd', '1987-02-09', '20', 'Female', '174 Sevilla St', 'da', 'Malolos', 'Bulacan', '3000', 'da', 'roanne.capule21@gmail.com', 'ad', 'nbm', 'nbn', 'bmnb', 'bnbmb', 'BSIS', '1st', '2nd', '1st', 'sa', 'no', '43518826_283724755684065_8084309214891081728_n.jpg', '42271823_707522979610760_1049507629946109952_n.jpg', '42326727_479762309207479_2854637742564835328_n.jpg', '42299124_299482420645407_7723561777690050560_n.jpg', '', '42231117_240666696621662_7481580562864406528_n.jpg', '464340cf24b015d4d0609873fb9ce0cb.jpg'),
(43, '15-1239', 'Roanne', 'sds', 'Capule', 'dsd', '1987-02-09', '20', 'Female', '174 Sevilla St', 'da', 'Malolos', 'Bulacan', '3000', 'da', 'roanne.capule21@gmail.com', 'ad', 'nbm', 'nbn', 'bmnb', 'bnbmb', 'BSIS', '1st', '2nd', '1st', 'sa', 'no', '43518826_283724755684065_8084309214891081728_n.jpg', '42271823_707522979610760_1049507629946109952_n.jpg', '42326727_479762309207479_2854637742564835328_n.jpg', '42299124_299482420645407_7723561777690050560_n.jpg', '', '42231117_240666696621662_7481580562864406528_n.jpg', '464340cf24b015d4d0609873fb9ce0cb.jpg'),
(44, '15-1239', 'Roanne', 'sds', 'Capule', 'dsd', '1987-02-09', '20', 'Female', '174 Sevilla St', 'da', 'Malolos', 'Bulacan', '3000', 'da', 'roanne.capule21@gmail.com', 'ad', 'nbm', 'nbn', 'bmnb', 'bnbmb', 'BSIS', '1st', '2nd', '1st', 'sa', 'no', '43518826_283724755684065_8084309214891081728_n.jpg', '42271823_707522979610760_1049507629946109952_n.jpg', '42326727_479762309207479_2854637742564835328_n.jpg', '42299124_299482420645407_7723561777690050560_n.jpg', '', '42231117_240666696621662_7481580562864406528_n.jpg', '464340cf24b015d4d0609873fb9ce0cb.jpg'),
(45, '15-1239', 'Roanne', 'Tancinco', 'Capule', 'Veronica', '1998-02-07', '20', 'Female', '174 Sevilla St', 'Atlag', 'Malolos', 'Bulacan', '3000', '09356701894', 'roanne.capule21@gmail.com', 'Robert Capule', 'Carpenter', 'Marianne Capule', 'MR Staff', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42271823_707522979610760_1049507629946109952_n.jpg', '42294791_2107882232555273_9165986429057105920_n.jpg', '42317160_2061833713910600_928130295088021504_n.jpg', '40025448_469940686853740_7826653963595284480_n.jpg', '42363889_694863614209128_5421006480042098688_n.jpg', '42363868_261728937811892_1645434063093235712_n.jpg', '42271823_707522979610760_1049507629946109952_n.jpg'),
(46, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(47, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(48, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(49, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(50, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(51, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(52, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(53, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(54, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(55, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(56, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(57, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(58, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(59, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(60, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(61, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(62, '15-1780', 'Marc Jherico', 'Raymundo', 'Sumilang', '', '1998-02-06', '20', 'Male', 'Sumapa', 'Guinhawa', 'Malolos', 'Bulacan', '3000', '09067612358', 'jhericosumilang@gmail.com', 'Ricky Sumilang', 'IT Head', 'Marian Sumilang', 'Web Developer', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'no', '42363889_694863614209128_5421006480042098688_n.jpg', '42317168_690414584671347_684710876103573504_n.jpg', '42263772_1801547683227784_1915067716184571904_n.jpg', '42288318_302755170520942_1298618851260366848_n.jpg', '42858969_2307135119522677_6055306229775859712_n.jpg', '42919993_304150770420919_2670113732641685504_n.jpg', '42303391_2121615771191121_5425977200312582144_n.jpg'),
(63, '11-4568', 'Maria Shaina', 'Del Rosario', 'Tancinco', '', '1998-02-02', '17', 'Female', '049', 'Partida', 'Norzagaray', 'Bulacan', '3000', '09559371682', 'mariashainatancinco@gmail.com', 'None', 'None', 'Sharon Tancinco', 'Businesswoman', 'Single', 'BTVTED', '2nd', 'B', '2nd', '2018-2019', 'no', '42317168_690414584671347_684710876103573504_n.jpg', '42266858_484672632052433_3242649164009439232_n.jpg', '42276765_452730805218196_5937610897366188032_n.jpg', '42311017_1066114336880918_1245404760513708032_n.jpg', '40973651_231416237534672_9088646428972023808_n.jpg', '43083463_2247432978879743_2402186714870185984_n.jpg', '42419083_1861725877209518_8640489973436383232_n.jpg'),
(64, '15-1198', 'Charlotte', 'Paraiso', 'Dumancas', '', '1998-04-19', '20', 'Female', '177', 'Calero', 'Malolos', 'Bulacan', '3000', '09558565829', 'charlottedumancas@gmai.com', 'Dante Dumancas', 'Construction Worker', 'Carlota Dumancas', 'Deceased', 'Single', 'ACT', '1st', 'A', '1st', '2018-2019', 'no', '44146384_2433286123371486_3055001149494001664_n.jpg', '43160938_10156185390412961_7332393808685957120_n.jpg', '43487598_10156373931816620_282974865189765120_n.jpg', '43160938_10156185390412961_7332393808685957120_n.jpg', '43487598_10156373931816620_282974865189765120_n.jpg', '44146384_2433286123371486_3055001149494001664_n.jpg', '43487598_10156373931816620_282974865189765120_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `osams_tuition`
--

CREATE TABLE `osams_tuition` (
  `tf_id` int(11) NOT NULL,
  `tf_course` varchar(255) NOT NULL,
  `tf_amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `osams_about`
--
ALTER TABLE `osams_about`
  ADD PRIMARY KEY (`abt_id`);

--
-- Indexes for table `osams_admin`
--
ALTER TABLE `osams_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `osams_announcement`
--
ALTER TABLE `osams_announcement`
  ADD PRIMARY KEY (`announce_id`);

--
-- Indexes for table `osams_course`
--
ALTER TABLE `osams_course`
  ADD PRIMARY KEY (`crs_id`);

--
-- Indexes for table `osams_developers`
--
ALTER TABLE `osams_developers`
  ADD PRIMARY KEY (`dev_id`);

--
-- Indexes for table `osams_gallery`
--
ALTER TABLE `osams_gallery`
  ADD PRIMARY KEY (`pic_id`);

--
-- Indexes for table `osams_member`
--
ALTER TABLE `osams_member`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `osams_scholars`
--
ALTER TABLE `osams_scholars`
  ADD PRIMARY KEY (`sch_no`);

--
-- Indexes for table `osams_tuition`
--
ALTER TABLE `osams_tuition`
  ADD PRIMARY KEY (`tf_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `osams_about`
--
ALTER TABLE `osams_about`
  MODIFY `abt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `osams_admin`
--
ALTER TABLE `osams_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `osams_announcement`
--
ALTER TABLE `osams_announcement`
  MODIFY `announce_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `osams_course`
--
ALTER TABLE `osams_course`
  MODIFY `crs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `osams_developers`
--
ALTER TABLE `osams_developers`
  MODIFY `dev_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `osams_gallery`
--
ALTER TABLE `osams_gallery`
  MODIFY `pic_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `osams_member`
--
ALTER TABLE `osams_member`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `osams_scholars`
--
ALTER TABLE `osams_scholars`
  MODIFY `sch_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `osams_tuition`
--
ALTER TABLE `osams_tuition`
  MODIFY `tf_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
