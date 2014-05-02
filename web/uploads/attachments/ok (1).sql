-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2014 at 04:29 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ok`
--
CREATE DATABASE IF NOT EXISTS `ok` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ok`;

-- --------------------------------------------------------

--
-- Table structure for table `chuyenvienthuly`
--

CREATE TABLE IF NOT EXISTS `chuyenvienthuly` (
  `idChuyenVienThuLy` int(11) NOT NULL AUTO_INCREMENT,
  `NameCB` varchar(45) NOT NULL,
  `NgaySinh` date NOT NULL,
  `DonViThuLy` int(11) DEFAULT NULL,
  PRIMARY KEY (`idChuyenVienThuLy`),
  KEY `FK_CanBo_DVThuLy_idx` (`DonViThuLy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `chuyenvienthuly`
--

INSERT INTO `chuyenvienthuly` (`idChuyenVienThuLy`, `NameCB`, `NgaySinh`, `DonViThuLy`) VALUES
(1, '123', '2014-04-08', 4),
(2, '123', '2014-04-08', 4),
(3, '123', '2014-04-08', 4),
(4, '123', '2014-04-08', 4),
(5, '123', '2014-04-08', 4),
(6, '123', '2014-04-08', 4),
(7, '123', '2014-04-08', 4);

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
  `pathtoimage` varchar(100) NOT NULL,
  PRIMARY KEY (`idCongDan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `congdan`
--

INSERT INTO `congdan` (`idCongDan`, `Name`, `Ngaysinh`, `QueQuan`, `SDT`, `email`, `pathtoimage`) VALUES
(1, 'a', '2014-04-14', 'vn', '010000000', 'aa@xyz', ''),
(2, 'a', '2014-04-14', 'vn', '010000000', 'aa@xyz', ''),
(3, 'a', '2014-04-14', 'vn', '010000000', 'aa@xyz', ''),
(4, 'a', '2014-04-14', 'vn', '010000000', 'aa@xyz', '');

-- --------------------------------------------------------

--
-- Table structure for table `dinhkemguihs`
--

CREATE TABLE IF NOT EXISTS `dinhkemguihs` (
  `idDinhKemGuiHS` int(11) NOT NULL AUTO_INCREMENT,
  `TenFileDinhKem` varchar(300) NOT NULL,
  `PathToFile` varchar(300) NOT NULL,
  `hosotthc` int(11) DEFAULT NULL,
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
  `PathToFile` varchar(300) NOT NULL,
  `hosotthc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dinhkemnhanhs_hosotthc1_idx` (`hosotthc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `dinhkemnhanhs`
--

INSERT INTO `dinhkemnhanhs` (`id`, `TenFileDinhKem`, `PathToFile`, `hosotthc`) VALUES
(1, '01_td (1).pdf', '01_td (1).pdf', 48),
(2, 'ok.sql', 'ok.sql', 49),
(3, '01_td (1).pdf', '01_td (1).pdf', 50),
(4, 'ok.sql', 'ok.sql', 51),
(5, '01_td (1).pdf', '01_td (1).pdf', 52),
(6, 'ok.sql', 'ok.sql', 53),
(7, '01_td (1).pdf', '01_td (1).pdf', 54),
(8, 'ok.sql', 'ok.sql', 55),
(9, '[Kenh76.net] --- Get Link FShare 1.44.exe', 'uploads/attachments/[Kenh76.net] --- Get Link', 56),
(10, '01_td (1).pdf', 'uploads/attachments/01_td (1).pdf', 57),
(11, '[Kenh76.net] --- Get Link FShare 1.44.exe', 'uploads/attachments/[Kenh76.net] --- Get Link FShare 1.44.exe', 58);

-- --------------------------------------------------------

--
-- Table structure for table `dinhkemtthc`
--

CREATE TABLE IF NOT EXISTS `dinhkemtthc` (
  `idDinhKemTTHC` int(11) NOT NULL AUTO_INCREMENT,
  `TenFileDK` varchar(300) NOT NULL,
  `PathToFile` varchar(300) NOT NULL,
  `Tthc` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDinhKemTTHC`),
  KEY `IDX_4FC789D44F4C5628` (`Tthc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `dinhkemtthc`
--

INSERT INTO `dinhkemtthc` (`idDinhKemTTHC`, `TenFileDK`, `PathToFile`, `Tthc`) VALUES
(1, 'a', 'UPGRADE-2.4.md', NULL),
(2, '6', 'UPGRADE-2.4.md', NULL),
(3, 'a', 'LICENSE', NULL),
(4, 'a', 'UPGRADE.md', NULL),
(5, 'abc', '01_td (1).pdf', NULL),
(6, '4', '01_td (1).pdf', NULL),
(7, 'd', 'wintools.ini', NULL),
(8, '1', 'uploads/attachments/01_td (1).pdf', NULL),
(9, 'abc', 'uploads/attachments/01_td (1).pdf', NULL),
(10, 'abcxxx', 'uploads/attachments/ok.sql', NULL),
(11, 'abc', 'uploads/attachments/Copy of ok.sql', NULL),
(12, 'abc', 'uploads/attachments/ok.sql', 18),
(13, 'abc', 'uploads/attachments/01_td (1).pdf', 20),
(14, 'xyz', 'uploads/attachments/ok.sql', 20),
(15, 'abc', 'uploads/attachments/ok.sql', 22),
(16, 'abcxyz', 'uploads/attachments/ok.sql', 22),
(17, '123', 'uploads/attachments/ok.sql', 22);

-- --------------------------------------------------------

--
-- Table structure for table `donvithuly`
--

CREATE TABLE IF NOT EXISTS `donvithuly` (
  `idDonViThuLy` int(11) NOT NULL AUTO_INCREMENT,
  `NameDonViThuLy` varchar(45) NOT NULL,
  PRIMARY KEY (`idDonViThuLy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `donvithuly`
--

INSERT INTO `donvithuly` (`idDonViThuLy`, `NameDonViThuLy`) VALUES
(1, 'bộ giáo dục đào tạo'),
(2, 'bộ giáo dục đào tạo'),
(3, 'bộ giáo dục đào tạo'),
(4, 'bộ giáo dục đào tạo'),
(5, 'bộ giáo dục đào tạo'),
(6, 'bộ giáo dục đào tạo'),
(7, 'bộ giáo dục đào tạo'),
(8, 'bộ giáo dục đào tạo'),
(9, 'bộ giáo dục đào tạo');

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
  `GroupFunction` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFunctions`),
  KEY `fk_Function_GroupFunction1_idx` (`GroupFunction`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `functions`
--

INSERT INTO `functions` (`idFunctions`, `name`, `path`, `GroupFunction`) VALUES
(1, 'Khởi tạo dữ liệu', 'initialData', 1),
(2, 'Phân quyền hệ thống', 'permission', 1),
(3, 'Thống kê', 'statistic', 1),
(4, 'Tiếp nhận hồ sơ', 'reception', 3),
(7, 'Thủ tục hành chính chờ niêm yết', 'statisticListTTHC', 2),
(8, 'Phân quyền cán bộ', 'permission_staff', 7),
(9, 'Thống kê thủ tục hồ sơ đến', 'statisticStatus', 4),
(10, 'Chỉnh sửa thủ tục hành chính đã niêm yết', 'statisticListedTTHC', 2),
(11, 'Hỏi đáp trực tuyến', 'A&Q', 5),
(12, 'Chuyển thụ lý', 'forwardHoso', 3),
(13, 'Trả hồ sơ ', 'giveback', 3);

-- --------------------------------------------------------

--
-- Table structure for table `groupfunction`
--

CREATE TABLE IF NOT EXISTS `groupfunction` (
  `idGroupFunction` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `Role` int(11) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGroupFunction`),
  KEY `fk_GroupFunction_Role1_idx` (`Role`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `groupfunction`
--

INSERT INTO `groupfunction` (`idGroupFunction`, `name`, `description`, `Role`, `icon`) VALUES
(1, 'Quản trị hệ thống', NULL, 1, 'icon-screen2'),
(2, 'Niêm yết thủ tục hành chính', NULL, 2, 'icon-copy'),
(3, 'Xử lý hồ sơ hành chính', NULL, 2, 'icon-stack'),
(4, 'Thống kê thủ tục hành chính', NULL, 3, 'icon-bars'),
(5, 'Hỏi đáp trực tuyến', NULL, 2, 'icon-bubble6'),
(7, 'Phân quyền cán bộ', NULL, 3, 'icon-bug');

-- --------------------------------------------------------

--
-- Table structure for table `hoidaptt`
--

CREATE TABLE IF NOT EXISTS `hoidaptt` (
  `idHoiDapTT` int(11) NOT NULL AUTO_INCREMENT,
  `TTHC` int(11) DEFAULT NULL,
  `CongDan` int(11) DEFAULT NULL,
  `CauHoi` text NOT NULL,
  `CauTraLoi` text,
  `isHide` tinyint(1) NOT NULL,
  `thoigianhoi` date DEFAULT NULL,
  `thoigiantraloi` date DEFAULT NULL,
  PRIMARY KEY (`idHoiDapTT`),
  KEY `FK_HoiDapTT_DichVu_idx` (`TTHC`),
  KEY `FK_HoiDapTT_CongDan_idx` (`CongDan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `hoidaptt`
--

INSERT INTO `hoidaptt` (`idHoiDapTT`, `TTHC`, `CongDan`, `CauHoi`, `CauTraLoi`, `isHide`, `thoigianhoi`, `thoigiantraloi`) VALUES
(5, 1, 1, 'Tôi là công dan thuộc khu vực xyz đang thuộc diện bị giải tỏa,tuy nhiên chủ đầu tư chỉ đền bù đất với 50% giá do nhà nước quy định. Họ giải thích rằng đất nông nghiệp chưa được chuyển đồi lên không thể đền bù như đất xxxx....', 'dkm', 0, '2014-04-09', '2014-04-16'),
(6, 1, 1, 'Tôi là công dan thuộc khu vực xyz đang thuộc diện bị giải tỏa,tuy nhiên chủ đầu tư chỉ đền bù đất với 50% giá do nhà nước quy định. Họ giải thích rằng đất nông nghiệp chưa được chuyển đồi lên không thể đền bù như đất xxxx....', NULL, 0, '2014-04-09', '2014-04-16'),
(7, 1, 1, 'Tôi là công dan thuộc khu vực xyz đang thuộc diện bị giải tỏa,tuy nhiên chủ đầu tư chỉ đền bù đất với 50% giá do nhà nước quy định. Họ giải thích rằng đất nông nghiệp chưa được chuyển đồi lên không thể đền bù như đất xxxx....', NULL, 0, '2014-04-09', '2014-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `hosotthc`
--

CREATE TABLE IF NOT EXISTS `hosotthc` (
  `idHoSoTTHC` int(11) NOT NULL AUTO_INCREMENT,
  `TTHC` int(11) DEFAULT NULL,
  `CongDan` int(11) DEFAULT NULL,
  `DonViThuLy` int(11) DEFAULT NULL,
  `NgayNhan` date NOT NULL,
  `NgayHenTra` date NOT NULL,
  `TinhTrangThuLy` int(11) DEFAULT NULL,
  `IsSentDVTL` tinyint(1) DEFAULT NULL,
  `IsRecieveDVTL` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idHoSoTTHC`),
  KEY `FK_HSTTHC_CongDan_idx` (`CongDan`),
  KEY `FK_HSTTHC_TTHC_idx` (`TTHC`),
  KEY `FK_HSTTHC_DVThuLy_idx` (`DonViThuLy`),
  KEY `FK_HSTTHC_TTTL_idx` (`TinhTrangThuLy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `hosotthc`
--

INSERT INTO `hosotthc` (`idHoSoTTHC`, `TTHC`, `CongDan`, `DonViThuLy`, `NgayNhan`, `NgayHenTra`, `TinhTrangThuLy`, `IsSentDVTL`, `IsRecieveDVTL`) VALUES
(1, 16, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(2, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(3, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(4, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(5, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(6, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(7, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(8, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(9, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(10, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(11, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(12, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(13, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(14, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(15, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(16, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(17, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(18, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(19, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(20, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(21, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(22, 5, 1, 3, '2014-04-07', '2014-04-17', 5, NULL, NULL),
(23, 16, 2, 3, '2014-04-06', '2014-04-15', 5, NULL, NULL),
(24, 16, 2, 3, '2014-04-06', '2014-04-15', 5, NULL, NULL),
(25, 16, 2, 3, '2014-04-06', '2014-04-15', 5, NULL, NULL),
(26, 16, 2, 3, '2014-04-06', '2014-04-15', 5, NULL, NULL),
(27, 16, 2, 3, '2014-04-06', '2014-04-15', 5, NULL, NULL),
(28, 16, 2, 3, '2014-04-06', '2014-04-15', 5, NULL, NULL),
(29, 16, 2, 3, '2014-04-06', '2014-04-15', 5, NULL, NULL),
(30, 16, 2, 3, '2014-04-06', '2014-04-15', 5, NULL, NULL),
(31, 16, 2, 3, '2014-04-06', '2014-04-15', 5, NULL, NULL),
(32, 16, 2, 3, '2014-04-06', '2014-04-15', 5, NULL, NULL),
(33, 16, 2, 3, '2014-04-06', '2014-04-15', 5, NULL, NULL),
(34, 16, 2, 3, '2014-04-06', '2014-04-15', 5, NULL, NULL),
(35, 16, 2, 3, '2014-04-06', '2014-04-15', 5, NULL, NULL),
(36, 16, 2, 3, '2014-04-06', '2014-04-15', 5, NULL, NULL),
(37, 16, 2, 3, '2014-04-06', '2014-04-15', 6, NULL, NULL),
(38, 16, 2, 3, '2014-04-06', '2014-04-15', NULL, NULL, NULL),
(39, 16, 2, 3, '2014-04-06', '2014-04-15', NULL, NULL, NULL),
(40, 16, 2, 3, '2014-04-06', '2014-04-15', NULL, NULL, NULL),
(41, 16, 2, 3, '2014-04-06', '2014-04-15', NULL, NULL, NULL),
(42, 16, 2, 3, '2014-04-06', '2014-04-15', NULL, NULL, NULL),
(43, 16, 2, 3, '2014-04-06', '2014-04-15', NULL, NULL, NULL),
(44, 16, 2, 3, '2014-04-06', '2014-04-15', NULL, NULL, NULL),
(45, 16, 2, 3, '2014-04-06', '2014-04-15', NULL, NULL, NULL),
(48, 7, 1, 1, '2014-04-17', '2020-01-21', NULL, NULL, NULL),
(49, 7, 1, 1, '2014-04-17', '2014-04-17', NULL, NULL, NULL),
(50, 7, 1, 1, '2014-04-17', '2014-04-17', NULL, NULL, NULL),
(51, 18, 1, 1, '2014-04-17', '2014-04-17', NULL, NULL, NULL),
(52, 11, 1, 1, '2014-04-17', '2014-04-17', NULL, NULL, NULL),
(53, 19, 3, NULL, '2014-04-17', '2014-04-17', NULL, NULL, NULL),
(54, 19, 1, NULL, '2014-04-17', '2014-09-22', NULL, NULL, NULL),
(55, 19, 1, NULL, '2014-04-17', '2020-11-11', NULL, NULL, NULL),
(56, 19, 1, NULL, '2014-04-17', '2222-11-22', NULL, NULL, NULL),
(57, 19, 1, NULL, '2014-04-17', '2014-04-17', NULL, NULL, NULL),
(58, 19, 1, NULL, '2014-04-17', '2014-04-17', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `linhvuc`
--

CREATE TABLE IF NOT EXISTS `linhvuc` (
  `idLinhVuc` int(11) NOT NULL AUTO_INCREMENT,
  `NameDV` varchar(45) NOT NULL,
  `MoTaLinhVuc` varchar(255) NOT NULL,
  PRIMARY KEY (`idLinhVuc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `linhvuc`
--

INSERT INTO `linhvuc` (`idLinhVuc`, `NameDV`, `MoTaLinhVuc`) VALUES
(1, 'đất', '111111111111111'),
(2, 'cấp sổ đỏ', '1111111111'),
(3, 'hôn nhân', 'aa'),
(4, 'gia đinh', '122'),
(5, 'kế hoạch hóa gia đình', 'abcxyz');

-- --------------------------------------------------------

--
-- Table structure for table `quyenhan`
--

CREATE TABLE IF NOT EXISTS `quyenhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mota` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `quyenhan`
--

INSERT INTO `quyenhan` (`id`, `name`, `mota`) VALUES
(1, 'niêm yết', NULL),
(2, 'tiếp nhận', NULL),
(3, 'phân quyền xử lý', NULL),
(4, 'hỏi đáp', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `quyentthc`
--

INSERT INTO `quyentthc` (`id`, `mota`, `User`, `TTHC`, `Quyenhan`) VALUES
(1, NULL, 1, 2, 3),
(2, NULL, 1, 5, 1),
(3, NULL, 1, 1, 1),
(4, NULL, 1, 1, 1),
(6, NULL, 5, 6, 1),
(7, NULL, 5, 1, 1),
(8, NULL, 1, 1, 1),
(9, NULL, 3, 1, 1),
(10, NULL, 1, 1, 1),
(12, NULL, 3, 8, 1),
(13, NULL, 1, 1, 1),
(15, NULL, 1, 9, 2),
(16, NULL, 1, 9, 3),
(18, NULL, 5, 1, 1),
(19, NULL, 2, 7, 2),
(20, NULL, 1, 1, 1),
(21, NULL, 3, 11, 2),
(22, NULL, 5, 11, 3),
(23, NULL, 1, 12, 1),
(24, NULL, 1, 12, 2),
(25, NULL, 1, 12, 3),
(26, NULL, 1, 13, 1),
(27, NULL, 1, 13, 2),
(28, NULL, 1, 13, 3),
(30, NULL, 2, 14, 2),
(31, NULL, 3, 14, 3),
(32, NULL, 4, 14, 4),
(33, NULL, 4, 15, 1),
(34, NULL, 4, 15, 2),
(35, NULL, 2, 15, 3),
(36, NULL, 3, 15, 4),
(37, NULL, 3, 16, 1),
(38, NULL, 3, 16, 2),
(39, NULL, 3, 16, 3),
(40, NULL, 3, 16, 4),
(41, NULL, 3, 17, 1),
(42, NULL, 3, 17, 2),
(43, NULL, 5, 17, 3),
(44, NULL, 5, 17, 4),
(45, NULL, 3, 18, 1),
(46, NULL, 3, 18, 2),
(47, NULL, 2, 18, 3),
(48, NULL, 2, 18, 4),
(49, NULL, 2, 19, 1),
(50, NULL, 3, 19, 2),
(51, NULL, 2, 19, 3),
(52, NULL, 3, 19, 4),
(53, NULL, 3, 20, 1),
(54, NULL, 3, 20, 2),
(55, NULL, 3, 20, 3),
(56, NULL, 3, 20, 4),
(57, NULL, 3, 22, 1),
(58, NULL, 3, 22, 2),
(59, NULL, 3, 22, 3),
(60, NULL, 3, 22, 4);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `role`) VALUES
(1, 'admin', 'ROLE_ADMIN'),
(2, 'staff', 'ROLE_STAFF'),
(3, 'major', 'ROLE_MAJOR');

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
-- Table structure for table `thontincanhan`
--

CREATE TABLE IF NOT EXISTS `thontincanhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(45) DEFAULT NULL,
  `quequan` varchar(45) DEFAULT NULL,
  `CMTND` varchar(45) DEFAULT NULL,
  `SDT` varchar(45) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `pathtoimage` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `thontincanhan`
--

INSERT INTO `thontincanhan` (`id`, `hoten`, `quequan`, `CMTND`, `SDT`, `ngaysinh`, `pathtoimage`) VALUES
(1, 'Nguyyễn Hữu Kết', 'Hà Nội', '012914951', '01656122711', '2014-04-02', 'uploads/avatar/bulldog.jpg'),
(2, 'Hà Đức Trung', 'Hà Nam', '0123456789', '0123456789', '2014-04-30', ''),
(3, 'Nguyễn Thị Loan', 'Hải Dương', '0123456789', '0123456789', '2018-11-22', 'uploads/avatar/bulldog.jpg'),
(4, 'Nguyễn Thị Loan', 'Hải Dương', '0123456789', '0123456789', '1992-02-01', 'uploads/avatar/images.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrangthuly`
--

CREATE TABLE IF NOT EXISTS `tinhtrangthuly` (
  `idTinhTrangThuLy` int(11) NOT NULL AUTO_INCREMENT,
  `TinhTrangThuLy` varchar(45) NOT NULL,
  `Time` datetime NOT NULL,
  `ChuyenVienThuLy` int(11) DEFAULT NULL,
  `ThuTuThuLy` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTinhTrangThuLy`),
  KEY `FK_TTTL_ChuyenVienTL_idx` (`ChuyenVienThuLy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tinhtrangthuly`
--

INSERT INTO `tinhtrangthuly` (`idTinhTrangThuLy`, `TinhTrangThuLy`, `Time`, `ChuyenVienThuLy`, `ThuTuThuLy`) VALUES
(5, 'Đã chuyển thụ lý', '2014-04-09 00:00:00', 3, 1),
(6, 'hoàn tất', '2014-04-23 00:00:00', NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tthc`
--

CREATE TABLE IF NOT EXISTS `tthc` (
  `idTTHC` int(11) NOT NULL AUTO_INCREMENT,
  `NameTTHC` varchar(45) NOT NULL,
  `LinhVuc` int(11) DEFAULT NULL,
  `DonViThuLy` int(11) DEFAULT NULL,
  `NoiDungThucHien` varchar(255) DEFAULT NULL,
  `GiayToHoSo` varchar(45) DEFAULT NULL,
  `ThoiGianGiaiQuyet` varchar(45) DEFAULT NULL,
  `IsHide` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idTTHC`),
  KEY `FK_TTHC_DichVu_idx` (`LinhVuc`),
  KEY `FK_TTHC_DVThuLy_idx` (`DonViThuLy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tthc`
--

INSERT INTO `tthc` (`idTTHC`, `NameTTHC`, `LinhVuc`, `DonViThuLy`, `NoiDungThucHien`, `GiayToHoSo`, `ThoiGianGiaiQuyet`, `IsHide`) VALUES
(1, 'nhà đất1', 1, NULL, 'fffffffffffffff', 'fasdf', 'fffffffffff', 1),
(2, 'đk kết hôn', 1, NULL, '2222', NULL, '2', 0),
(5, 'sida', 1, NULL, NULL, NULL, NULL, 0),
(6, 'abc', 1, NULL, 'a', 'a', 'a', 1),
(7, 'đăng ký kinh doanh', 1, NULL, '1', '2', '3', 1),
(8, 'xây dựng', 1, NULL, 'a', 'a', 'a', 1),
(9, 'kiến trúc', 3, NULL, 'a', 'a', 'a', 1),
(10, 'abcxyz', 3, NULL, 'a', 'a', 'a', 1),
(11, '123', 1, NULL, NULL, NULL, NULL, 0),
(12, '45454', 1, NULL, NULL, NULL, NULL, 0),
(13, '65', 1, NULL, NULL, NULL, NULL, 0),
(14, 'kate teddy', 3, NULL, 'kate teddy cuoi', 'Gom giay to nha dat ho khau  ...', '1 ngay', 1),
(15, 'ttttt', 4, NULL, NULL, NULL, NULL, 0),
(16, '1111111111', 3, NULL, 'abcxyz', 'abcxyz', '2 nam', 1),
(17, 'Sửa nhà ở', 2, NULL, 'abc', 'abc', 'abc', 1),
(18, 'yyy', 1, NULL, 'abc', 'abc', 'abc', 1),
(19, 'fadsfdas', 3, NULL, 'd', 'd', 'd', 1),
(20, 'giao thông vận tải', 5, NULL, 'abc', 'abc', 'abc', 0),
(22, '123', 5, NULL, 'abc', 'abc', 'abc', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `Thontincanhan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `isActive_UNIQUE` (`isActive`),
  KEY `fk_User_Thontincanhan1_idx` (`Thontincanhan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `isActive`, `Thontincanhan`) VALUES
(1, 'admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 1),
(2, 'staff', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'staff@staff', NULL, 2),
(3, 'staff1', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'staff@staff', NULL, 4),
(4, 'staff2', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '11111111@aaa', NULL, NULL),
(5, 'major', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '11111111@aaa', NULL, 4),
(6, 'maotrachdong', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'maotrachdong@localhost.com', NULL, NULL);

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
(2, 2),
(3, 2),
(4, 2),
(5, 3),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vaitro`
--

CREATE TABLE IF NOT EXISTS `vaitro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mota` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vaitro`
--

INSERT INTO `vaitro` (`id`, `name`, `mota`) VALUES
(1, 'chuyển thụ lý', NULL),
(2, 'tiếp nhận', NULL);

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
  `TenVBLQ` varchar(300) NOT NULL,
  `PathToVBLQ` varchar(300) NOT NULL,
  `Tthc` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVanBanLienQuan`),
  KEY `IDX_C328B7844F4C5628` (`Tthc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `vanbanlienquan`
--

INSERT INTO `vanbanlienquan` (`idVanBanLienQuan`, `TenVBLQ`, `PathToVBLQ`, `Tthc`) VALUES
(1, 'a', 'ok.sql', NULL),
(2, 'def', '100 toeic bstudent.pdf', NULL),
(3, '5', '100 toeic bstudent.pdf', NULL),
(4, 'd', 'skipfilenames.dat', NULL),
(5, '3', 'uploads/attachments/01_td (1).pdf', NULL),
(6, '123', 'uploads/attachments/Copy of ok.sql', NULL),
(7, '123', 'uploads/attachments/Copy of ok.sql', NULL),
(8, '123', 'uploads/attachments/ok.sql', NULL),
(9, 'abc', 'uploads/attachments/ok.sql', NULL),
(10, 'jjj', 'uploads/attachments/Copy of ok.sql', 20),
(11, 'abc', 'uploads/attachments/ok.sql', 22),
(12, '123', 'uploads/attachments/ok.sql', 22);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chuyenvienthuly`
--
ALTER TABLE `chuyenvienthuly`
  ADD CONSTRAINT `FK_2C8715E549B06482` FOREIGN KEY (`DonViThuLy`) REFERENCES `donvithuly` (`idDonViThuLy`);

--
-- Constraints for table `dinhkemguihs`
--
ALTER TABLE `dinhkemguihs`
  ADD CONSTRAINT `fk_dinhkemguihs_hosotthc1` FOREIGN KEY (`hosotthc`) REFERENCES `hosotthc` (`idHoSoTTHC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dinhkemnhanhs`
--
ALTER TABLE `dinhkemnhanhs`
  ADD CONSTRAINT `fk_dinhkemnhanhs_hosotthc1` FOREIGN KEY (`hosotthc`) REFERENCES `hosotthc` (`idHoSoTTHC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dinhkemtthc`
--
ALTER TABLE `dinhkemtthc`
  ADD CONSTRAINT `FK_4FC789D44F4C5628` FOREIGN KEY (`Tthc`) REFERENCES `tthc` (`idTTHC`);

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
  ADD CONSTRAINT `FK_433CE19249B06482` FOREIGN KEY (`DonViThuLy`) REFERENCES `donvithuly` (`idDonViThuLy`),
  ADD CONSTRAINT `FK_433CE192D9EB14A2` FOREIGN KEY (`TTHC`) REFERENCES `tthc` (`idTTHC`),
  ADD CONSTRAINT `FK_433CE192E5B3954F` FOREIGN KEY (`TinhTrangThuLy`) REFERENCES `tinhtrangthuly` (`idTinhTrangThuLy`);

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
  ADD CONSTRAINT `FK_33CFE5E172F6A27E` FOREIGN KEY (`ChuyenVienThuLy`) REFERENCES `chuyenvienthuly` (`idChuyenVienThuLy`);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
