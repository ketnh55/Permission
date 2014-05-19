-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2014 at 09:59 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kate`
--
CREATE DATABASE IF NOT EXISTS `kate2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kate2`;

-- --------------------------------------------------------

--
-- Table structure for table `chuyenvienthuly`
--

CREATE TABLE IF NOT EXISTS `chuyenvienthuly` (
  `idChuyenVienThuLy` int(11) NOT NULL AUTO_INCREMENT,
  `NameCB` varchar(45) NOT NULL,
  `NgaySinh` date NOT NULL,
  `DonViThuLy` int(11) DEFAULT NULL,
  `quequan` varchar(45) NOT NULL,
  `noiohientai` varchar(45) NOT NULL,
  `CMTND` varchar(45) NOT NULL,
  `email` tinytext NOT NULL,
  `sdt` tinytext NOT NULL,
  PRIMARY KEY (`idChuyenVienThuLy`),
  KEY `FK_CanBo_DVThuLy_idx` (`DonViThuLy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `chuyenvienthuly`
--

INSERT INTO `chuyenvienthuly` (`idChuyenVienThuLy`, `NameCB`, `NgaySinh`, `DonViThuLy`, `quequan`, `noiohientai`, `CMTND`, `email`, `sdt`) VALUES
(1, 'ABC', '2014-04-07', 1, '', '', '', '', ''),
(2, 'Phạm Văn Doanh', '2014-05-14', 2, '', '', '', '', ''),
(3, 'Nguyen Thi A', '2014-05-16', 2, '', '', '', '', ''),
(4, 'Đinh Công Mạnh', '2009-01-01', NULL, '23432', '342432', '1323523', '43243@dfafdas', '2432432'),
(5, 'Đinh Công Mạnh', '2009-01-01', NULL, '23432', '342432', '1323523', '43243@dfafdas', '2432432'),
(6, 'Đinh Công Mạnh', '2009-01-01', NULL, 'àda', 'fdaf', '321321', 'fadsf@xn--dada-znac', '321321'),
(7, 'Đinh Công Mạnh', '2009-01-01', NULL, 'àda', 'fdaf', '1323523', 'vietnam@vtc.vn', '321321'),
(8, 'Đinh Công Mạnh', '2009-01-01', NULL, 'àda', 'Hà Nội', '1323523', '43243@dfafdas', '321321'),
(9, 'Đinh Công Mạnh', '2009-01-01', 3, '23432', 'fdaf', '1323523', 'vietnam@vtc.vn', '3232'),
(10, 'Phạm Khánh Huyền', '2009-01-01', 1, 'Hà Nội', 'Hà Nội', '123456789', '43243@dfafdas', '321321'),
(11, 'Phạm Khánh Huyền', '2009-01-01', 1, 'àda', '342432', '1323523', 'vietnam@vtc.vn', '0');

-- --------------------------------------------------------

--
-- Table structure for table `congdan`
--

