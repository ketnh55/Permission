-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2014 at 04:49 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kate`
--
CREATE DATABASE IF NOT EXISTS `kate` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kate`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `congdan`
--

CREATE TABLE IF NOT EXISTS `congdan` (
  `idCongDan` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Ngaysinh` date DEFAULT NULL,
  `QueQuan` varchar(45) DEFAULT NULL,
  `SDT` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `pathtoimage` varchar(100) DEFAULT NULL,
  `tenant` int(11) NOT NULL,
  PRIMARY KEY (`idCongDan`),
  KEY `IDX_C751475A4E59C462` (`tenant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `congdan`
--

INSERT INTO `congdan` (`idCongDan`, `Name`, `Ngaysinh`, `QueQuan`, `SDT`, `email`, `pathtoimage`, `tenant`) VALUES
(1, 'a', '2014-04-14', 'vn', '010000000', 'aa@xyz', '', 3),
(2, 'b', '2014-04-14', 'vn', '010000000', 'aa@xyz', '', 3),
(3, 'c', '2014-04-14', 'vn', '010000000', 'aa@xyz', '', 3),
(4, 'd', '2014-04-14', 'vn', '010000000', 'aa@xyz', '', 3),
(5, '1', '2014-04-01', 'vp', '123', '123@gmail.com', 'uploads/avatar/icon.png', 4),
(6, '2', '2014-04-01', 'vp', '123', '123@gmail.com', 'uploads/avatar/icon.png', 4),
(7, 'anonymous', NULL, NULL, NULL, NULL, NULL, 7),
(8, 'anonymous', NULL, NULL, NULL, NULL, NULL, 8);

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
  `PathToFile` varchar(300) NOT NULL,
  `hosotthc` int(11) NOT NULL,
  `dinhkemtthc` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dinhkemnhanhs_hosotthc1_idx` (`hosotthc`),
  KEY `IDX_264C20294FC789D4` (`dinhkemtthc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

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
(16, 'debug.log', 'uploads/attachments/debug.log', 24, 32);

-- --------------------------------------------------------

--
-- Table structure for table `dinhkemtthc`
--

CREATE TABLE IF NOT EXISTS `dinhkemtthc` (
  `idDinhKemTTHC` int(11) NOT NULL AUTO_INCREMENT,
  `TenFileDK` varchar(300) NOT NULL,
  `PathToFile` varchar(300) NOT NULL,
  `Tthc` int(11) NOT NULL,
  PRIMARY KEY (`idDinhKemTTHC`),
  KEY `IDX_4FC789D44F4C5628` (`Tthc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

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
(32, 'sss', 'uploads/attachments/chrome.exe', 32);

-- --------------------------------------------------------

--
-- Table structure for table `donvithuly`
--

CREATE TABLE IF NOT EXISTS `donvithuly` (
  `idDonViThuLy` int(11) NOT NULL AUTO_INCREMENT,
  `NameDonViThuLy` varchar(45) NOT NULL,
  `tenant` int(11) NOT NULL,
  PRIMARY KEY (`idDonViThuLy`),
  KEY `IDX_9D1555684E59C462` (`tenant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `Role` int(11) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hoidaptt`
--

INSERT INTO `hoidaptt` (`idHoiDapTT`, `TTHC`, `CongDan`, `CauHoi`, `CauTraLoi`, `isHide`, `thoigianhoi`, `thoigiantraloi`) VALUES
(1, 25, 3, 'Tôi mua nhà đã được hơn 2 năm,tuy nhiên chính quyền xã chưa cấp sổ đỏ cho tôi với lý do tôi không pải chính c..../', 'Mời ông/bà lên thành phố kiện vì UBND h ăn hối lộ rất nhiều', 0, '2014-04-08', '2014-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `hosotthc`
--

CREATE TABLE IF NOT EXISTS `hosotthc` (
  `idHoSoTTHC` int(11) NOT NULL AUTO_INCREMENT,
  `TTHC` int(11) NOT NULL,
  `CongDan` int(11) NOT NULL,
  `NgayNhan` date NOT NULL,
  `NgayHenTra` date NOT NULL,
  `TinhTrangThuLy` int(11) DEFAULT NULL,
  `IsSentDVTL` tinyint(1) DEFAULT NULL,
  `IsRecieveDVTL` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idHoSoTTHC`),
  KEY `FK_HSTTHC_CongDan_idx` (`CongDan`),
  KEY `FK_HSTTHC_TTHC_idx` (`TTHC`),
  KEY `FK_HSTTHC_TTTL_idx` (`TinhTrangThuLy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `hosotthc`
--

INSERT INTO `hosotthc` (`idHoSoTTHC`, `TTHC`, `CongDan`, `NgayNhan`, `NgayHenTra`, `TinhTrangThuLy`, `IsSentDVTL`, `IsRecieveDVTL`) VALUES
(1, 25, 2, '2014-04-21', '2014-04-21', NULL, NULL, NULL),
(2, 25, 2, '2014-04-21', '2014-04-21', NULL, NULL, NULL),
(16, 25, 1, '2014-04-17', '2014-04-22', NULL, NULL, NULL),
(19, 25, 1, '2014-04-22', '2014-04-22', NULL, NULL, NULL),
(20, 25, 4, '2014-04-22', '2014-04-22', NULL, NULL, NULL),
(21, 29, 5, '2014-04-23', '2014-04-23', NULL, NULL, NULL),
(22, 30, 7, '2014-04-23', '2014-04-23', 5, NULL, NULL),
(23, 31, 7, '2014-04-23', '2014-04-23', NULL, NULL, NULL),
(24, 32, 8, '2014-04-24', '2014-04-24', 5, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

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
(13, 'cạn ý tưởng luôn', 'jgfhgf', 8);

-- --------------------------------------------------------

--
-- Table structure for table `quyenhan`
--

CREATE TABLE IF NOT EXISTS `quyenhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mota` varchar(45) DEFAULT NULL,
  `tenant` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8DA619CE4E59C462` (`tenant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `quyenhan`
--

INSERT INTO `quyenhan` (`id`, `name`, `mota`, `tenant`) VALUES
(1, 'niêm yết', NULL, 0),
(2, 'tiếp nhận', NULL, 0),
(3, 'phân quyền xử lý', NULL, 0),
(4, 'hỏi đáp', NULL, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

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
(100, NULL, 33, 33, 4);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`id`, `hoten`, `quequan`, `CMTND`, `SDT`, `ngaysinh`, `domain`, `tendonvi`) VALUES
(3, 'Lê Đình Thanh', 'Hà Nội', '0123456789', '0123456789', '2014-04-23', 'uet', 'Đại học công nghệ'),
(4, 'Nguyễn Chí Thanh', 'Hà Nội', '0123456789', '0123456789', '2014-04-01', 'ulis', 'ĐH Ngoại Ngữ'),
(6, 'Ibrahimovic', '123', '231', '42321313', '2009-01-01', 'sol', 'Khoa luật'),
(7, 'Rooney', 'HN', '0132', '32132', '2009-01-01', 'bbc', '213132'),
(8, 'Messi', 'Brazil', '12234', '12341', '2009-01-01', 'vnu', '234');

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
(1, 'Nguyyễn Hữu Kết', 'Hà Nội', '0123456789', '0123456789', '2014-04-22', 'uploads/avatar/icon.png'),
(2, 'Nguyyễn Hữu Kết', 'Hà Nội', '123', '0123456789', '2014-04-23', 'uploads/avatar/apple-touch-icon.png'),
(3, NULL, NULL, NULL, NULL, '2014-04-23', 'uploads/avatar/icon.png'),
(4, NULL, NULL, NULL, NULL, '2014-04-23', 'uploads/avatar/icon.png');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tinhtrangthuly`
--

INSERT INTO `tinhtrangthuly` (`idTinhTrangThuLy`, `TinhTrangThuLy`, `Time`, `ChuyenVienThuLy`, `ThuTuThuLy`) VALUES
(5, 'chuyển thụ lý', '2014-04-22 00:00:00', NULL, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

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
(33, 'giao thông vận tải', 13, NULL, NULL, NULL, NULL, 0);

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
  `tenant` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `isActive_UNIQUE` (`isActive`),
  KEY `fk_User_Thontincanhan1_idx` (`Thontincanhan`),
  KEY `IDX_8D93D6494E59C462` (`tenant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `isActive`, `Thontincanhan`, `tenant`) VALUES
(1, 'admin@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@uet.vnu.edu.vn', NULL, 2, 3),
(20, 'staff@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'staff@gmail.com', NULL, 1, 3),
(21, 'major@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'abc@xyz', NULL, NULL, 3),
(22, 'kate@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@gmail.com', NULL, NULL, 3),
(23, 'admin@ulis', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ulis@vnu', NULL, 3, 4),
(24, 'staff@ulis', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@gmail.com', NULL, 4, 4),
(26, 'major@ulis', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@gmail.com', NULL, NULL, 4),
(28, 'admin@sol', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, 6),
(29, 'admin@bbc', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, 7),
(30, 'staff@bbc', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'staff@staff', NULL, NULL, 7),
(31, 'major@bbc', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@gmail.com', NULL, NULL, 7),
(32, 'admin@vnu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, 8),
(33, 'staff@vnu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'staff@staff', NULL, NULL, 8),
(34, 'major@vnu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '11111111@aaa', NULL, NULL, 8);

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
(20, 2),
(24, 2),
(30, 2),
(33, 2),
(21, 3),
(26, 3),
(31, 3),
(34, 3);

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
  `TenVBLQ` varchar(300) NOT NULL,
  `PathToVBLQ` varchar(300) NOT NULL,
  `Tthc` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVanBanLienQuan`),
  KEY `IDX_C328B7844F4C5628` (`Tthc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

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
(23, '123', 'uploads/attachments/ok (1).sql', 32);

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
  ADD CONSTRAINT `FK_433CE192D9EB14A2` FOREIGN KEY (`TTHC`) REFERENCES `tthc` (`idTTHC`),
  ADD CONSTRAINT `FK_433CE192E5B3954F` FOREIGN KEY (`TinhTrangThuLy`) REFERENCES `tinhtrangthuly` (`idTinhTrangThuLy`);

--
-- Constraints for table `linhvuc`
--
ALTER TABLE `linhvuc`
  ADD CONSTRAINT `FK_F09E180E4E59C462` FOREIGN KEY (`tenant`) REFERENCES `tenant` (`id`);

--
-- Constraints for table `quyenhan`
--
ALTER TABLE `quyenhan`
  ADD CONSTRAINT `FK_8DA619CE4E59C462` FOREIGN KEY (`tenant`) REFERENCES `tenant` (`id`);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
