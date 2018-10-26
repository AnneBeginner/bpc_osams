-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2018 at 08:51 AM
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
-- Table structure for table `osams_brgy`
--

CREATE TABLE `osams_brgy` (
  `brgy_id` int(11) NOT NULL,
  `muni_id` varchar(255) NOT NULL,
  `brgy_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osams_brgy`
--

INSERT INTO `osams_brgy` (`brgy_id`, `muni_id`, `brgy_name`) VALUES
(1, '1', 'Banaban'),
(2, '1', 'Baybay'),
(3, '1', 'Binagbag'),
(4, '1', 'Donacion'),
(5, '1', 'Encanto'),
(6, '1', 'Laog'),
(7, '1', 'Marungko'),
(8, '1', 'Niugan'),
(9, '1', 'Paltok'),
(10, '1', 'Pulong Yantok'),
(11, '1', 'San Roque (formerly Poblacion)'),
(12, '1', ' Santa Cruz (formerly Poblacion)'),
(13, '1', 'Santa Lucia'),
(14, '1', 'Santo Cristo'),
(15, '1', 'Sulucan'),
(16, '1', 'Taboc'),
(17, '2', 'Borol 1st'),
(18, '2', 'Borol 2nd'),
(19, '2', 'Dalig'),
(20, '2', ' Longos'),
(21, '2', ' Panginay'),
(22, '2', 'Pulong Gubat'),
(23, '2', 'San Juan'),
(24, '2', 'Santol'),
(25, '2', 'Wawa (formerly Poblacion)'),
(26, '3', 'Bagumbayan'),
(27, '3', 'Balubad'),
(28, '3', 'Bambang'),
(29, '3', 'Matungao'),
(30, '3', 'Maysantol'),
(31, '3', 'Perez'),
(32, '3', 'Pitpitan'),
(33, '3', 'San Francisco'),
(34, '3', 'San Jose (formerly Poblacion)'),
(35, '3', 'San Nicolas'),
(36, '3', 'Santa Ana'),
(37, '3', 'Santa Ines'),
(38, '3', 'Taliptip'),
(39, '3', 'Tibig'),
(40, '4', 'Bagong Nayon'),
(41, '4', 'Barangca'),
(42, '4', 'Calantipay'),
(43, '4', 'Catulinan'),
(44, '4', 'Concepcion'),
(45, '4', 'Hinukay'),
(46, '4', 'Makinabang'),
(47, '4', 'Matangtubig'),
(48, '4', 'Pagala'),
(49, '4', 'Paitan'),
(50, '4', 'Piel'),
(51, '4', 'Pinagbarilan'),
(52, '4', 'Poblacion'),
(53, '4', 'Sabang'),
(54, '4', 'San Jose'),
(55, '4', 'San Roque'),
(56, '4', 'Santa Barbara'),
(57, '4', ' Santo Cristo'),
(58, '4', 'anto Niño'),
(59, '4', 'Subic'),
(60, '4', 'Sulivan'),
(61, '4', 'Tangos'),
(62, '4', 'Tarcan'),
(63, '4', 'Tiaong'),
(64, '4', 'Tibag'),
(65, '4', 'Tilapayong'),
(66, '4', 'Virgen delos Flores\r\n'),
(67, '5', 'Antipona'),
(68, '5', 'Bagumbayan'),
(69, '5', 'Bambang'),
(70, '5', 'Batia'),
(71, '5', 'Binang 1st'),
(72, '5', 'Binang 2nd'),
(73, '5', 'Bolacan'),
(74, '5', 'Bundukan'),
(75, '5', 'Bunlo'),
(76, '5', 'Caingin'),
(77, '5', 'Duhat'),
(78, '5', 'Igulot'),
(79, '5', 'Lolomboy'),
(80, '5', 'Poblacion'),
(81, '5', 'Sulucan'),
(82, '5', 'Taal'),
(83, '5', 'Tambobong'),
(84, '5', 'Turo'),
(85, '5', 'Wakas'),
(86, '6', ' Bonga Mayor'),
(87, '6', ' Bonga Menor'),
(88, '6', 'Buisan'),
(89, '6', 'Camachilihan'),
(90, '6', 'Cambaog'),
(91, '6', 'Catacte'),
(92, '6', 'Liciada'),
(93, '6', 'Malamig'),
(94, '6', 'Malawak'),
(95, '6', 'Poblacion'),
(96, '6', 'San Pedro'),
(97, '6', 'Talampas'),
(98, '6', 'Tanawan'),
(99, '6', 'Tibagan'),
(100, '7', 'Balite'),
(101, '7', 'Balungao'),
(102, '7', 'Buguion'),
(103, '7', 'Bulusan'),
(104, '7', 'Calizon'),
(105, '7', 'Calumpang'),
(106, '7', 'Caniogan'),
(107, '7', 'Corazon'),
(108, '7', 'Frances'),
(109, '7', 'Gatbuca'),
(110, '7', 'Gugo'),
(111, '7', 'Iba Este'),
(112, '7', 'Iba O’ Este'),
(113, '7', 'Longos'),
(114, '7', 'Meysulao'),
(115, '7', 'Meyto'),
(116, '7', ' Palimbang'),
(117, '7', 'Panducot'),
(118, '7', 'Pio Cruzcosa'),
(119, '7', ' Poblacion'),
(120, '7', 'Pungo'),
(121, '7', 'San Jose'),
(122, '7', 'San Marcos'),
(123, '7', 'San Miguel'),
(124, '7', 'Santa Lucia'),
(125, '7', ' Santo Niño'),
(126, '7', 'Sapang Bayan'),
(127, '7', 'Sergio Bayan'),
(128, '7', ' Sucol'),
(129, '8', 'Bayabas'),
(130, '8', 'Camachile'),
(131, '8', 'Camachin'),
(132, '8', 'Kabayunan'),
(133, '8', 'Kalawakan'),
(134, '8', 'Pulong Sampalok'),
(135, '8', ' Sapang Bulak'),
(136, '8', 'Talbak'),
(137, '9', 'Cutcut'),
(138, '9', 'Daungan'),
(139, '9', 'Ilang-ilang'),
(140, '9', 'Malis'),
(141, '9', 'Panginay'),
(142, '9', 'Poblacion'),
(143, '9', 'Pritil'),
(144, '9', 'Pulong Gubat'),
(145, '9', 'Santa Cruz'),
(146, '9', 'Santa Rita'),
(147, '9', 'Tabang'),
(148, '9', 'Tabe'),
(149, '9', 'Tiaong'),
(150, '9', 'Tuktukan'),
(151, '10', 'Abulalas'),
(152, '10', 'Carillo'),
(153, '10', 'Iba'),
(154, '10', 'Iba-Ibayo'),
(155, '10', 'Mercado'),
(156, '10', 'Palapat'),
(157, '10', 'Pugad'),
(158, '10', 'Sagrada Familia'),
(159, '10', 'San Agustin'),
(160, '10', 'San Isidro'),
(161, '10', 'San Jose'),
(162, '10', 'San Juan'),
(163, '10', 'San Miguel'),
(164, '10', 'San Nicolas'),
(165, '10', 'San Pablo'),
(166, '10', 'San Pascual'),
(167, '10', 'San Pedro'),
(168, '10', 'San Roque'),
(169, '10', 'San Sebastian'),
(170, '10', 'Santa Cruz'),
(171, '10', 'Santa Elena'),
(172, '10', 'Santa Monica'),
(173, '10', 'Santo Niño (formerly Poblacion)'),
(174, '10', 'Santo Rosario'),
(175, '10', 'Tampok'),
(176, '10', 'Tibaguin'),
(177, '11', 'Anilao'),
(178, '11', 'Atlag'),
(179, '11', 'Babatnin'),
(180, '11', 'Bagna'),
(181, '11', 'Bagong Bayan'),
(182, '11', 'Balayong'),
(183, '11', 'Balite'),
(184, '11', 'Bangkal'),
(185, '11', 'Barihan'),
(186, '11', 'Bulihan'),
(187, '11', 'Bungahan'),
(188, '11', 'Caingin'),
(189, '11', 'Calero'),
(190, '11', 'Caliligawan'),
(191, '11', 'Canalate'),
(192, '11', 'Caniogan'),
(193, '11', 'Catmon'),
(194, '11', 'Cofradia'),
(195, '11', 'Dakila'),
(196, '11', 'Guinhawa'),
(197, '11', 'Liang'),
(198, '11', 'Ligas'),
(199, '11', 'Longos'),
(200, '11', 'Look 1st'),
(201, '11', 'Look 2nd'),
(202, '11', 'Lugam'),
(203, '11', 'Mabolo'),
(204, '11', 'Mambog'),
(205, '11', 'Masile'),
(206, '11', 'Matimbo'),
(207, '11', 'Mojon'),
(208, '11', 'Namayan'),
(209, '11', 'Niugan'),
(210, '11', 'Pamarawan'),
(211, '11', 'Panasahan'),
(212, '11', 'Pinagbakahan'),
(213, '11', 'San Agustin'),
(214, '11', 'San Gabrie'),
(215, '11', 'San Juan'),
(216, '11', 'San Pablo'),
(217, '11', 'San Vicente (formerly Poblacion)'),
(218, '11', 'Santiago'),
(219, '11', 'Santisima Trinidad'),
(220, '11', 'Santo Cristo'),
(221, '11', 'Santo Niño (formerly Poblacion)'),
(222, '11', 'Santo Rosario (formerly Poblacion)'),
(223, '11', 'Santor'),
(224, '11', 'Sumapang Bata'),
(225, '11', 'Sumapang Matanda'),
(226, '11', 'Taal'),
(227, '11', 'Tikay'),
(228, '12', 'Abangan Norte'),
(229, '12', 'Abangan Sur'),
(230, '12', 'Ibayo'),
(231, '12', 'Lambakin'),
(232, '12', 'Lias'),
(233, '12', 'Loma de Gato'),
(234, '12', 'Nagbalon'),
(235, '12', 'Patubig'),
(236, '12', 'Poblacion 1st'),
(237, '12', 'Poblacion 2nd'),
(238, '12', 'Prenza 1st'),
(239, '12', 'Prenza 2nd'),
(240, '12', 'Santa Rosa 1st'),
(241, '12', 'Santa Rosa 2nd'),
(242, '12', 'Saog'),
(243, '12', 'Tabing-ilog'),
(244, '13', 'Bagbaguin'),
(245, '13', 'Bahay Pare'),
(246, '13', 'Bancal'),
(247, '13', 'Banga'),
(248, '13', 'Bayugo'),
(249, '13', 'Caingin'),
(250, '13', 'Calvario'),
(251, '13', 'Camalig'),
(252, '13', 'Hulo'),
(253, '13', 'Iba'),
(254, '13', 'Langka'),
(255, '13', 'Lawa'),
(256, '13', 'Libtong'),
(257, '13', 'Liputan'),
(258, '13', 'Longos'),
(259, '13', 'Malhacan'),
(260, '13', 'Pajo'),
(261, '13', 'Pandayan'),
(262, '13', 'Pantoc'),
(263, '13', 'Perez'),
(264, '13', 'Poblacion'),
(265, '13', 'Saint Francis'),
(266, '13', 'Saluysoy'),
(267, '13', 'Tugatog'),
(268, '13', 'Ubihan'),
(269, '13', 'Zamora'),
(270, '14', 'Bangkal'),
(271, '14', 'Baraka'),
(272, '14', 'Bigte'),
(273, '14', 'Bitungol'),
(274, '14', 'Friendship Village Resources'),
(275, '14', 'Matictic'),
(276, '14', 'Minuyan'),
(277, '14', 'Partida'),
(278, '14', 'Pinagtulayan'),
(279, '14', 'Poblacion'),
(280, '14', 'San Lorenzo'),
(281, '14', 'San Mateo'),
(282, '14', 'Tigbe'),
(283, '15', 'Binuangan'),
(284, '15', 'Catanghalan'),
(285, '15', 'Hulo'),
(286, '15', 'Lawa'),
(287, '15', 'Paco'),
(288, '15', 'Pag-asa (formerly Poblacion)'),
(289, '15', 'Paliwas'),
(290, '15', 'Panghulo'),
(291, '15', 'Salambao'),
(292, '15', 'San Pascual'),
(293, '15', 'Tawiran'),
(294, '16', 'Bagong Barrio'),
(295, '16', 'Baka-Bakahan'),
(296, '16', 'Bagbaguin'),
(297, '16', 'Bunsuran 1st'),
(298, '16', 'Bunsuran 2nd'),
(299, '16', 'Bunsuran 3rd'),
(300, '16', 'Cacarong Bata'),
(301, '16', 'Cacarong Matanda'),
(302, '16', 'Cupang'),
(303, '16', 'Malibong Bata'),
(304, '16', 'Malibong Matanda'),
(305, '16', 'Manatal'),
(306, '16', 'Mapulang Lupa'),
(307, '16', 'Masagana'),
(308, '16', 'Masuso'),
(309, '16', 'Pinagkuartelan'),
(310, '16', 'Poblacion'),
(311, '16', 'Real de Cacarong'),
(312, '16', 'San Roque'),
(313, '16', 'Santo Niño'),
(314, '16', 'Siling Bata'),
(315, '16', 'Siling Matanda'),
(316, '17', 'Binakod'),
(317, '17', 'Kapitangan'),
(318, '17', 'Malumot'),
(319, '17', 'Masukol'),
(320, '17', 'Pinalagdan'),
(321, '17', 'Poblacion'),
(322, '17', 'San Isidro 1st'),
(323, '17', 'San Isidro 2nd'),
(324, '17', 'San Jose'),
(325, '17', 'San Roque'),
(326, '17', 'San Vicente'),
(327, '17', 'Santa Cruz'),
(328, '17', 'Santo Niño'),
(329, '17', 'Santo Rosario'),
(330, '18', 'Agnaya'),
(331, '18', 'Bagong Silang'),
(332, '18', 'Banga 1s'),
(333, '18', 'Banga 2nd'),
(334, '18', 'Bintog'),
(335, '18', 'Bulihan'),
(336, '18', 'Culianin'),
(337, '18', 'Dampol'),
(338, '18', 'Lagundi'),
(339, '18', 'Lalangan'),
(340, '18', 'Lumang Bayan'),
(341, '18', 'Parulan'),
(342, '18', 'Poblacion'),
(343, '18', 'Rueda'),
(344, '18', 'San Jose'),
(345, '18', 'Santa Ines'),
(346, '18', 'Santo Niño'),
(347, '18', 'Sipat'),
(348, '18', 'Tabang'),
(349, '19', 'Balatong A'),
(350, '19', 'Balatong B'),
(351, '19', 'Cutcot'),
(352, '19', 'dampol 1st'),
(353, '19', 'dampol 2nd - A'),
(354, '19', 'dampol 2nd - B'),
(355, '19', 'Dulong Malabon'),
(356, '19', 'Inaon'),
(357, '19', 'Longos'),
(358, '19', 'Lumbac'),
(359, '19', 'Paltao'),
(360, '19', 'Penabatan'),
(361, '19', 'Poblacion'),
(362, '19', 'Santo Cristo'),
(363, '19', 'Taal'),
(364, '19', 'Talbon'),
(365, '19', 'Tenejeros'),
(366, '19', 'Tibag'),
(367, '20', 'Akle'),
(368, '20', 'Algao'),
(369, '20', 'Aryatam'),
(370, '20', 'Baggong Barrio'),
(371, '20', 'Basuit'),
(372, '20', 'Bubulong Malaki'),
(373, '20', 'Bubulong Munti'),
(374, '20 ', 'Buhol na Mangga'),
(375, '20', 'Bulusukan'),
(376, '20', 'Calasag'),
(377, '20', 'Calawitan'),
(378, '20', 'Casalat'),
(379, '20', 'Gabihan'),
(380, '20', 'Garlang'),
(381, '20', 'Lapnit'),
(382, '20', 'Maasim'),
(383, '20', 'Makapilapil'),
(384, '20', 'Malipampang'),
(385, '20', 'Mataas na Parang'),
(386, '20', 'Matibumbong'),
(387, '20', 'Nabaong Garlang'),
(388, '20', 'Palapala'),
(389, '20', 'Pasong Bangkal'),
(390, '20', 'Pinaod'),
(391, '20', 'Poblacion'),
(392, '20', 'Pulong Tamo'),
(393, '20', 'San Juan'),
(394, '20', 'Santa Catalina Bata'),
(395, '20', 'Santa Catalina Matanda'),
(396, '20', 'Sapang Dayap'),
(397, '20', 'Sapang Putik'),
(398, '20', 'Sapang Putol'),
(399, '20', 'Sumandig'),
(400, '20', 'Telapatio'),
(401, '20', 'Umpucan'),
(402, '20', 'Upig'),
(403, '21', 'Bagong Pag-asa'),
(404, '21', 'Bagong Sialng'),
(405, '21', 'Balong'),
(406, '21', 'Balite'),
(407, '21', 'Bantog'),
(408, '21', 'Bardias'),
(409, '21', 'Baritan'),
(410, '21', 'Batasan Bata'),
(411, '21', 'Batasan Matanda'),
(412, '21', 'Biak na Bato'),
(413, '21', 'Biclat'),
(414, '21', 'buga'),
(415, '21', 'Buliran'),
(416, '21', 'Bulualto'),
(417, '21', 'Calumpang'),
(418, '21', 'Cambio'),
(419, '21', 'Camias'),
(420, '21', 'Ilong-Bulo'),
(421, '21', 'King Kabayo'),
(422, '21', 'Labne'),
(423, '21', 'Lambakin'),
(424, '21', 'Magmarale'),
(425, '21', 'Malibay'),
(426, '21', 'Maligaya'),
(427, '21', 'Mandile'),
(428, '21', 'Masapilit'),
(429, '21', 'Pacalag'),
(430, '21', 'Paliwasan'),
(431, '21', 'Partida'),
(432, '21', 'Pinambaran'),
(433, '21', 'Poblacion'),
(434, '21', 'Pulong Bayabas'),
(435, '21', 'Pulong Duhat'),
(436, '21', 'Sacdalan'),
(437, '21', 'Salacot'),
(438, '21', 'Salangan'),
(439, '21', 'San Agustin'),
(440, '21', 'San Jose'),
(441, '21', 'San Juan'),
(442, '21', 'San Vicente'),
(443, '21', 'Santa Ines'),
(444, '21', 'Santa Lucia'),
(445, '21', 'Santa Rita Bata'),
(446, '21', 'Santa Rita Matanda'),
(447, '21', 'Sapang'),
(448, '21', 'Sibul'),
(449, '21', 'Tartaro'),
(450, '21', 'Tigasan'),
(451, '21', 'Tigpalas'),
(452, '22', 'Assumption'),
(453, '22', 'Bagong Buhay'),
(454, '22', 'Bagong Buhay II'),
(455, '22', 'Bagong Buhay III'),
(456, '22', 'Citrus'),
(457, '22', 'Ciuda Real'),
(458, '22', 'Dulong Bayan'),
(459, '22', 'Fatima'),
(460, '22', 'Fatima II'),
(461, '22 ', 'Fatima III'),
(462, '22', 'Fatima IV'),
(463, '22', 'Fatima V'),
(464, '22', 'Francisco Homes - Guijo'),
(465, '22', 'Francisco Homes - Mulawin'),
(466, '22', 'Francisco Homes - Narra'),
(467, '22', 'Francisco Homes - Yakal'),
(468, '22', 'Gaya-Gaya'),
(469, '22', 'Graceville'),
(470, '22', 'Gumaoc Central'),
(471, '22', 'Gumaoc East'),
(472, '22', 'Gumaoc Weast'),
(473, '22', 'Kaybanban'),
(474, '22', 'Kaypian'),
(475, '22', 'Lawang Pari'),
(476, '22', 'Maharlika'),
(477, '22', 'Minuyan'),
(478, '22', 'Minuyan II'),
(479, '22', 'Minuyan III'),
(480, '22', 'Minuyan IV'),
(481, '22', 'Minuyan Proper'),
(482, '22', 'Minuyan V'),
(483, '22', 'Muzon'),
(484, '22', 'Paradise III'),
(485, '22', 'Poblacion'),
(486, '22', 'Poblacion I'),
(487, '22', 'Saint Martin de Porres'),
(488, '22', 'San Isidro'),
(489, '22', 'San Manuel'),
(490, '22', 'San Martin'),
(491, '22', 'San Martin II'),
(492, '22', 'San Martin III'),
(493, '22', 'San Martin IV'),
(494, '22', 'San Martin V'),
(495, '22', 'San Roque'),
(496, '22', 'Santa Cruz '),
(497, '22', 'Santa Cruz  II'),
(498, '22', 'Santa Cruz III'),
(499, '22', 'Santa Cruz IV'),
(500, '22', 'Santa Cruz  V'),
(501, '22', 'Santo Cristo'),
(502, '22', 'Santo Niño'),
(503, '22', 'Santo Niño II'),
(504, '22', 'Sapang Palay'),
(505, '22', 'Tungkong Mangga'),
(506, '23', 'Babaguin'),
(507, '23', 'Balasing'),
(508, '23', 'Bluenavista'),
(509, '23', 'Bulac'),
(510, '23', 'Camangyanan'),
(511, '23', 'Catmon'),
(512, '23', 'Cay Pombo'),
(513, '23', 'Cayio'),
(514, '23', 'Guyong'),
(515, '23', 'Lalakhan'),
(516, '23', 'Mag-asawang Sapa'),
(517, '23', 'Mahabang PArang'),
(518, '23', 'MAnggahan'),
(519, '23', 'Parada'),
(520, '23', 'Poblacion'),
(521, '23', 'Pulong Buhangin'),
(522, '23', 'San Gabriel'),
(523, '23', 'San Jose Patag'),
(524, '23', 'San Vicente'),
(525, '23', 'Santa Clara'),
(526, '23', 'Santa Cruz'),
(527, '23', 'Silangan'),
(528, '23', 'Tabing Bakod'),
(529, '23', 'Tumana'),
(530, '24', 'Banca-Banca'),
(531, '24', 'BMA- Balagtas'),
(532, '24', 'Caingin'),
(533, '24', 'Coral na Bato'),
(534, '24', 'Cruz na Daan'),
(535, '24', 'Dapat - Dagatan'),
(536, '24', 'Diliman I'),
(537, '24', 'Diliman II'),
(538, '24', 'Libis '),
(539, '24', 'Lico'),
(540, '24', 'Maasim'),
(541, '24', 'Mabalas-Balas'),
(542, '24', 'Maguinao'),
(543, '24', 'Maronquillo'),
(544, '24', 'Pcao'),
(545, '24', 'Pansumaloc'),
(546, '24', 'Pantubig'),
(547, '24', 'Pasong Bangkal'),
(548, '24', 'Pasong Callos'),
(549, '24', 'Pasong Instsik'),
(550, '24', 'Pinacpinacan'),
(551, '24', 'Poblacion'),
(552, '24', 'Pulo'),
(553, '24', 'Pulong Bayabas'),
(554, '24', 'Salapungan'),
(555, '24', 'Sampaloc'),
(556, '24', 'San Agustin'),
(557, '24', 'San Roque'),
(558, '24', 'Sapang Pahalang'),
(559, '24', 'Talacsan'),
(560, '24', 'Tambubong'),
(561, '24', 'Tukod'),
(562, '24', 'Uligao'),
(563, '25', 'Agapito del Rosario'),
(564, '25', 'Amsic'),
(565, '25', 'Anunas'),
(566, '25', 'Balibago'),
(567, '25', 'Capaya'),
(568, '25', 'Claro M. Recto'),
(569, '25', 'Cuayan'),
(570, '25', 'Cutcut'),
(571, '25', 'Cutud'),
(572, '25', 'Lourdes Northwest'),
(573, '25', 'Lourdes Sur (Takimundoc)'),
(574, '25', 'Lourdes Sur East'),
(575, '25', 'Malabañas'),
(576, '25', 'Margot'),
(577, '25', 'Ninoy Aquino (Marisol)'),
(578, '25', 'Mining'),
(579, '25', 'Pampang'),
(580, '25', 'Pulungbulu'),
(581, '25', 'PulungCatutud'),
(582, '25 ', 'PulungMaragul'),
(583, '25', 'Salapungan'),
(584, '25', 'San Jose'),
(585, '25', 'San Nicolas'),
(586, '25', 'Santa Trinidad'),
(587, '25', 'Santo Domingo'),
(588, '25', 'Santo Rosario (Poblacion)'),
(589, '25', 'Sapalibutad'),
(590, '25', 'Sapangbato'),
(591, '25', 'Tabun'),
(592, '25', 'Virgen Delos Remedios'),
(593, '26', 'Balucuc'),
(594, '26', 'Calantipe'),
(595, '26', 'Cansinala'),
(596, '26', 'Capalangan'),
(597, '26', 'Colgante'),
(598, '26', 'Paligui'),
(599, '26', 'Sampaloc'),
(600, '26', 'San Juan'),
(601, '26', 'San Vicente'),
(602, '26', 'Sucad'),
(603, '26', 'Sulipan'),
(604, '26', 'Tabuyuc'),
(605, '27', 'Arenas'),
(606, '27', 'Baliti'),
(607, '27', 'Batasan'),
(608, '27', 'Buensuceso'),
(609, '27', 'Candatin'),
(610, '27', 'Cupang (Santa Lucia)'),
(611, '27', 'Laz Paz (Turu)'),
(612, '27', 'Lacmit'),
(613, '27', 'Lacquios'),
(614, '27', 'Mangga-Cacutud'),
(615, '27', 'Matamo (Santa Lucia)'),
(616, '27', 'Panlinlang'),
(617, '27', 'Paralaya'),
(618, '27', 'Palazang Luma'),
(619, '27', 'Poblacion'),
(620, '27', 'San Agustin Norte'),
(621, '27', 'San Agustin Sur'),
(622, '27', 'San Antonio'),
(623, '27', 'San Jose MEsulo'),
(624, '27', 'San Juan Bano'),
(625, '27', 'San Mateo'),
(626, '27', 'San Nicolas'),
(627, '27', 'San Roque Bitas'),
(628, '27', 'Santo Niño Tabuan'),
(629, '27', 'Suclayin'),
(630, '28', 'Balas'),
(631, '28', 'Cabalantian'),
(632, '28', 'Cambangan (Pob.)'),
(633, '28', 'Cabetican'),
(634, '28', 'CAlibutbut'),
(635, '28', 'Concepcion'),
(636, '28', 'Dolores'),
(637, '28', 'Duat'),
(638, '28', 'Macabacle'),
(639, '28', 'Magliman'),
(640, '28', 'Maliwalu'),
(641, '28', 'Mesalipit'),
(642, '28', 'Parulog'),
(643, '28', 'Potrero'),
(644, '28', 'San Antonio'),
(645, '28', 'SAn Isidro'),
(646, '28', 'San Vicente'),
(647, '28', 'SAnta Barbara'),
(648, '28', 'Santa Ines'),
(649, '28', 'Talba'),
(650, '28', 'Tinajero'),
(651, '29', 'Bahay Pare'),
(652, '29', 'Bambang'),
(653, '29', 'Barngca'),
(654, '29', 'Barit'),
(655, '29', 'Buas (Prob.)'),
(656, '29', 'Cuayanan Bugtong'),
(657, '29', 'Dalayap'),
(658, '29', 'Gulap'),
(659, '29', 'Lanang'),
(660, '29', 'Lourdes'),
(661, '29', 'Magumbali'),
(662, '29', 'Mapaniquil'),
(663, '29', 'Paligui'),
(664, '29', 'Pangclara'),
(665, '29', 'Pansinao'),
(666, '29', 'PAralaya(Prob.)'),
(667, '29', 'Pulong Gubat'),
(668, '29', 'Pulong Palazan'),
(669, '29', '(San Agustin (Prob.)'),
(670, '29', 'Santo Rosario'),
(671, '29', 'Tagulod'),
(672, '29', 'Talang'),
(673, '29', 'Tenejero'),
(674, '29', 'Vizal San PAblo'),
(675, '29', 'Vizal Santo Cristo'),
(676, '29', 'Vizal Santo Niño'),
(677, '30', 'Anon'),
(678, '30', 'Apalit'),
(679, '30', 'Basa Air Base'),
(680, '30', 'Benedecto'),
(681, '30', 'Bodega'),
(682, '30', 'Cabangcalan'),
(683, '30', 'Calantas'),
(684, '30', 'Carmencita'),
(685, '30', 'Consuelo'),
(686, '30', 'Dampe'),
(687, '30', 'Del Carmen'),
(688, '30', 'Fortuna'),
(689, '30 ', 'Gutad'),
(690, '30', 'Mabical'),
(691, '30', 'Malabo'),
(692, '30', 'Maligaya'),
(693, '30', 'Mawacat'),
(694, '30', 'Nabuclod'),
(695, '30', 'Pabanlag'),
(696, '30', 'PAguiruan'),
(697, '30', 'Palamayo'),
(698, '30', 'Pandaguring'),
(699, '30', 'Poblacion'),
(700, '30', 'San Antonio'),
(701, '30', 'San Isidro'),
(702, '30', 'San Jose'),
(703, '30', 'San Nicolas'),
(704, '30', 'San Pedro'),
(705, '30', 'San Ramon'),
(706, '30', 'Santa Monica'),
(707, '30', 'Solib'),
(708, '31', 'Bancal'),
(709, '31', 'Jose Abad Santos (Siran)'),
(710, '31', 'Lambac'),
(711, '31', 'Magsakay'),
(712, '31', 'MAquiapo'),
(713, '31', 'Natividad'),
(714, '31', 'Plaza Burgos (Prob.)'),
(715, '31', 'Pulungmasle'),
(716, '31', 'Rizal'),
(717, '31', 'San Agustin'),
(718, '31', 'San Antonio'),
(719, '31', 'San Isidro'),
(720, '31', 'San Jose'),
(721, '31', 'San Juan'),
(722, '31', 'San Juan Bautista'),
(723, '31', 'San Juan Nepomuceno'),
(724, '31', 'San Matias'),
(725, '31', 'San Miguel (Betis)'),
(726, '31', 'San Nicolas 1st'),
(727, '31', 'San Nicolas 2nd'),
(728, '31', 'San PAblo'),
(729, '31', 'San PEdo'),
(730, '31', 'San Rafael (Duck Island)'),
(731, '31', 'San Roque'),
(732, '31', 'San Vicente (Ibus)'),
(733, '31', 'Santa Filomena (Prob.)'),
(734, '31', 'Santa Ines'),
(735, '31', 'Santa Ursula'),
(736, '31', 'Santo Cristo'),
(737, '31', 'Santo Niño (Prob.)'),
(738, '32', 'Balantacan'),
(739, '32', 'Bancal Pugad'),
(740, '32', 'Bancal Sinubli'),
(741, '32', 'Baruya (San Rafael)'),
(742, '32', 'Calangain'),
(743, '32', 'Concepcion'),
(744, '32', 'De La Paz'),
(745, '32', ' Del Carmen'),
(746, '32', 'Don Ignacio Dismson'),
(747, '32', 'Lourdes (Lauc Pau)'),
(748, '32', 'Prado Siongco'),
(749, '32', 'Remedios'),
(750, '32', 'San Agustin'),
(751, '32', 'San Antonio'),
(752, '32', 'San Francisco'),
(753, '32', 'San Isidro'),
(754, '32', 'San Jose Apunan'),
(755, '32', 'San Jose Gumi'),
(756, '32', 'San Juan (Prob.)'),
(757, '32', 'San Nicolas 1st (Prob.)'),
(758, '32', 'San Nicolas 2nd '),
(759, '32', 'San Pablo 1st'),
(760, '32', 'SAn Pablo 2nd'),
(761, '32', 'San Pedro Palcarangan'),
(762, '32', 'San Pedro Saug'),
(763, '32', 'San Roque Arbol'),
(764, '32', 'San Roque Dau'),
(765, '32', 'San Vicente'),
(766, '32', 'Santa Barbara'),
(767, '32', 'Santa Catalina'),
(768, '32', 'Santa Cruz'),
(769, '32', 'Santa Lucia (Prob.)'),
(770, '32', 'Santa Maria'),
(771, '32', 'Sata Monica'),
(772, '32', 'Santa Rita'),
(773, '32', 'Santa Teresa 1st'),
(774, '32', 'Santa Teresa 2nd'),
(775, '32', 'Santiago'),
(776, '32', 'Santiago Teresa 1st'),
(777, '32 ', 'Santiago Teresa 2nd'),
(778, '32', 'Santo Cristo'),
(779, '32', 'Santo Domingo'),
(780, '32', 'Santo Niño (Prado Aruba)'),
(781, '32', 'Santo Tomas (Prob.)'),
(782, '33', 'Atlu-Bola'),
(783, '33', 'Bical'),
(784, '33', 'Bundagul'),
(785, '33', 'Cacutud'),
(786, '33', 'Calumpang'),
(787, '33', 'Camachiles'),
(788, '33', 'Dapdap'),
(789, '33', 'Dau'),
(790, '33', 'Dolores'),
(791, '33', 'Duquit'),
(792, '33', 'Lakandula'),
(793, '33', 'MAbiga'),
(794, '33', 'MAcpapagal Village'),
(795, '33', 'Mamatitang'),
(796, '33', 'Mangalit'),
(797, '33', 'Marcos Village'),
(798, '33', 'Mawaque'),
(799, '33', 'Paralayunan'),
(800, '33', 'Poblacion'),
(801, '33', 'San Francisco'),
(802, '33', 'San Joaquin'),
(803, '33', 'Santa Ines'),
(804, '33', 'Santa Maria'),
(805, '33', 'Santo Rosario'),
(806, '33', 'Sapang Balen'),
(807, '33', 'Sapang Biabas'),
(808, '33', 'Tabun'),
(809, '34', 'Batasan'),
(810, '34', 'Caduang Tete'),
(811, '34', 'Castuli'),
(812, '34', 'Consuelo'),
(813, '34', 'Dalayap'),
(814, '34', 'Mataguiti'),
(815, '34', 'San Esteban'),
(816, '34', 'San Francisco'),
(817, '34', 'San Gabiel (Prob.)'),
(818, '34', 'San Isidro'),
(819, '34', 'San Jose'),
(820, '34', 'San Juan'),
(821, '34', 'San Rafael'),
(822, '34', 'San Roque'),
(823, '34', 'San Vicente'),
(824, '34', 'Santa Cruz (PRob.)'),
(825, '34', 'Santa Lutgarda'),
(826, '34', 'Santa Maria'),
(827, '34', 'Santa Rita (Prob.)'),
(828, '34', 'Santo Niño'),
(829, '34', 'Santo Rosario (Prob.)'),
(830, '34', 'Saplad David'),
(831, '34', 'Tacasan'),
(832, '34', 'Telacsan'),
(833, '35', 'Ayala'),
(834, '35', 'Bucanan'),
(835, '35', 'Camias'),
(836, '35', 'Dolores'),
(837, '35', 'Escaler'),
(838, '35', 'La Paz'),
(839, '35', 'Navaling'),
(840, '35', 'San Agustin'),
(841, '35', 'San Antonio'),
(842, '35', 'San Francisco'),
(843, '35', 'San Ildefonso'),
(844, '35', 'San Isidro'),
(845, '35', 'San Jose'),
(846, '35', 'San Miguel'),
(847, '35', 'San Nicolas 1st (Prob.)'),
(848, '35', 'San Nicolas 2nd '),
(849, '35', 'San Pablo (Prob.)'),
(850, '35', 'San pedro I'),
(851, '35', 'SAn  II'),
(852, '35', 'sab Roque'),
(853, '35', 'San Vicente'),
(854, '35', 'Santa Cruz (Prob.)'),
(855, '35', 'Santa Lucia'),
(856, '35', 'Santa Maria'),
(857, '35', 'Santo Niño'),
(858, '35', 'Santo Rosario'),
(859, '35', 'Turu'),
(860, '36', 'Alauli'),
(861, '36', 'Bagbag'),
(862, '36', 'Balibago'),
(863, '36', 'Bebe Anac'),
(864, '36', 'Bebe MAtua'),
(865, '36', 'Bulacus'),
(866, '36', 'Cambasi'),
(867, '36', 'Malauli'),
(868, '36', 'Nigui'),
(869, '36', 'PAlimpe'),
(870, '36', 'Puti'),
(871, '36', 'Sagrada (Tibagin)'),
(872, '36', 'San Agustin (Caingin)'),
(873, '36', 'San Isidro Anac'),
(874, '36', 'San Isidro MAtua (Prob.)'),
(875, '36', 'San Nicolas (Prob.)'),
(876, '36', 'San Pedro'),
(877, '36', 'Santa Cruz'),
(878, '36', 'Santa Lucia Anac (Prob.)'),
(879, '36', 'Santa Lucia MAtua'),
(880, '36', 'Santa Lucia PAguiba'),
(881, '36', 'Santa Lucia Wakas'),
(882, '36', 'Santa MOnica (Caingin'),
(883, '36', 'Santo Niño'),
(884, '36', 'Sapang KAwayan'),
(885, '36', 'Sua'),
(886, '37', 'Acli'),
(887, '37', 'Anao'),
(888, '37', 'Balas'),
(889, '37', 'Buenavista'),
(890, '37', 'Camuning'),
(891, '37', 'Cawayan'),
(892, '37', 'Concepcion'),
(893, '37', 'Culubasa'),
(894, '37', 'Divisoria'),
(895, '37', 'Dolores (Piring)'),
(896, '37', 'Eden'),
(897, '37', 'Gandus'),
(898, '37', 'LAgundi'),
(899, '37', 'Laput'),
(900, '37', 'Laug'),
(901, '37', 'Masamat'),
(902, '37', 'Masangsang'),
(903, '37 ', 'Nueva Victoria'),
(904, '37', 'PAndacaqui'),
(905, '37', 'pangatlan'),
(906, '37', 'Panipuan'),
(907, '37', 'Parian (Prob.)'),
(908, '37', 'Sabanila'),
(909, '37', 'San Antonio'),
(910, '37', 'SAn Carlos'),
(911, '37', 'San Jose Malino'),
(912, '37', 'San Jose MAtuwid'),
(913, '37', 'San Juan'),
(914, '37', 'San Lorenzo'),
(915, '37', 'San Miguel'),
(916, '37', 'San Nicolas'),
(917, '37', 'San Pablo'),
(918, '37', 'San Patricio'),
(919, '37', 'San Rafael'),
(920, '37', 'San Roque'),
(921, '37', 'San Vicente'),
(922, '37', 'Santa Cruz'),
(923, '37 ', 'Santa Maria'),
(924, '37', 'Santo Domingo'),
(925, '37', 'Santo Rosario'),
(926, '37', 'Sapang Maisac'),
(927, '37', 'Suclaban'),
(928, '37', 'Tangle (Tanglay)'),
(929, '39', 'Babo Pangulo'),
(930, '39', 'Babo Sacan'),
(931, '39', 'Balubad'),
(932, '39', 'Calzadang Bayu'),
(933, '39', 'Camias'),
(934, '39', 'Cangatba'),
(935, '39', 'Diaz'),
(936, '39', 'Dolores'),
(937, '39', 'Inararo'),
(938, '39', 'Jalung'),
(939, '39', 'Mancatin'),
(940, '39', 'Manibuang Libutad'),
(941, '39', 'Manibuang Paralaya'),
(942, '39', 'MAnibuag Pasig'),
(943, '39', 'Manuali'),
(944, '39', 'Mitla Proper'),
(945, '39', 'Palat'),
(946, '39', 'Pias'),
(947, '30', 'Pio'),
(948, '39', 'Planas'),
(949, '39', 'Poblacion'),
(950, '39', 'Pulong Santol'),
(951, '39', 'Salu'),
(952, '39', 'San Jose Mitla'),
(953, '39', 'Santa Cruz'),
(954, '39', 'Santa Cruz'),
(955, '39', 'Sapang Uwak '),
(956, '39', 'Sepung Bulaun'),
(957, '39', 'Sinura'),
(958, '39', 'Villa Maria'),
(959, '40', 'Alasas'),
(960, '40', 'Baliti'),
(961, '40', 'Bulaon'),
(962, '40', 'Calulut'),
(963, '40', 'Del Carmen'),
(964, '40', 'Del Pilar'),
(965, '40', 'Del Rosario'),
(966, '40', 'Dela Paz Norte'),
(967, '40', 'Dela Paz Sur'),
(968, '40 ', 'Dolores'),
(969, '40', 'Juliana'),
(970, '40', 'Lara'),
(971, '40', 'Lourdes'),
(972, '40', 'Magliman'),
(973, '40', 'Maimpis'),
(974, '40', 'Malino'),
(975, '40', 'MAlpitic'),
(976, '40', 'Pandaras'),
(977, '40', 'Panipuan'),
(978, '40', 'Quebiauan'),
(979, '40', 'Saguin'),
(980, '40', 'San Felipe'),
(981, '40', 'San Isidro'),
(982, '40', 'San Jose'),
(983, '40', ' San Nicolas'),
(984, '40', 'San Pedro'),
(985, '40', 'San Lucia'),
(986, '40', 'Santa Teresita'),
(987, '40', 'Santo Niño'),
(988, '40', 'Santo Rosario'),
(989, '40', 'Telabastagan'),
(990, '41', 'San Agustin'),
(991, '41', 'San Carlos'),
(992, '41', 'San Isidro'),
(993, '41', 'San Jose'),
(994, '41', 'San Juan'),
(995, '41', 'San Nicolas'),
(996, '41', 'San Roque'),
(997, '41', 'San Sebastian'),
(998, '41', 'Santa Catalina'),
(999, '41', 'Santa Cruz Pambilog'),
(1000, '41', 'Santa Cruz Poblacion'),
(1001, '41', 'Santa Lucia'),
(1002, '41', 'Santa Monica'),
(1003, '41', 'Santa Rita'),
(1004, '41', 'Santo Niño'),
(1005, '41', 'Santo Rosario'),
(1006, '41', 'Santo tomas'),
(1007, '42', 'Concepcion'),
(1008, '42', 'De La PAz'),
(1009, '42', 'San Agustin'),
(1010, '42', 'San Isidro'),
(1011, '42', 'San Jose'),
(1012, '42', 'San Juan'),
(1013, '42', 'San Miguel'),
(1014, '42', 'San Nicolas'),
(1015, '42', 'San Pablo libutad'),
(1016, '42', 'San Pablo PRoper'),
(1017, '42', 'San pedro'),
(1018, '42', 'Santa Cruz'),
(1019, '42', 'Santa Monica'),
(1020, '42', 'Santo Niño'),
(1021, '43', 'Batang 1st'),
(1022, '43', 'Batang 2nd'),
(1023, '43', 'MAbuanbuan'),
(1024, '43', 'Malusac'),
(1025, '43', 'Sabitanan'),
(1026, '43', 'San Antonio'),
(1027, '43', 'San Nicolas 1st'),
(1028, '43', 'SAn Nicolas 2nd'),
(1029, '43', 'San pedro'),
(1030, '43', 'Santa Monica'),
(1031, '43', 'Santo Tomas'),
(1032, '44', 'San Agustin'),
(1033, '44', 'San Bartolome'),
(1034, '44', 'San Isidro'),
(1035, '44', 'San Joaquin'),
(1036, '44', 'San Jose'),
(1037, '44', 'San Juan'),
(1038, '44', 'San Nicolas'),
(1039, '44', 'San Pablo'),
(1040, '44', 'San Pedro'),
(1041, '44', 'San Roque'),
(1042, '44', 'Santa Lucia'),
(1043, '44', 'Santa Maria'),
(1044, '44', 'Santiago'),
(1045, '44', 'Santo Rosario'),
(1046, '45', 'Beuran'),
(1047, '45', 'Dila-dila'),
(1048, '45', 'San Agustin'),
(1049, '45', 'San Basilio'),
(1050, '45', 'San Isidro'),
(1051, '45', 'San Jose'),
(1052, '45', 'San Juan'),
(1053, '45', 'San Matias'),
(1054, '45', 'San Vicente'),
(1055, '45', 'Santa Monica'),
(1056, '46', 'MOras Del Paz'),
(1057, '46', 'Poblacion'),
(1058, '46', 'San Bartolome'),
(1059, '46', 'San Matias'),
(1060, '46', 'San Vicente'),
(1061, '46', 'Santo Rosario'),
(1062, '46', 'Sapa (Santo Niño)');

-- --------------------------------------------------------

--
-- Table structure for table `osams_course`
--

CREATE TABLE `osams_course` (
  `crs_id` int(11) NOT NULL,
  `crs_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osams_course`
--

INSERT INTO `osams_course` (`crs_id`, `crs_name`) VALUES
(1, 'BSOM'),
(2, 'BSIS'),
(3, 'BTVTED'),
(4, 'ACT'),
(5, 'HRS'),
(6, 'COMSEC'),
(7, 'CCS'),
(8, 'EIM');

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
-- Table structure for table `osams_muni`
--

CREATE TABLE `osams_muni` (
  `muni_id` int(11) NOT NULL,
  `prov_id` varchar(255) NOT NULL,
  `muni_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osams_muni`
--

INSERT INTO `osams_muni` (`muni_id`, `prov_id`, `muni_name`) VALUES
(1, '1', 'Angat'),
(2, '1', 'Balagtas'),
(3, '1', 'Bulakan'),
(4, '1', 'Baliuag'),
(5, '1', 'Bocaue'),
(6, '1', 'Bustos'),
(7, '1', 'Calumpit'),
(8, '1', 'Doña Remedios Trinidad'),
(9, '1', 'Guiguinto'),
(10, '1', 'Hagonoy'),
(11, '1', 'Malolos City'),
(12, '1', 'Marilao'),
(13, '1', 'Meycauayan City'),
(14, '1', 'Norzagaray'),
(15, '1', 'Obando'),
(16, '1', 'pandi'),
(17, '1', 'paombong'),
(18, '1', 'Plaridel'),
(19, '1', 'pulilan'),
(20, '1', 'san ildefonso'),
(21, '1', 'san miguel'),
(22, '1', 'san jose del monte'),
(23, '1', 'sta. maria'),
(24, '1', 'san rafael'),
(25, '2', 'Angeles City'),
(26, '2', 'Apalit'),
(27, '2', 'Arayat'),
(28, '2', 'Bacolor'),
(29, '2', 'Candaba'),
(30, '2', 'Floridablanca'),
(31, '2', 'GuaGua'),
(32, '2', 'Lubao'),
(33, '2', 'Mabalacat'),
(34, '2', 'Makabebe'),
(35, '2', 'Magalang'),
(36, '2', 'Masantol'),
(37, '2', 'Mexico'),
(38, '2', 'Minalin'),
(39, '2', 'Porac'),
(40, '2', 'San Fernando'),
(41, '2', 'San Luis'),
(42, '2', 'San Simon'),
(43, '2', 'Sexmoan'),
(44, '2', 'Sta. Ana'),
(45, '2', 'Sta. Rita'),
(46, '2', 'Sto. Tomas ');

-- --------------------------------------------------------

--
-- Table structure for table `osams_province`
--

CREATE TABLE `osams_province` (
  `prov_id` int(11) NOT NULL,
  `prov_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osams_province`
--

INSERT INTO `osams_province` (`prov_id`, `prov_name`) VALUES
(1, 'Bulacan'),
(2, 'Pampanga');

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
(2, '15-0112', 'Julia', 'Bantug', 'Kim', '', 'July 15, 1998', '20', 'Female', 'myeondong', 'Sto. Nino', 'Hagonoy', 'Bulacan', '3002', '09262514244', 'juliabeatrisse@gmail.com', 'Ferdinand Bantug', 'Government employee', 'Carmina Bantug', 'Housewife', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'yes', '', '', '', '', '', '', ''),
(3, '15-0356', 'Paula May', 'Dimaandal', 'Lopez', '', 'May 28, 1999', '19', 'Female', 'tigas ulo', 'Gatbuca', 'Calumpit', 'Bulacan', '3003', '09256789767', 'paulalicious@gmail.com', 'Kiko Lopez', 'engineer', 'Carmencita', 'Housewife', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'yes', '', '', '', '', '', '', ''),
(4, '15-0224', 'Rosemarie', 'Sibbaluca', 'Guirre', '', '1980-05-19', '16', 'Female', 'gandalang st.', 'San Gabriel', 'Malolos City', 'Bulacan', '3000', '09559371682', 'rosemarie19@gmail.com', 'Paulo Victoria', 'Professor', 'Perlita Cruz', 'Teacher', 'Married', 'BSIS', '4th', 'B', '1st', '2018-2019', 'yes', 'dsfsf.png', '44221405_10156394524926620_8368333005583810560_o.jpg', '44216936_310832279570413_6219371678380589056_n.jpg', '44146384_2433286123371486_3055001149494001664_n.jpg', '44053679_242733023061392_5653899054443134976_n.jpg', '43487598_10156373931816620_282974865189765120_n.jpg', '43160938_10156185390412961_7332393808685957120_n.jpg'),
(6, 'nbmnb', 'hg', 'g', 'gjhg', 'ghjg', '0073-06-12', '32', 'Male', 'hjg', 'nbmb', 'Norzagaray', 'Bataan', 'bnmbnmb', 'ygiuuig', 'ghgh', 'hghbnmb', 'mnbmnbmn', 'bmnbmnb', 'mnbmnb', 'mnbmnbmn', 'BSIS', '1st', 'A', '1st', 'bnbnmbn', 'archive', '43160938_10156185390412961_7332393808685957120_n.jpg', '43487598_10156373931816620_282974865189765120_n.jpg', '44053679_242733023061392_5653899054443134976_n.jpg', '44146384_2433286123371486_3055001149494001664_n.jpg', '44216936_310832279570413_6219371678380589056_n.jpg', '44221405_10156394524926620_8368333005583810560_o.jpg', 'dsfsf.png'),
(7, 'hhjh', 'jkll', 'kjk', 'klhj', 'jhkj', '75876-04-05', '4', 'Female', 'jkh', 'jghg', 'Balagtas', 'Bulacan', 'gfh', 'hkjhkj', 'kg', 'jkhkj', 'hjkhkj', 'hkj', 'kjhkj', 'jhj', 'BSIS', '1st', 'A', '1st', 'hjkhjkh', 'archive', 'adad.PNG', 'adadd.PNG', 'ansa.PNG', 'asd.PNG', 'Conceptual%20Framework%20to%20Improve%20Obstetric%20Fistula%20Outcomes.jpg', 'da.PNG', 'ds.PNG'),
(8, 'jhghgjhg', 'utt', 'hg', 'tytuyt', 'yttt', '0076-05-06', '454', 'Male', 'vvvhjgv', 'cgfgfgf', 'Balagtas', 'Nueva Ecija', 'bhghjg', 'vhkhgk', 'hghg,', 'jhghghjg', 'jhghjg', 'jhgjhg', 'jhgjh', 'gjhg', 'BSIS', '1st', 'A', '1st', 'jhkyt', 'archive', 'jklashd.PNG', 'jksas.PNG', 'k;.PNG', 'kja.PNG', 'kjasl.PNG', 'mas,mas.PNG', 'procrastination.PNG'),
(9, '15-1131', 'ronnell', 'Dettores', 'agustin', 'ron', '1999-03-03', '19', 'Male', '01rizalstreet', 'cutcut', 'Guiguinto', 'Bulacan', '3015', '09753013512', 'ronnellagustin03@gmail.com', 'renato agustin', 'security guard', 'guellerma agustin', 'Housewife', 'Single', 'BSIS', '1st', 'B', '1st', '2018-2019', 'yes', 'jklashd.PNG', 'eww.PNG', 'grr.PNG', 'hahldadna.PNG', 'kjasl.PNG', 'Ephesians-5.16-17.png', 'eeeee.PNG'),
(10, 'nnb', 'hbb', 'kjb', 'bnkbn', 'bbnb', '0891-05-16', '766', 'Male', 'fssaf', 'fsf', 'Balagtas', 'Bulacan', '3000', 'sf2231', 'sfsfsf', 'hbb', 'bnbj', 'bb,nb', 'bnmbnb', 'bjbb.', 'BSIS', '1st', 'A', '1st', '2018-291', 'archive', '65.PNG', 'fsf.PNG', 'gr.PNG', 'ansa.PNG', 'Ephesians-5.16-17.png', 'gr.PNG', 'jksas.PNG'),
(11, '15-1529', 'mandy', 'reyes', 'villacastin', '', '', '20', 'Male', 'purok 2', 'Bagna', 'Pandi', 'Bulacan', '3203', '09067728227', 'inosente@yahoo.com', 'andress', 'none', 'mylyn', 'ofw', 'sinlge', 'BSIS', '1st', 'A', '1st', '2018-2019', 'yes', '65.PNG', 'adadd.PNG', 'ansa.PNG', 'fgf.PNG', 'k;.PNG', 'grr.PNG', 'kja.PNG'),
(12, '15-2816', 'michaela', 'bautista', 'reyes', '', '', '19', 'Female', 'purok 3', 'Sta. Cruz', 'Bulacan', 'Bulacan', '3002', '098827162', 'mikaella@yahoo.com', 'edwin', 'Construction Worker', 'rosemarie', 'Housewife', 'single', 'BSIS', '1st', 'A', '1st', '2018-2019', 'yes', 'jksas.PNG', 'kja.PNG', 'jklashd.PNG', 'mas,mas.PNG', 'fss.PNG', 'fsf.PNG', 'gr.PNG'),
(13, 'vbnv', 'gyifyt', 'ytyglyuf', 'ftgfhf', 'ffgfg', '0381-06-21', '12', 'Female', 'gfg', 'gfkgf', 'Angat', 'Bataan', 'hgf', 'fhgfhgf', 'ffgf', 'fmgfmg', 'fmg', 'vb', 'vnbv', 'bvbvb', 'BSIS', '1st', 'A', '1st', '15421', 'archive', '65.PNG', 'adad.PNG', 'adadd.PNG', 'ansa.PNG', 'asd.PNG', 'Conceptual%20Framework%20to%20Improve%20Obstetric%20Fistula%20Outcomes.jpg', 'da.PNG'),
(14, '3456', 'ella mae', 'bautista', 'reyes', '', '1999-08-05', '19', 'Female', 'purok 3', 'sipat', 'Baliuag', 'Bulacan', '3004', '1234567891', 'reyesmichaelamarie@gmail.com', 'edwin', 'helper', 'rosemarie', 'housewife', 'Single', 'BSIS', '4th', 'A', '1st', '2018-2019', 'yes', 'jksas.PNG', 'fgf.PNG', 'kja.PNG', 'mas,mas.PNG', 'yu.PNG', 'eeeee.PNG', 'asd.PNG'),
(15, 'bjkvkh', 'qq', 'qq', 'qq', 'qq', '2789-05-12', '23', 'Female', 'Sumapa', 'nytg', 'Bulacan', 'Bulacan', '3000', '789787908', 'ashas@gmail.com', 'ljsiuhj', 'hkghv', 'hvhv', 'vvhv ', 'hhvh', 'BSIS', '1st', 'A', '1st', '78678', 'archive', '65.PNG', 'adad.PNG', 'fss.PNG', 'eww.PNG', 'grr.PNG', 'procrastination.PNG', 'Conceptual%20Framework%20to%20Improve%20Obstetric%20Fistula%20Outcomes.jpg'),
(16, 'bvvnb', 'guykg', 'hgfhj', 'vhjjhv', 'jhvbhjv', '0046-03-04', '6435', 'Male', 'gvbvbn', 'yhgjhv', 'Balagtas', 'Bataan', 'yuytr6', 'vnbvnb', 'vnbvnbvnb', 'vnbvnb', 'vbvbn', 'vnbv', 'bnv', 'nbvnb', 'BSIS', '1st', 'A', '1st', 'bvnvvvv', 'archive', '65.PNG', 'fss.PNG', 'hahaha.PNG', 'asd.PNG', 'jklashd.PNG', 'hahaha.PNG', 'fss.PNG'),
(17, '15-1527', 'ruby', 'pedroso', 'suberon', '', '01/29/1998', '20', 'male', 'purok 2', 'sumapa', 'malolos', 'bulacan', '3000', '090782781', 'rubuy@yahoo.com', 'pedro', 'farmer', 'ceceia', 'housewife', 'single', 'bsis', '4rth', 'A', '1st', '2018-2019', 'yes', '', '', '', '', '', '', ''),
(18, '14-1528', 'miguel', 'graza', 'gatchalian', '', '09/10/1998', '20', 'male', 'purok 4', 'mojon', 'malolos', 'bulacan', '3000', '0906762712', 'miguel20@yahoo.com', 'janro', 'driver', 'joana', 'housewife', 'single', 'bsis', '4rth', 'A', '1st', '2018-2019', 'no', '', '', '', '', '', '', ''),
(19, '15-1218', 'vergel', 'doblon', 'gregorio', '', '06/19/1998', '20', 'male', 'purok 2', 'tawiran', 'paumbong', 'bulacan', '3005', '0908882712', 'vergie123@yahoo.com', 'junrior', 'fisherman', 'queene', 'housewife', 'single', 'bsis', '4rth', 'A', '1st', '2018-2019', 'no', '', '', '', '', '', '', ''),
(20, '12-1520', 'angelo', 'morales', 'lumague', '', '12/20/1998', '20', 'male', 'pruok 1', 'sipat', 'plaridel', 'bulacan', '3004', '09068749201', 'qwerty12@yahoo.com', 'kilomoet', 'driver', 'julia', 'labander', 'single', 'bsis', '4rth', 'a', '1st', '2018-2019', 'no', '', '', '', '', '', '', ''),
(21, '15-2019', 'jetel', 'cansino', 'lumague', '', '02/02/1998', '20', 'male', 'purok 2', 'agnaya', 'plaridel', 'bulacan', '3004', '09078261529', 'jetel@yahoo.com', 'jonjon', 'none', 'lanie', 'tailor', 'single', 'bsis', '4rth', 'a', 'bsis', '2018-2019', 'no', '', '', '', '', '', '', ''),
(22, '13-1415pr', 'rotsen', 'esgera', 'reyes', '', '09/28/1998', '20', 'male', 'purok 2', 'dampol', 'plaridel', 'bulacan', '3004', '09089281728', 'mani2uj@yahoo.com', 'nestor', 'constructuion', 'netelia', 'housewife', 'single', 'bsis', '2nd ', 'b', '1st', '2018-2019', 'no', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `osams_section`
--

CREATE TABLE `osams_section` (
  `sect_id` int(11) NOT NULL,
  `year_id` varchar(255) NOT NULL,
  `sect_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osams_section`
--

INSERT INTO `osams_section` (`sect_id`, `year_id`, `sect_name`) VALUES
(1, '1', 'A'),
(2, '1', 'B'),
(3, '1', 'C'),
(4, '1', 'D'),
(5, '1', 'E'),
(6, '2', 'A'),
(7, '2', 'B'),
(8, '3', 'A'),
(9, '3', 'B'),
(10, '3', 'C'),
(11, '4', 'A'),
(12, '4', 'B'),
(13, '4', 'C'),
(14, '4', 'D'),
(15, '4', 'E'),
(16, '5', 'A'),
(17, '5', 'B'),
(18, '6', 'A'),
(19, '6', 'A'),
(20, '7', 'A'),
(21, '8', 'A'),
(22, '8', 'B'),
(23, '9', 'A'),
(24, '9', 'B'),
(25, '9', 'C'),
(26, '10', 'A'),
(27, '10', 'B'),
(28, '10', 'C'),
(29, '11', 'A'),
(30, '11', 'B'),
(31, '11', 'C'),
(32, '12', 'A'),
(33, '12', 'B'),
(34, '12', 'C'),
(35, '12', 'D'),
(36, '12', 'C'),
(37, '12', 'D'),
(38, '12', 'E'),
(39, '12', 'F'),
(40, '12', 'G'),
(41, '13', 'A'),
(42, '13', 'B'),
(43, '13', 'C'),
(44, '13', 'D'),
(45, '13', 'E'),
(46, '14', 'A'),
(47, '14', 'B'),
(48, '15', 'A'),
(49, '15', 'B'),
(50, '15', 'C'),
(51, '16', 'A'),
(52, '17', 'A'),
(53, '18', 'A'),
(54, '19', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `osams_tuition`
--

CREATE TABLE `osams_tuition` (
  `tf_id` int(11) NOT NULL,
  `tf_course` varchar(255) NOT NULL,
  `tf_amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `osams_yearlvl`
--

CREATE TABLE `osams_yearlvl` (
  `year_id` int(11) NOT NULL,
  `crs_id` varchar(255) NOT NULL,
  `year_lvl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osams_yearlvl`
--

INSERT INTO `osams_yearlvl` (`year_id`, `crs_id`, `year_lvl`) VALUES
(1, '1', '1st'),
(2, '1', '2nd'),
(3, '1', '3rd'),
(4, '1', '4rth'),
(5, '2', '1st'),
(6, '2', '2nd'),
(7, '2', '3rd'),
(8, '2', '4rth'),
(9, '3', '1st'),
(10, '4', '1st'),
(11, '5', '1st'),
(12, '6', '1st'),
(13, '6', '2nd'),
(14, '7', '1st'),
(15, '7', '2nd'),
(16, '8', '1st'),
(17, '8', '2nd'),
(18, '9', '1st'),
(19, '9', '2nd');

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
-- Indexes for table `osams_brgy`
--
ALTER TABLE `osams_brgy`
  ADD PRIMARY KEY (`brgy_id`);

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
-- Indexes for table `osams_muni`
--
ALTER TABLE `osams_muni`
  ADD PRIMARY KEY (`muni_id`);

--
-- Indexes for table `osams_province`
--
ALTER TABLE `osams_province`
  ADD PRIMARY KEY (`prov_id`);

--
-- Indexes for table `osams_scholars`
--
ALTER TABLE `osams_scholars`
  ADD PRIMARY KEY (`sch_no`);

--
-- Indexes for table `osams_section`
--
ALTER TABLE `osams_section`
  ADD PRIMARY KEY (`sect_id`);

--
-- Indexes for table `osams_tuition`
--
ALTER TABLE `osams_tuition`
  ADD PRIMARY KEY (`tf_id`);

--
-- Indexes for table `osams_yearlvl`
--
ALTER TABLE `osams_yearlvl`
  ADD PRIMARY KEY (`year_id`);

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
-- AUTO_INCREMENT for table `osams_brgy`
--
ALTER TABLE `osams_brgy`
  MODIFY `brgy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1063;

--
-- AUTO_INCREMENT for table `osams_course`
--
ALTER TABLE `osams_course`
  MODIFY `crs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `osams_muni`
--
ALTER TABLE `osams_muni`
  MODIFY `muni_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `osams_province`
--
ALTER TABLE `osams_province`
  MODIFY `prov_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `osams_scholars`
--
ALTER TABLE `osams_scholars`
  MODIFY `sch_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `osams_section`
--
ALTER TABLE `osams_section`
  MODIFY `sect_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `osams_tuition`
--
ALTER TABLE `osams_tuition`
  MODIFY `tf_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `osams_yearlvl`
--
ALTER TABLE `osams_yearlvl`
  MODIFY `year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