CREATE TABLE IF NOT EXISTS `congdan` (
  `idCongDan` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Ngaysinh` date NOT NULL,
  `QueQuan` varchar(45) NOT NULL,
  `SDT` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pathtoimage` varchar(100) DEFAULT NULL,
  `tenant` int(11) NOT NULL,
  `cmtnd` varchar(45) NOT NULL,
  `noiohientai` varchar(45) NOT NULL,
  PRIMARY KEY (`idCongDan`),
  KEY `IDX_C751475A4E59C462` (`tenant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `congdan`
--

INSERT INTO `congdan` (`idCongDan`, `Name`, `Ngaysinh`, `QueQuan`, `SDT`, `email`, `pathtoimage`, `tenant`, `cmtnd`, `noiohientai`) VALUES
(1, 'a', '2014-04-14', 'vn', '010000000', 'aa@xyz', '', 3, '', ''),
(2, 'b', '2014-04-14', 'vn', '010000000', 'aa@xyz', '', 3, '', ''),
(3, 'c', '2014-04-14', 'vn', '010000000', 'aa@xyz', '', 3, '', ''),
(4, 'd', '2014-04-14', 'vn', '010000000', 'aa@xyz', '', 3, '', ''),
(5, '1', '2014-04-01', 'vp', '123', '123@gmail.com', 'uploads/avatar/icon.png', 4, '', ''),
(6, '2', '2014-04-01', 'vp', '123', '123@gmail.com', 'uploads/avatar/icon.png', 4, '', ''),
(7, 'anonymous', '0000-00-00', '', '', '', NULL, 7, '', ''),
(8, 'anonymous', '0000-00-00', '', '', '', NULL, 8, '', ''),
(9, 'anonymous', '0000-00-00', '', '', '', NULL, 9, '', ''),
(10, 'anonymous', '0000-00-00', '', '', '', NULL, 10, '', ''),
(11, 'anonymous', '0000-00-00', '', '', '', NULL, 11, '', ''),
(12, 'anonymous', '0000-00-00', '', '', '', NULL, 12, '', ''),
(13, 'Nguyễn Văn Rỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '0123456789', 'Hà Nội'),
(14, 'Nguyễn Văn Mỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '0123456789', 'Hà Nội'),
(15, 'Nguyễn Văn Yỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '0123456789', 'Hà Nội'),
(16, 'Nguyễn Văn Mỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '0123456789', 'Hà Nội'),
(17, 'Nguyễn Văn Mỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '0123456789', 'Hà Nội'),
(18, 'Nguyễn Văn Mỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(19, 'Nguyễn Văn Rỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(20, 'Nguyễn Văn Mỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(21, 'An', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(22, 'An', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(23, 'xxx', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(24, 'abc', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(25, 'Nguyễn Hữu Kết', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(26, 'Nguyễn Hữu Kết', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(27, 'Nguyễn Hữu Kết', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(28, 'An', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(29, 'An', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(30, 'Nguyễn Văn CƯơng', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(31, 'Nguyễn Văn CƯơng', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(32, 'Nguyễn Văn CƯơng', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(33, 'Nguyễn Hữu Kết', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(34, '89', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(35, 'Rooney', '2009-01-01', 'Việt Nam', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 17, '134745654645', 'Hà Nội'),
(36, 'Nguyễn Văn Rỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 17, '134745654645', 'Hà Nội'),
(37, 'Nguyễn Thị Khanh', '2009-01-01', 'Hưng Yên', '126566513', 'phamthikhanh@gmail.com', NULL, 18, '0123654789', 'Hà Nội'),
(38, 'Hồ Hữu Bính', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '134745654645', 'Hà Nội'),
(39, 'Phạm Văn Doanh', '2009-01-01', 'Hưng Yên', '126566513', 'ket.nguyen.huu@gmail.com', NULL, 18, '03132313', 'Hà Nội'),
(40, 'Phạm Văn Cương', '2009-01-01', 'Hưng Yên', '126566513', 'ket.nguyen.huu@gmail.com', NULL, 18, '0123654789', 'Hà Nội'),
(41, 'Phạm Văn Thắng', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '0123456789', 'Hà Nội'),
(42, 'Lê Văn Dầu', '2009-01-01', 'Hưng Yên', '126566513', 'ket.nguyen.huu@gmail.com', NULL, 18, '343256354', 'Hà Nội'),
(43, 'Hoàng Văn Thắng', '2009-01-01', 'Hưng Hà', '126566513', 'ket.nguyen.huu@gmail.com', NULL, 19, '012914951', 'Hà Nội'),
(44, 'Nguyễn Văn Rỗi', '2009-01-01', 'Hưng Hà', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 19, '134745654645', 'Hà Nội'),
(45, 'Nguyễn Thị THanh Huyền', '2009-01-01', 'Hà Nội', '123456789', 'huyen@vnu', NULL, 18, 'iodl;;sdfl', 'Hưng Yên'),
(46, 'Im', '1930-01-01', 'Hưng Yên', '123456789', 'fdas@fdsa', NULL, 18, '123456789', 'dfasfdsa'),
(47, 'An', '1930-01-01', 'Hưng Hà', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '123', 'dfasfdsa'),
(48, 'Nguyễn Văn Rỗi', '1930-01-01', 'Hưng Yên', '1265665130', 'ket.nguyen.huu@gmail.com', NULL, 27, '123234566', 'Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `dinhkemguihs`
--

CREATE TABLE IF NOT EXISTS `dinhkemguihs` (
  `idDinhKemGuiHS` int(11) NOT NULL AUTO_INCREMENT,
  `TenFileDinhKem` varchar(300) NOT NULL,
  `PathToFile` varchar(300) NOT NULL,
  `hosotthc` int(11) NOT NULL,
  PRIMARY KEY (`idDinhKemGuiHS`),
  KEY `fk_dinhkemguihs_hosotthc1_idx` (`hosotthc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dinhkemnhanhs`
--

CREATE TABLE IF NOT EXISTS `dinhkemnhanhs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TenFileDinhKem` varchar(300) NOT NULL,
  `PathToFile` varchar(300) DEFAULT NULL,
  `hosotthc` int(11) NOT NULL,
  `dinhkemtthc` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dinhkemnhanhs_hosotthc1_idx` (`hosotthc`),
  KEY `IDX_264C20294FC789D4` (`dinhkemtthc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=296 ;

--
-- Dumping data for table `dinhkemnhanhs`
--

INSERT INTO `dinhkemnhanhs` (`id`, `TenFileDinhKem`, `PathToFile`, `hosotthc`, `dinhkemtthc`) VALUES
(1, '01_td (1).pdf', 'uploads/attachments/01_td (1).pdf', 1, 19),
(2, 'chrome.exe', 'uploads/attachments/chrome.exe', 2, 19),
(3, '[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 'uploads/attachments/[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 16, 20),
(4, '[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 'uploads/attachments/[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 16, 20),
(5, 'Cách Làm Chủ Bản Thân Bạn.mobi', 'uploads/attachments/Cách Làm Chủ Bản Thân Bạn.mobi', 16, 20),
(6, '[kickass.to]cracking.the.new.gmat.2013.edition.pdf.epub.mobi.torrent', 'uploads/attachments/[kickass.to]cracking.the.new.gmat.2013.edition.pdf.epub.mobi.torrent', 19, 19),
(7, 'soGhiDiemGoiTen10_A.xls', 'uploads/attachments/soGhiDiemGoiTen10_A.xls', 19, 21),
(8, 'icon.png', 'uploads/attachments/icon.png', 20, 19),
(9, 'Thumbs.db', 'uploads/attachments/Thumbs.db', 20, 21),
(10, 'zoom.png', 'uploads/attachments/zoom.png', 21, 26),
(11, 'typing.gif', 'uploads/attachments/typing.gif', 21, 27),
(12, '01_td (1).pdf', 'uploads/attachments/01_td (1).pdf', 22, 28),
(13, '01_td (1).pdf', 'uploads/attachments/01_td (1).pdf', 22, 29),
(14, '01_td (1).pdf', 'uploads/attachments/01_td (1).pdf', 23, 30),
(15, 'First Run', 'uploads/attachments/First Run', 24, 31),
(16, 'debug.log', 'uploads/attachments/debug.log', 24, 32),
(17, 'Con mua ngang qua.doc', 'uploads/attachments/Con mua ngang qua.doc', 25, 22),
(18, 'Cuộc gọi của ex.doc', 'uploads/attachments/Cuộc gọi của ex.doc', 25, 23),
(19, 'Cuộc gọi của ex.doc', 'uploads/attachments/Cuộc gọi của ex.doc', 26, 22),
(20, 'Con mua ngang qua.doc', 'uploads/attachments/Con mua ngang qua.doc', 26, 23),
(21, '1', NULL, 28, 22),
(22, '1', NULL, 28, 23),
(23, '1', NULL, 29, 22),
(24, '1', NULL, 29, 23),
(25, '1', NULL, 30, 22),
(26, '1', NULL, 30, 23),
(27, '1', NULL, 31, 19),
(28, '1', NULL, 31, 21),
(29, '1', NULL, 32, 19),
(30, '1', NULL, 32, 21),
(31, '1', NULL, 33, 19),
(32, '1', NULL, 33, 21),
(33, '1', NULL, 34, 19),
(34, '1', NULL, 34, 21),
(35, '1', NULL, 35, 22),
(36, '1', NULL, 35, 23),
(37, '1', NULL, 36, 22),
(38, '1', NULL, 36, 23),
(39, '1', NULL, 37, 34),
(40, '1', NULL, 37, 35),
(41, '1', NULL, 38, 34),
(42, '1', NULL, 38, 35),
(43, '1', NULL, 39, 34),
(44, '1', NULL, 39, 35),
(45, '1', NULL, 40, 34),
(46, '1', NULL, 40, 35),
(47, '1', NULL, 41, 33),
(48, '1', NULL, 42, 33),
(49, '1', NULL, 43, 33),
(50, '1', NULL, 48, 33),
(51, '1', NULL, 49, 33),
(52, '1', NULL, 50, 33),
(53, '1', NULL, 52, 33),
(54, '1', NULL, 53, 22),
(55, '1', NULL, 53, 23),
(56, '1', NULL, 54, 22),
(57, '1', NULL, 54, 23),
(58, '1', NULL, 55, 22),
(59, '1', NULL, 55, 23),
(60, '1', NULL, 56, 37),
(61, '1', NULL, 57, 37),
(62, '1', NULL, 58, 37),
(63, '1', NULL, 59, 37),
(64, '1', NULL, 60, 37),
(65, '1', NULL, 61, 37),
(66, '1', NULL, 62, 37),
(67, '1', NULL, 66, 37),
(68, '1', NULL, 67, 37),
(69, '1', NULL, 68, 37),
(70, '1', NULL, 70, 37),
(71, '1', NULL, 71, 37),
(72, '1', NULL, 72, 37),
(73, '1', NULL, 76, 37),
(74, '1', NULL, 77, 38),
(75, '1', NULL, 78, 37),
(76, '1', NULL, 79, 38),
(77, '1', NULL, 80, 37),
(78, '1', NULL, 81, 37),
(79, '1', NULL, 82, 40),
(80, '1', NULL, 82, 41),
(81, '1', NULL, 82, 42),
(82, '1', NULL, 82, 43),
(83, '1', NULL, 83, 40),
(84, '1', NULL, 83, 41),
(85, '1', NULL, 83, 42),
(86, '1', NULL, 83, 43),
(87, '1', NULL, 84, 39),
(88, '1', NULL, 85, 39),
(89, '1', NULL, 86, 33),
(90, '1', NULL, 87, 33),
(91, '1', NULL, 88, 33),
(92, '1', NULL, 89, 33),
(93, '1', NULL, 90, 44),
(94, '1', NULL, 90, 45),
(95, '1', NULL, 91, 44),
(96, '1', NULL, 91, 45),
(97, '1', NULL, 92, 44),
(98, '1', NULL, 92, 45),
(99, '1', NULL, 93, 44),
(100, '1', NULL, 93, 45),
(101, '1', NULL, 94, 44),
(102, '1', NULL, 94, 45),
(103, '1', NULL, 95, 44),
(104, '1', NULL, 95, 45),
(105, '1', NULL, 96, 44),
(106, '1', NULL, 96, 45),
(107, '1', NULL, 97, 44),
(108, '1', NULL, 97, 45),
(109, '1', NULL, 98, 44),
(110, '1', NULL, 98, 45),
(111, '1', NULL, 99, 44),
(112, '1', NULL, 99, 45),
(113, '1', NULL, 100, 44),
(114, '1', NULL, 100, 45),
(115, '1', NULL, 101, 44),
(116, '1', NULL, 101, 45),
(117, '1', NULL, 102, 44),
(118, '1', NULL, 102, 45),
(119, '1', NULL, 103, 44),
(120, '1', NULL, 103, 45),
(121, '1', NULL, 104, 44),
(122, '1', NULL, 104, 45),
(123, '1', NULL, 105, 44),
(124, '1', NULL, 105, 45),
(125, '1', NULL, 106, 44),
(126, '1', NULL, 106, 45),
(127, '1', NULL, 107, 44),
(128, '1', NULL, 107, 45),
(129, '1', NULL, 108, 44),
(130, '1', NULL, 108, 45),
(131, '1', NULL, 109, 40),
(132, '1', NULL, 109, 41),
(133, '1', NULL, 109, 42),
(134, '1', NULL, 109, 43),
(135, '1', NULL, 110, 40),
(136, '1', NULL, 110, 41),
(137, '1', NULL, 110, 42),
(138, '1', NULL, 110, 43),
(139, '1', NULL, 111, 40),
(140, '1', NULL, 111, 41),
(141, '1', NULL, 111, 42),
(142, '1', NULL, 111, 43),
(143, '1', NULL, 112, 40),
(144, '1', NULL, 112, 41),
(145, '1', NULL, 112, 42),
(146, '1', NULL, 112, 43),
(147, '1', NULL, 113, 40),
(148, '1', NULL, 113, 41),
(149, '1', NULL, 113, 42),
(150, '1', NULL, 113, 43),
(151, '1', NULL, 114, 40),
(152, '1', NULL, 114, 41),
(153, '1', NULL, 114, 42),
(154, '1', NULL, 114, 43),
(155, '1', NULL, 115, 40),
(156, '1', NULL, 115, 41),
(157, '1', NULL, 115, 42),
(158, '1', NULL, 115, 43),
(159, '1', NULL, 116, 40),
(160, '1', NULL, 116, 41),
(161, '1', NULL, 116, 42),
(162, '1', NULL, 116, 43),
(163, '1', NULL, 117, 40),
(164, '1', NULL, 117, 41),
(165, '1', NULL, 117, 42),
(166, '1', NULL, 117, 43),
(167, '1', NULL, 118, 40),
(168, '1', NULL, 118, 41),
(169, '1', NULL, 118, 42),
(170, '1', NULL, 118, 43),
(171, '1', NULL, 119, 40),
(172, '1', NULL, 119, 41),
(173, '1', NULL, 119, 42),
(174, '1', NULL, 119, 43),
(175, '1', NULL, 120, 40),
(176, '1', NULL, 120, 41),
(177, '1', NULL, 120, 42),
(178, '1', NULL, 120, 43),
(179, '1', NULL, 121, 40),
(180, '1', NULL, 121, 41),
(181, '1', NULL, 121, 42),
(182, '1', NULL, 121, 43),
(183, '1', NULL, 122, 40),
(184, '1', NULL, 122, 41),
(185, '1', NULL, 122, 42),
(186, '1', NULL, 122, 43),
(187, '1', NULL, 123, 40),
(188, '1', NULL, 123, 41),
(189, '1', NULL, 123, 42),
(190, '1', NULL, 123, 43),
(191, '1', NULL, 124, 40),
(192, '1', NULL, 124, 41),
(193, '1', NULL, 124, 42),
(194, '1', NULL, 124, 43),
(195, '1', NULL, 125, 40),
(196, '1', NULL, 125, 41),
(197, '1', NULL, 125, 42),
(198, '1', NULL, 125, 43),
(199, '1', NULL, 126, 40),
(200, '1', NULL, 126, 41),
(201, '1', NULL, 126, 42),
(202, '1', NULL, 126, 43),
(203, '1', NULL, 127, 40),
(204, '1', NULL, 127, 41),
(205, '1', NULL, 127, 42),
(206, '1', NULL, 127, 43),
(207, '1', NULL, 128, 40),
(208, '1', NULL, 128, 41),
(209, '1', NULL, 128, 42),
(210, '1', NULL, 128, 43),
(211, '1', NULL, 129, 40),
(212, '1', NULL, 129, 41),
(213, '1', NULL, 129, 42),
(214, '1', NULL, 129, 43),
(215, '1', NULL, 130, 40),
(216, '1', NULL, 130, 41),
(217, '1', NULL, 130, 42),
(218, '1', NULL, 130, 43),
(219, '1', NULL, 131, 40),
(220, '1', NULL, 131, 41),
(221, '1', NULL, 131, 42),
(222, '1', NULL, 131, 43),
(223, '1', NULL, 132, 40),
(224, '1', NULL, 132, 41),
(225, '1', NULL, 132, 42),
(226, '1', NULL, 132, 43),
(227, '1', NULL, 133, 40),
(228, '1', NULL, 133, 41),
(229, '1', NULL, 133, 42),
(230, '1', NULL, 133, 43),
(231, '1', NULL, 134, 40),
(232, '1', NULL, 134, 41),
(233, '1', NULL, 134, 42),
(234, '1', NULL, 134, 43),
(235, '1', NULL, 135, 40),
(236, '1', NULL, 135, 41),
(237, '1', NULL, 135, 42),
(238, '1', NULL, 135, 43),
(239, '1', NULL, 136, 40),
(240, '1', NULL, 136, 41),
(241, '1', NULL, 136, 42),
(242, '1', NULL, 136, 43),
(243, '1', NULL, 137, 40),
(244, '1', NULL, 137, 41),
(245, '1', NULL, 137, 42),
(246, '1', NULL, 137, 43),
(247, '1', NULL, 138, 40),
(248, '1', NULL, 138, 41),
(249, '1', NULL, 138, 42),
(250, '1', NULL, 138, 43),
(251, '1', NULL, 139, 40),
(252, '1', NULL, 139, 41),
(253, '1', NULL, 139, 42),
(254, '1', NULL, 139, 43),
(255, '1', NULL, 140, 40),
(256, '1', NULL, 140, 41),
(257, '1', NULL, 140, 42),
(258, '1', NULL, 140, 43),
(259, '1', NULL, 141, 40),
(260, '1', NULL, 141, 41),
(261, '1', NULL, 141, 42),
(262, '1', NULL, 141, 43),
(263, '1', NULL, 142, 40),
(264, '1', NULL, 142, 41),
(265, '1', NULL, 142, 42),
(266, '1', NULL, 142, 43),
(267, '1', NULL, 143, 40),
(268, '1', NULL, 143, 41),
(269, '1', NULL, 143, 42),
(270, '1', NULL, 143, 43),
(271, '1', NULL, 144, 40),
(272, '1', NULL, 144, 41),
(273, '1', NULL, 144, 42),
(274, '1', NULL, 144, 43),
(275, '1', NULL, 145, 40),
(276, '1', NULL, 145, 41),
(277, '1', NULL, 145, 42),
(278, '1', NULL, 145, 43),
(279, '1', NULL, 146, 40),
(280, '1', NULL, 146, 41),
(281, '1', NULL, 146, 42),
(282, '1', NULL, 146, 43),
(283, '1', NULL, 147, 40),
(284, '1', NULL, 147, 41),
(285, '1', NULL, 147, 42),
(286, '1', NULL, 147, 43),
(287, '1', NULL, 148, 40),
(288, '1', NULL, 148, 41),
(289, '1', NULL, 148, 42),
(290, '1', NULL, 148, 43),
(291, '1', NULL, 149, 40),
(292, '1', NULL, 149, 41),
(293, '1', NULL, 149, 42),
(294, '1', NULL, 149, 43),
(295, '1', NULL, 150, 50);

-- --------------------------------------------------------

--
-- Table structure for table `dinhkemtthc`
--

CREATE TABLE IF NOT EXISTS `dinhkemtthc` (
  `idDinhKemTTHC` int(11) NOT NULL AUTO_INCREMENT,
  `TenFileDK` varchar(300) DEFAULT NULL,
  `PathToFile` varchar(300) DEFAULT NULL,
  `Tthc` int(11) NOT NULL,
  PRIMARY KEY (`idDinhKemTTHC`),
  KEY `IDX_4FC789D44F4C5628` (`Tthc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `dinhkemtthc`
--

INSERT INTO `dinhkemtthc` (`idDinhKemTTHC`, `TenFileDK`, `PathToFile`, `Tthc`) VALUES
(19, 'uh', 'uploads/attachments/[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 25),
(20, 'abc', 'uploads/attachments/[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 24),
(21, '234', 'uploads/attachments/[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 25),
(22, 'mẫu', 'uploads/attachments/ok (1).sql', 26),
(23, 'mẫu', 'uploads/attachments/01_td (1).pdf', 26),
(24, 'Đô la mỹ', 'uploads/attachments/Thumbs.db', 27),
(25, '123', 'uploads/attachments/Thumbs.db', 28),
(26, '123', 'uploads/attachments/icon.png', 29),
(27, '456', 'uploads/attachments/zoom.png', 29),
(28, 'mỗi khi a nhìn', 'uploads/attachments/ok (1).sql', 30),
(29, 'mỗi khi a nhìn', 'uploads/attachments/01_td (1).pdf', 30),
(30, 'fsd', 'uploads/attachments/01_td (1).pdf', 31),
(31, '123', 'uploads/attachments/01_td (1).pdf', 32),
(32, 'sss', 'uploads/attachments/chrome.exe', 32),
(33, 'fda', 'uploads/attachments/[kickass.to]cracking.the.new.gmat.2013.edition.pdf.epub.mobi.torrent', 35),
(34, '3232', 'uploads/attachments/[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 36),
(35, '3232', 'uploads/attachments/[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 36),
(36, 'giấy tờ nhà đất', NULL, 37),
(37, 'đăng ký kết hôn', NULL, 38),
(38, 'Sổ hộ khẩu', NULL, 39),
(39, 'sổ hộ khẩu', NULL, 40),
(40, 'Sổ hộ khẩu có công chứng', NULL, 42),
(41, 'Chứng minh thư nhân dân của nam đăng ký kết hôn', NULL, 42),
(42, 'Chứng minh thư của nữ đăng ký kết hôn', NULL, 42),
(43, 'Giấy tờ khác', NULL, 42),
(44, 'GIấy tờ nhà đất', NULL, 44),
(45, 'Sổ hộ khẩu', NULL, 44),
(46, 'CMTND', NULL, 46),
(47, 'Sổ hộ khẩu', NULL, 46),
(48, 'Giấy cam đoan', NULL, 46),
(49, 'abc', NULL, 47),
(50, 'fafdas', NULL, 48);

-- --------------------------------------------------------

--
-- Table structure for table `donvithuly`
--

CREATE TABLE IF NOT EXISTS `donvithuly` (
  `idDonViThuLy` int(11) NOT NULL AUTO_INCREMENT,
  `NameDonViThuLy` varchar(45) NOT NULL,
  `tenant` int(11) NOT NULL,
  `mota` varchar(45) NOT NULL,
  `diachi` varchar(45) NOT NULL,
  `sdt` varchar(45) NOT NULL,
  `madonvi` varchar(45) NOT NULL,
  PRIMARY KEY (`idDonViThuLy`),
  KEY `IDX_9D1555684E59C462` (`tenant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `donvithuly`
--

INSERT INTO `donvithuly` (`idDonViThuLy`, `NameDonViThuLy`, `tenant`, `mota`, `diachi`, `sdt`, `madonvi`) VALUES
(1, 'Sở nhà đất hà nội', 18, '', '', '', ''),
(2, 'Sở nhà đất hà nội', 18, '', '', '', ''),
(3, 'Sở nhà đất hà nội', 19, 'Sở nhà đất', 'Lạc long quân âu cơ', '0125698741', 'EVN'),
(4, 'Sở nhà đất hà nội', 3, 'Sở nhà đất', 'Lạc long quân âu cơ', '0125698741', 'EVN'),
(5, 'UBND Huyên Hải hà', 27, 'Sở nhà đất', 'Kim Mã Ba Đình Hà Nội', '0134654', 'HH');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `idFAQ` int(11) NOT NULL AUTO_INCREMENT,
  `idTTHC` int(11) DEFAULT NULL,
  `NDCauHoi` varchar(45) NOT NULL,
  `NDCauTraLoi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFAQ`),
  KEY `FK_FAQ_DichVu_idx` (`idTTHC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `functions`
--

CREATE TABLE IF NOT EXISTS `functions` (
  `idFunctions` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `path` varchar(45) NOT NULL,
  `GroupFunction` int(11) NOT NULL,
  PRIMARY KEY (`idFunctions`),
  KEY `fk_Function_GroupFunction1_idx` (`GroupFunction`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `functions`
--

INSERT INTO `functions` (`idFunctions`, `name`, `path`, `GroupFunction`) VALUES
(1, 'Khởi tạo dữ liệu', 'initialData', 1),
(2, 'Phân quyền hệ thống', 'permission', 1),
(3, 'Thống kê', 'statistic', 1),
(4, 'Tiếp nhận hồ sơ', 'reception', 3),
(7, 'Thủ tục hành chính chờ niêm yết', 'statisticListTTHC', 2),
(8, 'Phân quyền cán bộ', 'permission', 7),
(9, 'Thống kê hồ sơ', 'statisticStatus', 4),
(10, 'Chỉnh sửa thủ tục hành chính đã niêm yết', 'statisticListedTTHC', 2),
(11, 'Hỏi đáp trực tuyến', 'A&Q', 5),
(12, 'Chuyển thụ lý', 'forwardHoso', 3),
(13, 'Nhận hồ sơ đã thụ lý', 'forwardback', 3),
(14, 'Kho lưu trữ', 'saveHoso', 9),
(15, 'Thống kê TTHC', 'statisticTTHC', 4),
(16, 'Trả hồ sơ', 'giveback', 3);

-- --------------------------------------------------------

--
-- Table structure for table `groupfunction`
--

CREATE TABLE IF NOT EXISTS `groupfunction` (
  `idGroupFunction` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `Role` int(11) NOT NULL,
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGroupFunction`),
  KEY `fk_GroupFunction_Role1_idx` (`Role`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `groupfunction`
--

INSERT INTO `groupfunction` (`idGroupFunction`, `name`, `description`, `Role`, `icon`) VALUES
(1, 'Quản trị hệ thống', NULL, 1, 'icon-screen2'),
(2, 'Niêm yết thủ tục hành chính', NULL, 2, 'icon-copy'),
(3, 'Xử lý hồ sơ hành chính', NULL, 2, 'icon-stack'),
(4, 'Thống kê', NULL, 3, 'icon-bars'),
(5, 'Hỏi đáp trực tuyến', NULL, 2, 'icon-bubble6'),
(7, 'Phân quyền cán bộ', NULL, 3, 'icon-bug'),
(9, 'Kho lưu trữ hồ sơ', NULL, 2, 'icon-table');

-- --------------------------------------------------------

--
-- Table structure for table `hoidaptt`
--

CREATE TABLE IF NOT EXISTS `hoidaptt` (
  `idHoiDapTT` int(11) NOT NULL AUTO_INCREMENT,
  `TTHC` int(11) NOT NULL,
  `CongDan` int(11) DEFAULT NULL,
  `CauHoi` text NOT NULL,
  `CauTraLoi` text,
  `isHide` tinyint(1) NOT NULL,
  `thoigianhoi` date NOT NULL,
  `thoigiantraloi` date DEFAULT NULL,
  PRIMARY KEY (`idHoiDapTT`),
  KEY `FK_HoiDapTT_DichVu_idx` (`TTHC`),
  KEY `FK_HoiDapTT_CongDan_idx` (`CongDan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `hoidaptt`
--

INSERT INTO `hoidaptt` (`idHoiDapTT`, `TTHC`, `CongDan`, `CauHoi`, `CauTraLoi`, `isHide`, `thoigianhoi`, `thoigiantraloi`) VALUES
(3, 25, 3, 'afdlkajflkdajkflkdjaflmcxm,.bm.xc,vmslkjfsdafdas', 'ok', 0, '2014-05-23', '2014-05-05'),
(17, 25, 3, 'afdlkajflkdajkflkdjaflmcxm,.bm.xc,vmslkjfsdafdas', 'ok', 0, '2014-05-23', '2014-05-05'),
(18, 25, 3, 'afdlkajflkdajkflkdjaflmcxm,.bm.xc,vmslkjfsdafdas', 'uh', 0, '2014-05-23', '2014-05-05'),
(19, 25, 3, 'afdlkajflkdajkflkdjaflmcxm,.bm.xc,vmslkjfsdafdas', 'ok', 0, '2014-05-23', '2014-05-05'),
(20, 25, 3, 'afdlkajflkdajkflkdjaflmcxm,.bm.xc,vmslkjfsdafdas', 'ok men', 0, '2014-05-23', '2014-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `hosotthc`
--

CREATE TABLE IF NOT EXISTS `hosotthc` (
  `idHoSoTTHC` int(11) NOT NULL AUTO_INCREMENT,
  `TTHC` int(11) DEFAULT NULL,
  `CongDan` int(11) DEFAULT NULL,
  `NgayNhan` date NOT NULL,
  `NgayHenTra` date NOT NULL,
  `IsSentDVTL` tinyint(1) DEFAULT NULL,
  `IsRecieveDVTL` tinyint(1) DEFAULT NULL,
  `sobiennhanhoso` int(11) NOT NULL,
  PRIMARY KEY (`idHoSoTTHC`),
  KEY `FK_HSTTHC_CongDan_idx` (`CongDan`),
  KEY `FK_HSTTHC_TTHC_idx` (`TTHC`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=151 ;

--
-- Dumping data for table `hosotthc`
--

INSERT INTO `hosotthc` (`idHoSoTTHC`, `TTHC`, `CongDan`, `NgayNhan`, `NgayHenTra`, `IsSentDVTL`, `IsRecieveDVTL`, `sobiennhanhoso`) VALUES
(1, 25, 2, '2014-04-21', '2014-04-21', NULL, NULL, 0),
(2, 25, 2, '2014-04-21', '2014-04-21', NULL, NULL, 0),
(16, 25, 1, '2014-04-17', '2014-04-22', NULL, NULL, 0),
(19, 25, 1, '2014-04-22', '2014-04-22', NULL, NULL, 0),
(20, 25, 4, '2014-04-22', '2014-04-22', NULL, NULL, 0),
(21, 29, 5, '2014-04-23', '2014-04-23', NULL, NULL, 0),
(22, 30, 7, '2014-04-23', '2014-04-23', NULL, NULL, 0),
(23, 31, 7, '2014-04-23', '2014-04-23', NULL, NULL, 0),
(24, 32, 8, '2014-04-24', '2014-04-24', NULL, NULL, 0),
(25, 26, 32, '2014-04-27', '2014-04-27', NULL, NULL, 0),
(26, 26, 34, '2014-04-27', '2014-04-27', NULL, NULL, 0),
(28, 26, 1, '2014-04-27', '2014-04-27', NULL, NULL, 0),
(29, 26, 1, '2014-04-27', '2014-04-27', NULL, NULL, 0),
(30, 26, 26, '2014-04-29', '2014-04-29', NULL, NULL, 31318),
(31, 25, 28, '2014-04-29', '2014-04-29', NULL, NULL, 4122),
(32, 25, 28, '2014-04-29', '2014-04-29', NULL, NULL, 30539),
(33, 25, 28, '2014-04-29', '2014-04-29', NULL, NULL, 11554),
(34, 25, 28, '2014-04-29', '2014-04-29', NULL, NULL, 8169),
(35, 26, 1, '2014-04-29', '2014-04-29', NULL, NULL, 17331),
(36, 26, 1, '2014-04-29', '2014-04-29', NULL, NULL, 3440),
(37, 36, 15, '2014-04-30', '2014-04-30', NULL, NULL, 257),
(38, 36, 15, '2014-04-30', '2014-04-30', NULL, NULL, 27558),
(39, 36, 15, '2014-04-30', '2014-04-30', NULL, NULL, 3725),
(40, 36, 15, '2014-04-30', '2014-04-30', NULL, NULL, 6631),
(41, 35, 16, '2014-05-05', '2014-05-05', NULL, NULL, 3373),
(42, 35, 16, '2014-05-05', '2014-05-05', NULL, NULL, 610),
(43, 35, 16, '2014-05-05', '2014-05-05', NULL, NULL, 24817),
(48, 35, 16, '2014-05-05', '2014-05-05', NULL, NULL, 11844),
(49, 35, 16, '2014-05-05', '2014-05-05', NULL, NULL, 6957),
(50, 35, 16, '2014-05-05', '2014-05-05', NULL, NULL, 5720),
(52, 35, 17, '2014-05-05', '2014-05-05', NULL, NULL, 12084),
(53, 26, 1, '2014-05-05', '2014-05-05', NULL, NULL, 8541),
(54, 26, 1, '2014-05-05', '2014-05-05', NULL, NULL, 28547),
(55, 26, 1, '2014-05-05', '2014-05-05', NULL, NULL, 15058),
(56, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 6183),
(57, 38, 36, '2014-05-06', '2014-05-06', NULL, NULL, 31641),
(58, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 28254),
(59, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 21055),
(60, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 23500),
(61, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 26380),
(62, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 26867),
(66, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 20825),
(67, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 28181),
(68, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 14421),
(70, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 32255),
(71, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 5321),
(72, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 1996),
(76, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 1775),
(77, 39, 35, '2014-05-06', '2014-05-06', NULL, NULL, 30204),
(78, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 27056),
(79, 39, 36, '2014-05-06', '2014-05-06', NULL, NULL, 24434),
(80, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 20521),
(81, 38, 36, '2014-05-06', '2014-05-06', NULL, NULL, 24347),
(82, 42, 42, '2014-05-08', '2014-05-08', NULL, NULL, 29608),
(83, 42, 37, '2014-05-08', '2014-05-08', NULL, NULL, 8001),
(84, 40, 35, '2014-05-11', '2014-05-11', NULL, NULL, 16856),
(85, 40, 35, '2014-05-11', '2014-05-11', NULL, NULL, 25310),
(86, 35, 1, '2014-05-13', '2014-05-13', NULL, NULL, 16948),
(87, 35, 1, '2014-05-13', '2014-05-13', NULL, NULL, 6801),
(88, 35, 1, '2014-05-13', '2014-05-13', NULL, NULL, 11766),
(89, 35, 29, '2014-05-13', '2014-05-13', NULL, NULL, 2015),
(90, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 11210),
(91, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 20346),
(92, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 24891),
(93, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 402),
(94, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 22371),
(95, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 3936),
(96, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 31769),
(97, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 10949),
(98, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 27674),
(99, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 9035),
(100, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 4392),
(101, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 11841),
(102, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 12262),
(103, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 9438),
(104, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 5181),
(105, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 11444),
(106, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 4317),
(107, 44, 43, '2014-05-14', '2014-05-14', NULL, NULL, 13394),
(108, 44, 44, '2014-05-14', '2014-05-14', NULL, NULL, 29475),
(109, 42, 13, '2014-05-15', '2014-06-20', NULL, NULL, 8094),
(110, 42, 17, '2014-05-17', '2014-05-17', NULL, NULL, 8481),
(111, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 22854),
(112, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 1799),
(113, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 20690),
(114, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 5539),
(115, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 12966),
(116, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 21735),
(117, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 14484),
(118, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 24437),
(119, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 4256),
(120, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 1113),
(121, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 10270),
(122, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 26879),
(123, 42, 13, '2014-04-17', '2014-05-17', NULL, NULL, 5836),
(124, 42, 13, '2014-04-17', '2014-05-17', NULL, NULL, 24381),
(125, 42, 13, '2014-04-17', '2014-05-17', NULL, NULL, 21298),
(126, 42, 13, '2014-01-17', '2014-05-17', NULL, NULL, 31742),
(127, 42, 13, '2014-02-17', '2014-05-17', NULL, NULL, 24415),
(128, 42, 13, '2014-03-17', '2014-05-17', NULL, NULL, 15788),
(129, 42, 13, '2014-03-17', '2014-05-17', NULL, NULL, 20532),
(130, 42, 13, '2014-04-17', '2014-05-17', NULL, NULL, 11869),
(131, 42, 13, '2014-04-17', '2014-05-17', NULL, NULL, 22659),
(132, 42, 13, '2014-04-17', '2014-05-17', NULL, NULL, 18944),
(133, 42, 13, '2014-04-17', '2014-05-17', NULL, NULL, 12857),
(134, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 3349),
(135, 42, 13, '2014-04-17', '2014-05-17', NULL, NULL, 31498),
(136, 42, 13, '2014-04-17', '2014-05-17', NULL, NULL, 10282),
(137, 42, 13, '2014-04-17', '2014-05-17', NULL, NULL, 8059),
(138, 42, 13, '2014-04-17', '2014-05-17', NULL, NULL, 8678),
(139, 42, 13, '2014-02-17', '2014-05-17', NULL, NULL, 8359),
(140, 42, 13, '2014-01-17', '2014-05-17', NULL, NULL, 31060),
(141, 42, 13, '2014-04-17', '2014-05-17', NULL, NULL, 26355),
(142, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 27091),
(143, 42, 13, '2014-04-17', '2014-05-17', NULL, NULL, 24818),
(144, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 4016),
(145, 42, 13, '2014-05-17', '2014-05-17', NULL, NULL, 2320),
(146, 42, 13, '2014-05-18', '2014-05-18', NULL, NULL, 17506),
(147, 42, 13, '2014-05-18', '2014-05-18', NULL, NULL, 10739),
(148, 42, 13, '2014-04-18', '2014-05-18', NULL, NULL, 5808),
(149, 42, 13, '2014-03-18', '2014-05-18', NULL, NULL, 31017),
(150, 48, 48, '2014-05-18', '2011-05-18', NULL, NULL, 22174);

-- --------------------------------------------------------

--
-- Table structure for table `linhvuc`
--

CREATE TABLE IF NOT EXISTS `linhvuc` (
  `idLinhVuc` int(11) NOT NULL AUTO_INCREMENT,
  `NameDV` varchar(45) NOT NULL,
  `MoTaLinhVuc` varchar(255) NOT NULL,
  `tenant` int(11) NOT NULL,
  PRIMARY KEY (`idLinhVuc`),
  KEY `IDX_F09E180E4E59C462` (`tenant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `linhvuc`
--

INSERT INTO `linhvuc` (`idLinhVuc`, `NameDV`, `MoTaLinhVuc`, `tenant`) VALUES
(1, 'đất', '111111111111111', 3),
(2, 'cấp sổ đỏ', '1111111111', 3),
(3, 'hôn nhân', 'aa', 3),
(4, 'gia đinh', '122', 3),
(5, 'kế hoạch hóa gia đình', 'abcxyz', 3),
(6, 'thu tiền học phí', '2 tỉ', 3),
(7, 'buôn bán bất động sản', 'abcxyz', 3),
(8, 'cấp phép xây dựng cung văn hóa hữu nghị việt ', 'abcxyz', 4),
(9, 'cấp học bổng', 'đi ko về luôn @@', 4),
(10, 'cạn ý tưởng luôn', 'chán', 7),
(11, 'test cái vớ vẩn này chán vl', 'cjasm', 7),
(12, 'buôn bán bất động sản', 'sdfsdfdf', 8),
(13, 'cạn ý tưởng luôn', 'jgfhgf', 8),
(14, 'cạn ý tưởng luôn', 'àdafsd', 3),
(15, 'hôn nhân', 'hôn nhân', 17),
(16, 'Hôn nhân', 'Đăng ký kết hôn', 18),
(17, 'Đăng ký cho thuê trung cư', 'Buôn bán bất động sản', 19),
(18, 'buôn bán bất động sản', 'Buôn bán nhà đất', 27);

-- --------------------------------------------------------

--
-- Table structure for table `quyenhan`
--

CREATE TABLE IF NOT EXISTS `quyenhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mota` varchar(45) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_quyenhan_role1_idx` (`role`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `quyenhan`
--

INSERT INTO `quyenhan` (`id`, `name`, `mota`, `role`) VALUES
(1, 'niêm yết', NULL, 2),
(2, 'tiếp nhận', NULL, 2),
(3, 'phân quyền xử lý', NULL, 4),
(4, 'hỏi đáp', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quyentthc`
--

CREATE TABLE IF NOT EXISTS `quyentthc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mota` varchar(45) DEFAULT NULL,
  `User` int(11) DEFAULT NULL,
  `TTHC` int(11) DEFAULT NULL,
  `Quyenhan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_QuyenTTHC_User1_idx` (`User`),
  KEY `fk_QuyenTTHC_TTHC1_idx` (`TTHC`),
  KEY `fk_QuyenTTHC_Quyenhan1_idx` (`Quyenhan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=165 ;

--
-- Dumping data for table `quyentthc`
--

INSERT INTO `quyentthc` (`id`, `mota`, `User`, `TTHC`, `Quyenhan`) VALUES
(65, NULL, 20, 25, 1),
(66, NULL, 20, 25, 2),
(67, NULL, 20, 25, 3),
(68, NULL, 20, 25, 4),
(69, NULL, 20, 26, 1),
(70, NULL, 20, 26, 2),
(71, NULL, 20, 26, 3),
(72, NULL, 20, 26, 4),
(73, NULL, 24, 27, 1),
(74, NULL, 24, 27, 2),
(75, NULL, 24, 27, 3),
(76, NULL, 24, 27, 4),
(77, NULL, 24, 28, 1),
(78, NULL, 24, 28, 2),
(79, NULL, 24, 28, 3),
(80, NULL, 24, 28, 4),
(81, NULL, 24, 29, 1),
(82, NULL, 24, 29, 2),
(83, NULL, 24, 29, 3),
(84, NULL, 24, 29, 4),
(85, NULL, 30, 30, 1),
(86, NULL, 30, 30, 2),
(87, NULL, 30, 30, 3),
(88, NULL, 30, 30, 4),
(89, NULL, 30, 31, 1),
(90, NULL, 30, 31, 2),
(91, NULL, 30, 31, 3),
(92, NULL, 30, 31, 4),
(93, NULL, 33, 32, 1),
(94, NULL, 33, 32, 2),
(95, NULL, 33, 32, 3),
(96, NULL, 33, 32, 4),
(97, NULL, 33, 33, 1),
(98, NULL, 33, 33, 2),
(99, NULL, 33, 33, 3),
(100, NULL, 33, 33, 4),
(101, NULL, 33, 34, 1),
(102, NULL, 33, 34, 2),
(103, NULL, 33, 34, 3),
(104, NULL, 33, 34, 4),
(105, NULL, 20, 35, 1),
(106, NULL, 20, 35, 2),
(107, NULL, 46, 35, 3),
(108, NULL, 20, 35, 4),
(109, NULL, 20, 36, 1),
(110, NULL, 20, 36, 2),
(111, NULL, 46, 36, 3),
(112, NULL, 20, 36, 4),
(113, NULL, 20, 37, 1),
(114, NULL, 20, 37, 2),
(115, NULL, 46, 37, 3),
(116, NULL, 20, 37, 4),
(117, NULL, 52, 38, 1),
(118, NULL, 53, 38, 2),
(119, NULL, 55, 38, 3),
(120, NULL, 52, 38, 4),
(121, NULL, 52, 39, 1),
(122, NULL, 53, 39, 2),
(123, NULL, 55, 39, 3),
(124, NULL, 53, 39, 4),
(125, NULL, 52, 40, 1),
(126, NULL, 52, 40, 2),
(127, NULL, 55, 40, 3),
(128, NULL, 53, 40, 4),
(129, NULL, 52, 41, 1),
(130, NULL, 52, 41, 2),
(131, NULL, 55, 41, 3),
(132, NULL, 52, 41, 4),
(133, NULL, 57, 42, 1),
(134, NULL, 57, 42, 2),
(135, NULL, 59, 42, 3),
(136, NULL, 57, 42, 4),
(141, NULL, 64, 44, 1),
(142, NULL, 64, 44, 2),
(143, NULL, 66, 44, 3),
(144, NULL, 64, 44, 4),
(145, NULL, 64, 45, 1),
(146, NULL, 64, 45, 2),
(147, NULL, 66, 45, 3),
(148, NULL, 64, 45, 4),
(149, NULL, 20, 46, 1),
(150, NULL, 20, 46, 2),
(151, NULL, 46, 46, 3),
(152, NULL, 20, 46, 4),
(153, NULL, 20, 47, 1),
(154, NULL, 20, 47, 2),
(155, NULL, 46, 47, 3),
(156, NULL, 20, 47, 4),
(157, NULL, 71, 48, 1),
(158, NULL, 71, 48, 2),
(159, NULL, 74, 48, 3),
(160, NULL, 71, 48, 4),
(161, NULL, 71, 49, 1),
(162, NULL, 71, 49, 2),
(163, NULL, 74, 49, 3),
(164, NULL, 71, 49, 4);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `role`) VALUES
(1, 'Quản trị viên', 'ROLE_ADMIN'),
(2, 'Chuyên viên BP1C', 'ROLE_STAFF'),
(3, 'Trưởng BP1C', 'ROLE_MAJOR'),
(4, 'Lãnh đạo', 'ROLE_LEADER');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_functions`
--

CREATE TABLE IF NOT EXISTS `role_has_functions` (
  `Role_id` int(11) NOT NULL,
  `Functions_idFunctions` int(11) NOT NULL,
  PRIMARY KEY (`Role_id`,`Functions_idFunctions`),
  KEY `fk_Role_has_Functions_Functions1_idx` (`Functions_idFunctions`),
  KEY `fk_Role_has_Functions_Role1_idx` (`Role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE IF NOT EXISTS `tenant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quequan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CMTND` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDT` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `domain` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `tendonvi` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4E59C462A7A91E0B` (`domain`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`id`, `hoten`, `quequan`, `CMTND`, `SDT`, `ngaysinh`, `domain`, `tendonvi`) VALUES
(3, 'Lê Đình Thanh', 'Hà Nội', '0123456789', '0123456789', '2014-04-23', 'uet', 'Đại học công nghệ'),
(4, 'Nguyễn Chí Thanh', 'Hà Nội', '0123456789', '0123456789', '2014-04-01', 'ulis', 'ĐH Ngoại Ngữ'),
(6, 'Ibrahimovic', '123', '231', '42321313', '2009-01-01', 'sol', 'Khoa luật'),
(7, 'Rooney', 'HN', '0132', '32132', '2009-01-01', 'bbc', '213132'),
(8, 'Messi', 'Brazil', '12234', '12341', '2009-01-01', 'vnu', '234'),
(9, 'Ibrahimovic', 'Brazil', '0132', '12341', '2009-01-01', 'abc', 'Bộ văn hóa thể thao và du lịch'),
(10, 'Ibrahimovic', 'Brazil', '0132', '12341', '2009-01-01', 'xyz', 'Bộ văn hóa thể thao và du lịch'),
(11, 'Ibrahimovic', 'Brazil', '0132', '12341', '2009-01-01', 'ubuntu', 'Bộ văn hóa thể thao và du lịch'),
(12, '123', '123', '0132', '12341', '2009-01-01', 'ntu', 'ĐHQG'),
(14, 'Ibrahimovic', '123', '0132', '12341', '1111-02-24', 'yaml', 'Khoa luật'),
(15, 'Ibrahimovic', '123', '0132', '12341', '1111-02-24', 'xml', 'sadfdaf'),
(16, 'Ronaldo', 'Brazil', '0132', '12341', '1111-02-24', 'html', 'Microsoft'),
(17, 'Nguyễn Văn A', 'Hà Nội', '012914971', '01656122711', '1992-11-25', 'kateteddy', 'Lao động chân tay'),
(18, 'Nguyễn Hữu Kết', 'Hà Nội', '012914951', '01656122711', '1992-11-25', 'coltech', 'Đại học công nghệ'),
(19, NULL, 'Hưng Hà', '012914951', '42321313', '1111-11-24', 'ars', 'Arsenal'),
(20, NULL, 'Brazil', '1235564', '23165', '1992-11-25', 'ibm', 'Apple'),
(25, NULL, 'Brazil', '231', '42321313', '1111-02-25', 'lll', 'Khoa luật'),
(26, NULL, 'Brazil', '132', '12341', '1930-01-01', 'app', 'Apple'),
(27, NULL, 'Brazil', '132', '12341', '1930-01-01', 'samsung', 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `thontincanhan`
--

CREATE TABLE IF NOT EXISTS `thontincanhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quequan` varchar(45) DEFAULT NULL,
  `CMTND` varchar(45) DEFAULT NULL,
  `SDT` varchar(45) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `pathtoimage` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `noiohientai` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `thontincanhan`
--

INSERT INTO `thontincanhan` (`id`, `quequan`, `CMTND`, `SDT`, `ngaysinh`, `pathtoimage`, `email`, `noiohientai`) VALUES
(1, 'Hà Nội', '0123456789', '123456789', '1958-04-22', 'uploads/avatar/bulldog.jpg', 'abc@xyz', 'Hứng Khởi'),
(2, 'Hà Nội', NULL, '1', '1967-04-23', 'uploads/avatar/anonymous.jpg', NULL, NULL),
(3, NULL, NULL, NULL, '2014-04-23', 'uploads/avatar/icon.png', NULL, NULL),
(4, NULL, NULL, NULL, '2014-04-23', 'uploads/avatar/icon.png', NULL, NULL),
(5, NULL, '0123456789', NULL, NULL, 'uploads/avatar/images.jpg', NULL, NULL),
(6, NULL, NULL, NULL, '2014-05-04', 'uploads/avatar/bulldog.jpg', NULL, NULL),
(7, 'Hứng Yên', '012952136', '0123456789', '1992-12-23', 'uploads/avatar/icon.png', NULL, NULL),
(8, 'Hà Nội', '0123456789', '0123456789', '2000-05-19', NULL, NULL, NULL),
(9, 'fdsafdas', '031321', '0132413', '1111-11-25', NULL, NULL, NULL),
(10, 'Hà Nội', NULL, NULL, '1992-05-23', 'uploads/avatar/SaaSinCloud-rep.pdf', 'abc@xyz', 'Hứng Khởi'),
(11, 'Hà Nội', '0123456789', '01223', '1992-04-19', 'uploads/avatar/bulldog.jpg', 'abc@xyz', 'Hứng Khởi'),
(12, NULL, '1431245', NULL, NULL, NULL, 'abc@xyz', 'Hứng Khởi'),
(13, NULL, '1234567898', NULL, NULL, 'uploads/avatar/images.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrangthuly`
--

CREATE TABLE IF NOT EXISTS `tinhtrangthuly` (
  `idTinhTrangThuLy` int(11) NOT NULL AUTO_INCREMENT,
  `Time` datetime NOT NULL,
  `Chiutrachnhiem` int(11) DEFAULT NULL,
  `Trangthaihoso` int(11) DEFAULT NULL,
  `Hosotthc` int(11) DEFAULT NULL,
  `Tiepnhan` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTinhTrangThuLy`),
  KEY `fk_tinhtrangthuly_Trangthaihoso1_idx` (`Trangthaihoso`),
  KEY `IDX_33CFE5E1BA4A83C4` (`Hosotthc`),
  KEY `IDX_33CFE5E1554DDB45` (`Chiutrachnhiem`),
  KEY `IDX_33CFE5E1405A5954` (`Tiepnhan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=203 ;

--
-- Dumping data for table `tinhtrangthuly`
--

INSERT INTO `tinhtrangthuly` (`idTinhTrangThuLy`, `Time`, `Chiutrachnhiem`, `Trangthaihoso`, `Hosotthc`, `Tiepnhan`) VALUES
(5, '2014-04-22 00:00:00', NULL, NULL, 0, NULL),
(6, '2014-05-05 16:49:22', NULL, 1, 0, NULL),
(7, '2014-05-05 16:49:25', NULL, 1, 0, NULL),
(8, '2014-05-05 16:49:26', NULL, 1, 0, NULL),
(9, '2014-05-05 17:26:05', NULL, 1, 0, NULL),
(10, '2014-05-05 17:26:06', NULL, 1, 0, NULL),
(11, '2014-05-05 17:26:08', NULL, 1, 0, NULL),
(12, '2014-05-06 03:24:46', NULL, 1, 0, NULL),
(13, '2014-05-06 03:25:44', NULL, 1, 35, NULL),
(14, '2014-05-06 04:00:53', NULL, 1, 76, NULL),
(15, '2014-05-06 04:11:06', NULL, 1, 77, NULL),
(16, '2014-05-06 04:20:16', NULL, 1, 78, NULL),
(17, '2014-05-06 04:20:55', NULL, 1, 79, NULL),
(18, '2014-05-06 04:21:43', NULL, 1, 80, NULL),
(19, '2014-05-06 04:33:37', 53, 1, 81, NULL),
(20, '2014-05-06 05:47:07', NULL, 2, 77, 2),
(21, '2014-05-07 04:58:35', NULL, 2, 76, 2),
(22, '2014-05-08 10:27:55', 57, 1, 82, NULL),
(23, '2014-05-08 10:28:31', 57, 1, 83, NULL),
(24, '2014-05-08 10:46:51', NULL, 2, 82, 2),
(25, '2014-05-11 04:59:20', 52, 1, 84, NULL),
(26, '2014-05-11 05:35:11', NULL, 2, 84, 6),
(27, '2014-05-11 05:36:27', 52, 1, 85, NULL),
(28, '2014-05-13 04:11:30', NULL, 2, 35, 7),
(29, '2014-05-13 04:16:04', 20, 1, 86, NULL),
(30, '2014-05-13 16:04:42', 20, 1, 87, NULL),
(31, '2014-05-13 16:04:47', 20, 1, 88, NULL),
(32, '2014-05-13 16:05:08', 20, 1, 89, NULL),
(33, '2014-05-14 02:22:09', 64, 1, 90, NULL),
(34, '2014-05-14 02:22:39', 64, 1, 91, NULL),
(35, '2014-05-14 02:28:20', 64, 1, 92, NULL),
(36, '2014-05-14 02:34:37', NULL, 2, 91, 8),
(37, '2014-05-14 02:45:15', NULL, 2, 92, 9),
(38, '2014-05-14 02:46:11', NULL, 2, 90, 9),
(39, '2014-05-14 02:47:01', 64, 1, 93, NULL),
(40, '2014-05-14 02:47:06', 64, 1, 94, NULL),
(41, '2014-05-14 02:47:08', 64, 1, 95, NULL),
(42, '2014-05-14 02:47:11', 64, 1, 96, NULL),
(43, '2014-05-14 02:47:30', NULL, 2, 94, 9),
(44, '2014-05-14 02:48:08', NULL, 2, 95, 9),
(45, '2014-05-14 02:50:03', 64, 1, 97, NULL),
(46, '2014-05-14 02:50:21', NULL, 2, 97, 9),
(47, '2014-05-14 02:50:51', 64, 1, 98, NULL),
(48, '2014-05-14 02:50:56', 64, 1, 99, NULL),
(49, '2014-05-14 02:50:59', 64, 1, 100, NULL),
(50, '2014-05-14 02:51:19', NULL, 2, 98, 9),
(51, '2014-05-14 02:54:50', NULL, 2, 99, 9),
(52, '2014-05-14 02:54:50', NULL, 2, 100, 9),
(53, '2014-05-14 02:54:50', NULL, 2, 93, 9),
(54, '2014-05-14 02:54:50', NULL, 2, 96, 9),
(55, '2014-05-14 03:11:34', 64, 1, 101, NULL),
(56, '2014-05-14 03:12:38', 64, 1, 102, NULL),
(57, '2014-05-14 03:14:11', 64, 1, 103, NULL),
(58, '2014-05-14 03:16:11', 64, 1, 104, NULL),
(59, '2014-05-14 03:16:41', 64, 1, 105, NULL),
(60, '2014-05-14 03:16:55', 64, 1, 106, NULL),
(61, '2014-05-14 03:18:40', 64, 1, 107, NULL),
(62, '2014-05-14 03:28:28', NULL, 2, 101, 9),
(63, '2014-05-14 03:28:28', NULL, 2, 102, 9),
(64, '2014-05-14 03:29:34', 64, 1, 108, NULL),
(65, '2014-05-15 03:44:49', 57, 1, 109, NULL),
(66, '2014-05-15 15:53:10', NULL, 2, 109, 1),
(67, '2014-05-17 03:10:05', 57, 1, 110, NULL),
(68, '2014-05-17 03:13:28', NULL, 2, 110, 2),
(69, '2014-05-17 03:13:28', NULL, 2, 83, 2),
(70, '2014-05-17 03:23:40', 57, 5, 109, 1),
(71, '2014-05-17 03:23:40', 57, 5, 110, 1),
(72, '2014-05-17 03:31:31', 57, 5, 82, 10),
(73, '2014-05-17 03:31:31', 57, 5, 83, 10),
(74, '2014-05-17 03:46:17', 57, 1, 111, NULL),
(75, '2014-05-17 03:46:21', 57, 1, 112, NULL),
(76, '2014-05-17 03:46:35', NULL, 2, 111, 1),
(77, '2014-05-17 03:46:35', NULL, 2, 112, 1),
(78, '2014-05-17 03:46:54', 57, 5, 111, 1),
(79, '2014-05-17 03:46:54', 57, 5, 112, 1),
(80, '2014-05-17 03:47:39', 57, 1, 113, NULL),
(81, '2014-05-17 03:47:45', 57, 1, 114, NULL),
(82, '2014-05-17 03:48:00', NULL, 2, 114, 1),
(83, '2014-05-17 03:48:00', NULL, 2, 113, 1),
(84, '2014-05-17 03:48:17', 57, 5, 113, 1),
(85, '2014-05-17 03:59:46', 57, 6, 83, NULL),
(86, '2014-05-17 04:33:32', 57, 6, 109, NULL),
(87, '2014-05-17 04:34:36', 57, 6, 110, NULL),
(88, '2014-05-17 04:35:28', 57, 6, 111, NULL),
(89, '2014-05-17 04:38:53', 57, 6, 112, NULL),
(90, '2014-05-17 04:39:20', 57, 6, 113, NULL),
(91, '2014-05-17 04:40:50', 57, 6, 82, NULL),
(92, '2014-05-17 04:42:41', 57, 1, 115, NULL),
(93, '2014-05-17 04:42:46', 57, 1, 116, NULL),
(94, '2014-05-17 04:42:49', 57, 1, 117, NULL),
(95, '2014-05-17 04:43:06', NULL, 2, 115, 2),
(96, '2014-05-17 04:43:06', NULL, 2, 116, 2),
(97, '2014-05-17 04:43:06', NULL, 2, 117, 2),
(98, '2014-05-17 04:43:29', 57, 5, 114, 1),
(99, '2014-05-17 04:43:29', 57, 5, 115, 1),
(100, '2014-05-17 04:43:29', 57, 5, 116, 1),
(101, '2014-05-17 04:43:29', 57, 5, 117, 1),
(102, '2014-05-17 04:43:40', 57, 6, 114, NULL),
(103, '2014-05-17 04:44:13', 57, 6, 115, NULL),
(104, '2014-05-17 04:47:48', 57, 1, 118, NULL),
(105, '2014-05-17 04:49:36', 57, 6, 116, NULL),
(106, '2014-05-17 04:50:21', 57, 6, 117, NULL),
(107, '2014-05-17 04:53:14', 57, 1, 119, NULL),
(108, '2014-05-17 04:53:18', 57, 1, 120, NULL),
(109, '2014-05-17 04:53:21', 57, 1, 121, NULL),
(110, '2014-05-17 04:53:24', 57, 1, 122, NULL),
(111, '2014-05-17 04:53:27', 57, 1, 123, NULL),
(112, '2014-05-17 04:53:47', NULL, 2, 121, 2),
(113, '2014-05-17 04:53:47', NULL, 2, 122, 2),
(114, '2014-05-17 04:53:47', NULL, 2, 123, 2),
(115, '2014-05-17 04:53:47', NULL, 2, 118, 2),
(116, '2014-05-17 04:53:47', NULL, 2, 119, 2),
(117, '2014-05-17 04:53:47', NULL, 2, 120, 2),
(118, '2014-05-17 04:54:07', 57, 5, 121, 10),
(119, '2014-05-17 04:54:07', 57, 5, 122, 10),
(120, '2014-05-17 04:54:07', 57, 5, 123, 10),
(121, '2014-05-17 04:54:07', 57, 5, 118, 10),
(122, '2014-05-17 04:54:07', 57, 5, 119, 10),
(123, '2014-05-17 04:54:07', 57, 5, 120, 10),
(124, '2014-05-17 04:54:19', 57, 6, 118, NULL),
(125, '2014-05-17 04:55:05', 57, 6, 119, NULL),
(126, '2014-05-17 04:55:33', 57, 6, 120, NULL),
(127, '2014-05-17 04:56:41', 57, 6, 121, NULL),
(128, '2014-05-17 04:57:04', 57, 6, 122, NULL),
(129, '2014-05-17 05:12:07', 57, 1, 124, NULL),
(130, '2014-05-17 05:12:34', 57, 1, 125, NULL),
(131, '2014-05-17 05:12:55', 57, 1, 126, NULL),
(132, '2014-05-17 05:16:20', 57, 1, 127, NULL),
(133, '2014-05-17 05:17:15', 57, 1, 128, NULL),
(134, '2014-05-17 05:19:33', 57, 1, 129, NULL),
(135, '2014-05-17 05:25:43', NULL, 2, 124, 1),
(136, '2014-05-17 05:25:43', NULL, 2, 125, 1),
(137, '2014-05-17 05:26:18', NULL, 2, 126, 2),
(138, '2014-05-17 05:26:18', NULL, 2, 127, 2),
(139, '2014-05-17 05:27:15', NULL, 2, 128, 1),
(140, '2014-05-17 05:28:12', NULL, 2, 129, 10),
(141, '2014-05-17 05:28:55', 57, 1, 130, NULL),
(142, '2014-05-17 05:28:59', 57, 1, 131, NULL),
(143, '2014-05-17 05:29:01', 57, 1, 132, NULL),
(144, '2014-05-17 05:29:03', 57, 1, 133, NULL),
(145, '2014-05-17 05:29:18', NULL, 2, 130, 1),
(146, '2014-05-17 05:29:41', NULL, 2, 131, 3),
(147, '2014-05-17 05:31:02', NULL, 2, 132, 3),
(148, '2014-05-17 05:33:23', NULL, 2, 133, 1),
(149, '2014-05-17 05:33:36', 57, 1, 134, NULL),
(150, '2014-05-17 05:33:40', 57, 1, 135, NULL),
(151, '2014-05-17 05:33:42', 57, 1, 136, NULL),
(152, '2014-05-17 05:33:46', 57, 1, 137, NULL),
(153, '2014-05-17 05:34:00', NULL, 2, 134, 10),
(154, '2014-05-17 05:34:00', NULL, 2, 135, 10),
(155, '2014-05-17 05:34:13', NULL, 2, 136, 1),
(156, '2014-05-17 05:34:13', NULL, 2, 137, 1),
(157, '2014-05-17 05:34:32', 57, 5, 124, 10),
(158, '2014-05-17 05:34:32', 57, 5, 125, 10),
(159, '2014-05-17 05:35:51', 57, 5, 126, 10),
(160, '2014-05-17 05:35:51', 57, 5, 127, 10),
(161, '2014-05-17 05:37:28', 57, 5, 128, 3),
(162, '2014-05-17 10:10:18', 57, 6, 123, NULL),
(163, '2014-05-17 10:11:17', 57, 6, 124, NULL),
(164, '2014-05-17 10:11:26', 57, 6, 125, NULL),
(165, '2014-05-17 10:11:39', 57, 6, 126, NULL),
(166, '2014-05-17 10:12:00', 57, 6, 128, NULL),
(167, '2014-05-17 10:12:27', 57, 6, 127, NULL),
(168, '2014-05-17 10:21:27', 57, 1, 138, NULL),
(169, '2014-05-17 10:21:31', 57, 1, 139, NULL),
(170, '2014-05-17 10:21:33', 57, 1, 140, NULL),
(171, '2014-05-17 10:21:47', NULL, 2, 139, 3),
(172, '2014-05-17 10:21:47', NULL, 2, 140, 3),
(173, '2014-05-17 10:21:47', NULL, 2, 138, 3),
(174, '2014-05-17 10:22:07', 57, 5, 132, 10),
(175, '2014-05-17 10:22:07', 57, 5, 133, 10),
(176, '2014-05-17 10:22:07', 57, 5, 129, 10),
(177, '2014-05-17 10:22:07', 57, 5, 130, 10),
(178, '2014-05-17 10:22:07', 57, 5, 131, 10),
(179, '2014-05-17 10:22:17', 57, 6, 129, NULL),
(180, '2014-05-17 10:26:21', 57, 6, 130, NULL),
(181, '2014-05-17 10:30:56', 57, 1, 141, NULL),
(182, '2014-05-17 10:32:33', 57, 1, 142, NULL),
(183, '2014-05-17 10:33:17', 57, 1, 143, NULL),
(184, '2014-05-17 10:34:45', 57, 1, 144, NULL),
(185, '2014-05-17 10:35:35', 57, 1, 145, NULL),
(186, '2014-05-17 10:39:58', NULL, 2, 141, 3),
(187, '2014-05-17 10:39:58', NULL, 2, 142, 3),
(188, '2014-05-17 10:40:49', NULL, 2, 143, 1),
(189, '2014-05-17 10:41:12', NULL, 2, 145, 2),
(190, '2014-05-17 10:41:12', NULL, 2, 144, 2),
(191, '2014-05-17 10:42:13', 57, 5, 134, 2),
(192, '2014-05-17 10:42:13', 57, 5, 135, 2),
(193, '2014-05-17 10:42:31', 57, 5, 137, 1),
(194, '2014-05-17 10:42:31', 57, 5, 138, 1),
(195, '2014-05-17 10:42:31', 57, 5, 139, 1),
(196, '2014-05-17 10:42:31', 57, 5, 140, 1),
(197, '2014-05-17 10:42:31', 57, 5, 136, 1),
(198, '2014-05-18 03:12:02', 57, 1, 146, NULL),
(199, '2014-05-18 03:12:31', 57, 1, 147, NULL),
(200, '2014-05-18 03:12:35', 57, 1, 148, NULL),
(201, '2014-05-18 03:12:37', 57, 1, 149, NULL),
(202, '2014-05-18 16:26:46', 71, 1, 150, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trangthaihoso`
--

CREATE TABLE IF NOT EXISTS `trangthaihoso` (
  `idTrangthaihoso` int(11) NOT NULL AUTO_INCREMENT,
  `trangthai` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTrangthaihoso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `trangthaihoso`
--

INSERT INTO `trangthaihoso` (`idTrangthaihoso`, `trangthai`) VALUES
(1, 'Mới tiếp nhận'),
(2, 'Chuyển thụ lý'),
(5, 'đã trả BP1C'),
(6, 'đã trả công dân - hoàn thành');

-- --------------------------------------------------------

--
-- Table structure for table `tthc`
--

CREATE TABLE IF NOT EXISTS `tthc` (
  `idTTHC` int(11) NOT NULL AUTO_INCREMENT,
  `NameTTHC` varchar(45) NOT NULL,
  `LinhVuc` int(11) NOT NULL,
  `DonViThuLy` int(11) DEFAULT NULL,
  `NoiDungThucHien` varchar(255) DEFAULT NULL,
  `GiayToHoSo` varchar(45) DEFAULT NULL,
  `ThoiGianGiaiQuyet` varchar(45) DEFAULT NULL,
  `IsHide` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idTTHC`),
  KEY `FK_TTHC_DichVu_idx` (`LinhVuc`),
  KEY `FK_TTHC_DVThuLy_idx` (`DonViThuLy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `tthc`
--

INSERT INTO `tthc` (`idTTHC`, `NameTTHC`, `LinhVuc`, `DonViThuLy`, `NoiDungThucHien`, `GiayToHoSo`, `ThoiGianGiaiQuyet`, `IsHide`) VALUES
(24, 'bán nhà trái phép', 7, NULL, NULL, NULL, NULL, 0),
(25, 'đề xuất cải tiến sách giáo khoa', 6, NULL, 'ok', 'ok', '20 năm', 1),
(26, 'sang tên sổ đỏ', 2, NULL, 'khi công dân có nhu cầu chuyển sổ đỏ', 'Gồm các giấy tờ hồ sơ quan trọng như cmtnd. .', '1 tháng', 1),
(27, 'Đi Hawoai', 9, NULL, 'hãy khóc đi khóc đi', 'giấy khám sức khỏa,200 triệu tiền hoa hồng', '2 tháng', 1),
(28, 'xin cấp phép xây dựng bộ giao thông vận tải', 8, NULL, 'ok', 'ok', 'ok', 1),
(29, 'Đóng bảo hiểm y tế', 9, NULL, '123', '123', '123', 1),
(30, 'đại khái là chán', 11, NULL, 'còn lại gì sau cơn mưa', 'bây h con đường lơi ấy', '2 năm', 1),
(31, 'chiều nay âm u quá', 11, NULL, 'fdsa', 'fadfdas', 'fasdasdf', 1),
(32, 'fadsfdas', 12, NULL, '123', '123', 'a', 1),
(33, 'giao thông vận tải', 13, NULL, NULL, NULL, NULL, 0),
(34, 'kiến trúc', 12, NULL, NULL, NULL, NULL, 0),
(35, 'giao thông vận tải', 1, NULL, '20', 'ok', 'oik', 1),
(36, 'heroes', 6, NULL, '232', '23', '23', 1),
(37, 'niêm yết tthc', 2, NULL, 'ok', 'ok', 'ko', 1),
(38, '123', 15, NULL, 'bố đéo biết', 'ko cần', '2 năm', 1),
(39, 'kiến trúc', 15, NULL, 'ok', 'ok', 'ok', 1),
(40, 'Và anh muốn xin lỗi em', 15, NULL, 'nghỉ đê', 'àd', 'adfasd', 1),
(41, 'Đăng ký kết hôn', 15, NULL, NULL, NULL, NULL, 0),
(42, 'Đăng ký kết hôn', 16, NULL, 'Thực hiện thủ tục đăng ký kết hôn giữa hai công dân khác giới trong phường xã thuộc thẩm quyền', 'Giấy tờ bắt buộc gồm: CMTND của 2 công dân,sổ', '1 tháng', 1),
(43, 'Giao thông vận tải', 17, NULL, NULL, NULL, NULL, 0),
(44, 'kiến trúc', 17, NULL, 'Kiến trúc', 'không có', '2 tháng', 1),
(45, 'xây dựng', 17, 3, NULL, NULL, NULL, 0),
(46, 'Mua bán bất động sản', 1, 4, 'Thực hiện quyền chuyển đôi người sử dụng nhà ở trên địa bàn quận cầu giấy', 'Gồm các giấy tờ nhà đất,giấy đăng ký kinh doa', '1 tháng', 1),
(47, 'kiến trúc', 1, 4, 'a', 'a', 'a', 1),
(48, 'Bán nhà giá rẻ', 18, 5, 'sdafasd', 'fdafdas', 'fasd', 1),
(49, 'Buôn lậu', 18, 5, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `Thontincanhan` int(11) DEFAULT NULL,
  `tenant` int(11) NOT NULL,
  `hoten` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `isActive_UNIQUE` (`isActive`),
  KEY `fk_User_Thontincanhan1_idx` (`Thontincanhan`),
  KEY `IDX_8D93D6494E59C462` (`tenant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `isActive`, `Thontincanhan`, `tenant`, `hoten`) VALUES
(1, 'admin@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, 2, 3, ''),
(20, 'staff@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, 1, 3, ''),
(21, 'major@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 3, ''),
(22, 'kate@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 3, ''),
(23, 'admin@ulis', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, 3, 4, ''),
(24, 'staff@ulis', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, 4, 4, ''),
(26, 'major@ulis', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 4, ''),
(28, 'admin@sol', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 6, ''),
(29, 'admin@bbc', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 7, ''),
(30, 'staff@bbc', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 7, ''),
(31, 'major@bbc', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 7, ''),
(32, 'admin@vnu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 8, ''),
(33, 'staff@vnu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 8, ''),
(34, 'major@vnu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 8, ''),
(35, 'leader@vnu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 8, ''),
(36, 'admin@abc', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, 5, 9, ''),
(37, 'admin@xyz', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 10, ''),
(38, 'admin@ubuntu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 11, ''),
(39, '@ubuntu', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, 11, ''),
(40, '@ubuntu', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, 11, ''),
(41, 'staff', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 11, ''),
(42, 'kate', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 11, ''),
(44, 'staff1@ubuntu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 11, ''),
(45, 'admin@ntu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 12, ''),
(46, 'leader@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 3, ''),
(48, 'admin@yaml', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 14, ''),
(49, 'admin@xml', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 15, ''),
(50, 'admin@html', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, 6, 16, ''),
(51, 'admin@kateteddy', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, 7, 17, ''),
(52, 'staff1@kateteddy', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, 8, 17, ''),
(53, 'staff2@kateteddy', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, 9, 17, ''),
(54, 'major@kateteddy', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 17, ''),
(55, 'leader@kateteddy', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 17, ''),
(56, 'admin@coltech', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, 12, 18, ''),
(57, 'staff1@coltech', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, 10, 18, ''),
(58, 'staff2@coltech', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 18, ''),
(59, 'leader@coltech', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 18, ''),
(60, 'major@coltech', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 18, ''),
(61, 'ketnh_55@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 3, ''),
(62, 'ketnh_55@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 3, ''),
(63, 'admin@ars', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, 11, 19, 'Cù Trọng Xoay'),
(64, 'hohuubinh@ars', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 19, 'Hồ Hữu Bính'),
(65, 'nguyenvancuong@ars', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 19, 'Nguyễn Văn Cương'),
(66, 'hoangvanthang@ars', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 19, 'Hoàng Văn Thắng'),
(67, 'admin@ibm', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 20, 'Cù Trọng Xoay'),
(68, 'admin@lll', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 25, 'Cù Trọng Xoay'),
(69, 'admin@app', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 26, 'Cù Trọng Xoay'),
(70, 'admin@samsung', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, 13, 27, 'Cù Trọng Xoay'),
(71, 'staff@samsung', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 27, 'Hoàng Văn Thắng'),
(72, 'staff2@samsung', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 27, 'Hồ Hữu Bính'),
(73, 'major@samsung', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 27, 'Phạm Khánh Huyền'),
(74, 'leader@samsung', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 27, 'Nguyễn Thị Loan'),
(75, 'super@samsung', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 27, 'SuperHero');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_role`
--

CREATE TABLE IF NOT EXISTS `user_has_role` (
  `User_id` int(11) NOT NULL,
  `Role_id` int(11) NOT NULL,
  PRIMARY KEY (`User_id`,`Role_id`),
  KEY `fk_User_has_Role_Role1_idx` (`Role_id`),
  KEY `fk_User_has_Role_User1_idx` (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_has_role`
--

INSERT INTO `user_has_role` (`User_id`, `Role_id`) VALUES
(1, 1),
(23, 1),
(28, 1),
(29, 1),
(32, 1),
(36, 1),
(37, 1),
(38, 1),
(45, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(56, 1),
(63, 1),
(67, 1),
(68, 1),
(70, 1),
(75, 1),
(20, 2),
(24, 2),
(30, 2),
(33, 2),
(41, 2),
(42, 2),
(52, 2),
(53, 2),
(57, 2),
(58, 2),
(61, 2),
(62, 2),
(64, 2),
(69, 2),
(71, 2),
(72, 2),
(75, 2),
(21, 3),
(26, 3),
(31, 3),
(34, 3),
(54, 3),
(60, 3),
(65, 3),
(73, 3),
(75, 3),
(35, 4),
(46, 4),
(55, 4),
(59, 4),
(66, 4),
(74, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vaitro`
--

CREATE TABLE IF NOT EXISTS `vaitro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mota` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vaitroxuly`
--

CREATE TABLE IF NOT EXISTS `vaitroxuly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `User` int(11) DEFAULT NULL,
  `Vaitro` int(11) DEFAULT NULL,
  `HoSoTTHC` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Vaitroxuly_User1_idx` (`User`),
  KEY `fk_Vaitroxuly_Vaitro1_idx` (`Vaitro`),
  KEY `fk_Vaitroxuly_HoSoTTHC1_idx` (`HoSoTTHC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vanbanlienquan`
--

CREATE TABLE IF NOT EXISTS `vanbanlienquan` (
  `idVanBanLienQuan` int(11) NOT NULL AUTO_INCREMENT,
  `TenVBLQ` varchar(300) DEFAULT NULL,
  `PathToVBLQ` varchar(300) DEFAULT NULL,
  `Tthc` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVanBanLienQuan`),
  KEY `IDX_C328B7844F4C5628` (`Tthc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `vanbanlienquan`
--

INSERT INTO `vanbanlienquan` (`idVanBanLienQuan`, `TenVBLQ`, `PathToVBLQ`, `Tthc`) VALUES
(14, 'uh', 'uploads/attachments/[kickass.to]brick.lane.2007.dvdrip.xvid.eng.duqa.torrent', 25),
(16, 'Mẫu đơn', 'uploads/attachments/01_td (1).pdf', 26),
(17, 'Văn bản yêu cầu nộp tiền', 'uploads/attachments/icon.png', 27),
(18, '123', 'uploads/attachments/icon.png', 28),
(19, '789', 'uploads/attachments/plupload_error.png', 29),
(20, '1111', 'uploads/attachments/plupload_error.png', 29),
(21, 'a nhìn', 'uploads/attachments/ok (1).sql', 30),
(22, 'àdafds', 'uploads/attachments/01_td (1).pdf', 31),
(23, '123', 'uploads/attachments/ok (1).sql', 32),
(24, '123', 'uploads/attachments/[kickass.to]cracking.the.new.gmat.2013.edition.pdf.epub.mobi.torrent', 35),
(25, '3232', 'uploads/attachments/[kickass.to]brick.lane.limited.dvdrip.xvid.done.torrent', 36),
(28, 'abc', NULL, 37),
(29, 'văn bản nhà đất', NULL, 38),
(30, 'nhà đất', NULL, 39),
(31, 'giấy tờ chứng thực', NULL, 40),
(32, 'Nghị định 36CQ về việc đăng ký kết hôn', 'uploads/attachments/zoom.png', 42),
(33, 'Quyết định của chủ tịch UBND Xã về việc đăng ký kết hôn', 'uploads/attachments/images.jpg', 42),
(34, 'VB nhà nước', NULL, 44),
(35, 'Nghị định 36CQ về việc mua bán nhà', NULL, 46),
(36, 'Nghị định 91 EC về việc chuyển nhượng nhà ở', NULL, 46),
(37, 'jjj', 'uploads/attachments/SaaSinCloud-rep.pdf', 47),
(38, '12131', NULL, 48);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chuyenvienthuly`
--
ALTER TABLE `chuyenvienthuly`
  ADD CONSTRAINT `FK_2C8715E549B06482` FOREIGN KEY (`DonViThuLy`) REFERENCES `donvithuly` (`idDonViThuLy`);

--
-- Constraints for table `congdan`
--
ALTER TABLE `congdan`
  ADD CONSTRAINT `FK_C751475A4E59C462` FOREIGN KEY (`tenant`) REFERENCES `tenant` (`id`);

--
-- Constraints for table `dinhkemguihs`
--
ALTER TABLE `dinhkemguihs`
  ADD CONSTRAINT `fk_dinhkemguihs_hosotthc1` FOREIGN KEY (`hosotthc`) REFERENCES `hosotthc` (`idHoSoTTHC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dinhkemnhanhs`
--
ALTER TABLE `dinhkemnhanhs`
  ADD CONSTRAINT `FK_264C20294FC789D4` FOREIGN KEY (`dinhkemtthc`) REFERENCES `dinhkemtthc` (`idDinhKemTTHC`),
  ADD CONSTRAINT `fk_dinhkemnhanhs_hosotthc1` FOREIGN KEY (`hosotthc`) REFERENCES `hosotthc` (`idHoSoTTHC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dinhkemtthc`
--
ALTER TABLE `dinhkemtthc`
  ADD CONSTRAINT `FK_4FC789D44F4C5628` FOREIGN KEY (`Tthc`) REFERENCES `tthc` (`idTTHC`);

--
-- Constraints for table `donvithuly`
--
ALTER TABLE `donvithuly`
  ADD CONSTRAINT `FK_9D1555684E59C462` FOREIGN KEY (`tenant`) REFERENCES `tenant` (`id`);

--
-- Constraints for table `faq`
--
ALTER TABLE `faq`
  ADD CONSTRAINT `FK_E8FF75CCA24E502` FOREIGN KEY (`idTTHC`) REFERENCES `tthc` (`idTTHC`);

--
-- Constraints for table `functions`
--
ALTER TABLE `functions`
  ADD CONSTRAINT `fk_Function_GroupFunction1` FOREIGN KEY (`GroupFunction`) REFERENCES `groupfunction` (`idGroupFunction`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `groupfunction`
--
ALTER TABLE `groupfunction`
  ADD CONSTRAINT `fk_GroupFunction_Role1` FOREIGN KEY (`Role`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoidaptt`
--
ALTER TABLE `hoidaptt`
  ADD CONSTRAINT `FK_93CB269530A13826` FOREIGN KEY (`CongDan`) REFERENCES `congdan` (`idCongDan`),
  ADD CONSTRAINT `FK_93CB2695D9EB14A2` FOREIGN KEY (`TTHC`) REFERENCES `tthc` (`idTTHC`);

--
-- Constraints for table `hosotthc`
--
ALTER TABLE `hosotthc`
  ADD CONSTRAINT `FK_433CE19230A13826` FOREIGN KEY (`CongDan`) REFERENCES `congdan` (`idCongDan`),
  ADD CONSTRAINT `FK_433CE192D9EB14A2` FOREIGN KEY (`TTHC`) REFERENCES `tthc` (`idTTHC`);

--
-- Constraints for table `linhvuc`
--
ALTER TABLE `linhvuc`
  ADD CONSTRAINT `FK_F09E180E4E59C462` FOREIGN KEY (`tenant`) REFERENCES `tenant` (`id`);

--
-- Constraints for table `quyenhan`
--
ALTER TABLE `quyenhan`
  ADD CONSTRAINT `fk_quyenhan_role1` FOREIGN KEY (`role`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `quyentthc`
--
ALTER TABLE `quyentthc`
  ADD CONSTRAINT `fk_QuyenTTHC_Quyenhan1` FOREIGN KEY (`Quyenhan`) REFERENCES `quyenhan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_QuyenTTHC_TTHC1` FOREIGN KEY (`TTHC`) REFERENCES `tthc` (`idTTHC`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_QuyenTTHC_User1` FOREIGN KEY (`User`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `role_has_functions`
--
ALTER TABLE `role_has_functions`
  ADD CONSTRAINT `fk_Role_has_Functions_Functions1` FOREIGN KEY (`Functions_idFunctions`) REFERENCES `functions` (`idFunctions`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Role_has_Functions_Role1` FOREIGN KEY (`Role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tinhtrangthuly`
--
ALTER TABLE `tinhtrangthuly`
  ADD CONSTRAINT `FK_33CFE5E1405A5954` FOREIGN KEY (`Tiepnhan`) REFERENCES `chuyenvienthuly` (`idChuyenVienThuLy`),
  ADD CONSTRAINT `FK_33CFE5E1554DDB45` FOREIGN KEY (`Chiutrachnhiem`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_33CFE5E1BA4A83C4` FOREIGN KEY (`Hosotthc`) REFERENCES `hosotthc` (`idHoSoTTHC`),
  ADD CONSTRAINT `fk_tinhtrangthuly_Trangthaihoso1` FOREIGN KEY (`Trangthaihoso`) REFERENCES `trangthaihoso` (`idTrangthaihoso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tthc`
--
ALTER TABLE `tthc`
  ADD CONSTRAINT `FK_EF7EF91649B06482` FOREIGN KEY (`DonViThuLy`) REFERENCES `donvithuly` (`idDonViThuLy`),
  ADD CONSTRAINT `FK_EF7EF91676E6772` FOREIGN KEY (`LinhVuc`) REFERENCES `linhvuc` (`idLinhVuc`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D6494E59C462` FOREIGN KEY (`tenant`) REFERENCES `tenant` (`id`),
  ADD CONSTRAINT `fk_User_Thontincanhan1` FOREIGN KEY (`Thontincanhan`) REFERENCES `thontincanhan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_has_role`
--
ALTER TABLE `user_has_role`
  ADD CONSTRAINT `fk_User_has_Role_Role1` FOREIGN KEY (`Role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_User_has_Role_User1` FOREIGN KEY (`User_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vaitroxuly`
--
ALTER TABLE `vaitroxuly`
  ADD CONSTRAINT `fk_Vaitroxuly_HoSoTTHC1` FOREIGN KEY (`HoSoTTHC`) REFERENCES `hosotthc` (`idHoSoTTHC`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Vaitroxuly_User1` FOREIGN KEY (`User`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Vaitroxuly_Vaitro1` FOREIGN KEY (`Vaitro`) REFERENCES `vaitro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vanbanlienquan`
--
ALTER TABLE `vanbanlienquan`
  ADD CONSTRAINT `FK_C328B7844F4C5628` FOREIGN KEY (`Tthc`) REFERENCES `tthc` (`idTTHC`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
