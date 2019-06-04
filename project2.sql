-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2019 at 10:04 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project2`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `time_created` double NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `name`, `image`, `content`, `link`, `type`, `time_created`, `status`) VALUES
(2, 'Iphone XR | XS | XS Max - 2 sim', '636935105070943288_H1.jpg', 'Iphone XR | XS | XS Max', '/project2/Home/singleProduct/1/8', 0, 1558943932, 1),
(3, 'Galaxy S10 | S10+', '636935371432149781_Banner-H1 s10@2x.png', 'Galaxy S10 | S10+', '/project2/Home/singleProduct/1/32', 0, 1558944464, 1),
(4, 'Vivo Y15 | Y93', '636945450800040758_Banner-Vivo-H1-2x.png', 'Vivo Y15 | Y93', '/project2/Home/singleProduct/1/34', 0, 1558944608, 1),
(5, 'Tháng OPPO nhận quà liền tay', '636922705324781231_F-H1_800x300.jpg', 'Tháng OPPO ', '/project2/Home/singleProduct/1/33', 0, 1558944670, 1),
(7, 'Galaxy A9 2018 trả góp', '636935115665684902_Banner-H1 a9 2018@2x-2.png', 'Galaxy A9', '/project2/Home/singleProduct/1/2', 0, 1558944703, 1),
(10, 'IPhone 6 Plus', 'b1.png', 'IPhone 6 Plus', '/project2/Home/singleProduct/1/29', 1, 1558947295, 1),
(11, 'Samsung Galaxy A10', 'b2.png', 'Samsung Galaxy A10', '/project2/Home/singleProduct/1/35', 1, 1558947313, 1),
(12, 'Samsung S9 Plus', 'b3.png', 'Samsung S9 Plus', '/project2/Home/singleProduct/1/36', 1, 1558947337, 1);

--
-- Triggers `banner`
--
DELIMITER $$
CREATE TRIGGER `add time banner` BEFORE INSERT ON `banner` FOR EACH ROW BEGIN
SET NEW.time_created = UNIX_TIMESTAMP();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `sort`, `status`) VALUES
(1, 'Phone', 1, 1),
(62, 'Tablet', 2, 1),
(63, 'Laptop', 3, 1),
(70, 'Phụ kiện', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `time_created` double NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `product_id`, `content`, `time_created`, `status`) VALUES
(89, 25, 1, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(90, 25, 2, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(91, 25, 3, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(92, 25, 4, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(93, 25, 5, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(94, 25, 8, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(95, 25, 9, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(96, 25, 10, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(97, 25, 11, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(98, 25, 12, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(99, 25, 13, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(100, 25, 14, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(101, 25, 15, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(102, 25, 16, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(103, 25, 17, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(104, 25, 18, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(105, 25, 19, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(106, 25, 20, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(107, 25, 21, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(108, 25, 22, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(109, 25, 23, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(110, 25, 29, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(111, 25, 30, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(112, 25, 31, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(113, 25, 32, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(114, 25, 33, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(115, 25, 34, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(116, 25, 35, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(117, 25, 36, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(118, 25, 42, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(119, 25, 43, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(120, 25, 44, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(121, 25, 45, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(122, 25, 46, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(123, 25, 47, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(124, 25, 53, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(125, 25, 54, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(126, 25, 55, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(127, 25, 56, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(128, 25, 57, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(129, 25, 58, 'Ad cho hỏi mình ở Đăk Nông muốn mua sản phẩm này có giao hàng tận nơi ko? Còn phát sinh phí gì ko???', 1559105445, 1),
(130, 28, 1, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(131, 28, 2, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(132, 28, 3, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(133, 28, 4, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(134, 28, 5, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(135, 28, 8, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(136, 28, 9, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(137, 28, 10, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(138, 28, 11, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(139, 28, 12, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(140, 28, 13, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(141, 28, 14, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(142, 28, 15, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(143, 28, 16, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(144, 28, 17, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(145, 28, 18, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(146, 28, 19, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(147, 28, 20, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(148, 28, 21, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(149, 28, 22, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(150, 28, 23, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(151, 28, 29, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(152, 28, 30, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(153, 28, 31, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(154, 28, 32, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(155, 28, 33, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(156, 28, 34, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(157, 28, 35, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(158, 28, 36, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(159, 28, 42, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(160, 28, 43, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(161, 28, 44, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(162, 28, 45, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(163, 28, 46, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(164, 28, 47, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(165, 28, 53, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(166, 28, 54, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(167, 28, 55, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(168, 28, 56, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(169, 28, 57, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(170, 28, 58, 'Dạ em chào chị ạ.Cảm ơn chị đã quan tâm đến sản phẩm bên em. Bên em có hỗ trợ ship toàn quốc ạ. Nhận hàng rồi mới thanh toán ạ. Miễn phí ship cho đơn hàng trên 500.000đ ạ.', 1559105735, 1),
(171, 32, 1, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(172, 32, 2, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(173, 32, 3, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(174, 32, 4, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(175, 32, 5, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(176, 32, 8, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(177, 32, 9, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(178, 32, 10, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(179, 32, 11, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(180, 32, 12, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(181, 32, 13, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(182, 32, 14, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(183, 32, 15, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(184, 32, 16, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(185, 32, 17, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(186, 32, 18, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(187, 32, 19, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(188, 32, 20, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(189, 32, 21, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(190, 32, 22, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(191, 32, 23, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(192, 32, 29, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(193, 32, 30, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(194, 32, 31, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(195, 32, 32, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(196, 32, 33, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(197, 32, 34, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(198, 32, 35, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(199, 32, 36, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(200, 32, 42, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(201, 32, 43, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(202, 32, 44, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(203, 32, 45, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(204, 32, 46, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(205, 32, 47, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(206, 32, 53, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(207, 32, 54, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(208, 32, 55, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(209, 32, 56, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(210, 32, 57, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(211, 32, 58, 'Sản phẩm bên mình có được bảo hành không ạ.', 1559105879, 1),
(212, 35, 1, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(213, 35, 2, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(214, 35, 3, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(215, 35, 4, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(216, 35, 5, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(217, 35, 8, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(218, 35, 9, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(219, 35, 10, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(220, 35, 11, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(221, 35, 12, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(222, 35, 13, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(223, 35, 14, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(224, 35, 15, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(225, 35, 16, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(226, 35, 17, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(227, 35, 18, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(228, 35, 19, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(229, 35, 20, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(230, 35, 21, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(231, 35, 22, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(232, 35, 23, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(233, 35, 29, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(234, 35, 30, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(235, 35, 31, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(236, 35, 32, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(237, 35, 33, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(238, 35, 34, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(239, 35, 35, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(240, 35, 36, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(241, 35, 42, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(242, 35, 43, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(243, 35, 44, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(244, 35, 45, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(245, 35, 46, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(246, 35, 47, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(247, 35, 53, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(248, 35, 54, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(249, 35, 55, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(250, 35, 56, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(251, 35, 57, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1),
(252, 35, 58, 'Chào chị ạ. Tất cả sản phẩm bên em đều có chế độ bảo hành chị nhé.', 1559105934, 1);

--
-- Triggers `comment`
--
DELIMITER $$
CREATE TRIGGER `add time cmt` BEFORE INSERT ON `comment` FOR EACH ROW BEGIN
SET NEW.time_created = UNIX_TIMESTAMP();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `info_company`
--

CREATE TABLE `info_company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link_fb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `info_company`
--

INSERT INTO `info_company` (`id`, `name`, `address`, `phone`, `logo`, `email`, `link_fb`, `link_youtube`, `link_instagram`) VALUES
(1, 'Công ty TNHH S Shop Việt Nam', 'Số 1 Đại Cồ Việt, Hai Bà Trưng, Hà Nội', '0962302616', 'uploads/LogoCompany/logo.png', 'bkshop@gmail.com', 'https://www.facebook.com/profile.php?id=100005946431679', 'https://www.youtube.com/channel/UCYZjzAc6Neo2uphYK7_THBw?view_as=subscriber', 'https://www.instagram.com/su.nguyenduy.hust/');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `sales_id` int(11) DEFAULT NULL,
  `time_created` double NOT NULL,
  `time_update` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `phone`, `email`, `note`, `sales_id`, `time_created`, `time_update`, `status`) VALUES
(26, 26, '36 Láng Hạ, Đống Đa, Hà Nội', '0981706560', 'hongnhung@gmail.com', '', 27, 1559027609, NULL, 3),
(27, 25, '12 Khuất Duy Tiến, Thanh Xuân, Hà Nội', '0981706560', 'haivando@monkey.com', '', 27, 1559028735, NULL, 3),
(28, 29, '12 Khuất Duy Tiến, Thanh Xuân, Hà Nội', '0981706560', 'namtrangle@monkey.com', '', 28, 1559028844, NULL, 3),
(29, 25, '333 Đê La Thành, Đống Đa, Hà Nội', '0981706560', 'haivando@monkey.com', '', 27, 1559029994, NULL, 4),
(30, 30, '12 Khuất Duy Tiến, Thanh Xuân, Hà Nội', '0981706560', 'thuhuyenmai@gmail.com', '', 27, 1559030122, NULL, 3),
(31, 25, '12 Khuất Duy Tiến, Thanh Xuân, Hà Nội', '0981706560', 'haivando@monkey.com', '', 28, 1559030699, NULL, 2),
(32, 26, 'số 1, Đại Cồ VIệt, Hai Bà Trưng, Hà Nội', '0981706560', 'hongnhung@gmail.com', '', 28, 1559030814, NULL, 2),
(33, 31, '12 Khuất Duy Tiến, Thanh Xuân, Hà Nội', '0981706560', 'linhpham@gmail.com', '', 28, 1559030916, NULL, 4),
(34, 32, '40 Ngõ 80 Kim Giang, Quận Thanh Xuân, Hà Nội', '0981706560', 'hanhnguyen.nb@gnmail.com', '', 28, 1559031055, NULL, 3),
(35, 33, '12 Khuất Duy Tiến, Thanh Xuân, Hà Nội', '0981706560', 'litanguyen@gmail.com', '', 28, 1559031169, NULL, 2),
(36, 32, '12 Khuất Duy Tiến, Thanh Xuân, Hà Nội', '0981706560', 'hanhnguyen.nb@gnmail.com', '', 27, 1559031308, NULL, 2),
(37, 25, '464, Đường Lĩnh Nam, Quận Hoàng Mai, Hà Nội', '0981706560', 'haivando@monkey.com', '', NULL, 1559031432, NULL, 1),
(38, 32, '80 Kim Giang,  Quận Thanh Xuân, Hà Nội', '0981706560', 'hanhnguyen.nb@gnmail.com', '', NULL, 1559031577, NULL, 1),
(39, 22, '123', '0981706560', 'hai.ledinh.hust@gmail.com', '213', NULL, 1559116214, NULL, 1),
(40, 22, '123', '0981706560', 'hai.ledinh.hust@gmail.com', '123', NULL, 1559116514, NULL, 1),
(41, 39, 'viet nam', '0962302616', 'su.nguyenduy@gmail.com', 'giao hang nhanh', NULL, 1559116742, NULL, 1),
(42, 34, 'Kim Giang', '0962302616', 'su.nguyenduy.nb@gmail.com', 'giao hàng nhanh', NULL, 1559286179, NULL, 1),
(43, 39, 'ghlhjhjk', '0962302616', 'su.nguyenduy@gmail.com', 'gfdgdfd', NULL, 1559534671, NULL, 1);

--
-- Triggers `order`
--
DELIMITER $$
CREATE TRIGGER `add time order` BEFORE INSERT ON `order` FOR EACH ROW BEGIN
SET NEW.time_created = UNIX_TIMESTAMP();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(33, 26, 6, 5),
(34, 27, 29, 1),
(35, 27, 9, 2),
(36, 27, 7, 3),
(37, 28, 13, 1),
(38, 28, 12, 1),
(39, 28, 6, 1),
(40, 28, 7, 1),
(41, 28, 27, 1),
(42, 29, 1, 5),
(43, 30, 11, 3),
(44, 30, 2, 1),
(45, 31, 7, 1),
(46, 31, 26, 3),
(47, 32, 1, 3),
(48, 33, 10, 1),
(49, 33, 9, 1),
(50, 34, 8, 1),
(51, 34, 6, 1),
(52, 35, 9, 1),
(53, 36, 6, 3),
(54, 37, 8, 1),
(55, 38, 3, 1),
(56, 38, 25, 1),
(57, 39, 1, 3),
(58, 39, 12, 1),
(59, 40, 1, 1),
(60, 40, 5, 1),
(61, 40, 6, 2),
(62, 40, 11, 1),
(63, 41, 2, 1),
(64, 41, 3, 1),
(65, 41, 4, 1),
(66, 41, 8, 1),
(67, 42, 1, 1),
(68, 42, 5, 1),
(69, 43, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price_origin` int(11) NOT NULL,
  `price_sales` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_exp` int(11) NOT NULL DEFAULT '0',
  `id_category` int(11) NOT NULL,
  `id_promotion` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `time_created` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `label`, `price_origin`, `price_sales`, `image`, `description`, `quantity`, `quantity_exp`, `id_category`, `id_promotion`, `status`, `time_created`) VALUES
(1, 'Samsung Galaxy A50 64GB', 'Samsung', 6990000, 0, 'samsung-galaxy-a50-black-1-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:&nbsp;6.4&quot;, Full HD+</li>\r\n	<li>Hệ điều h&agrave;nh:Android 9.0 (Pie)</li>\r\n	<li>Camera sau:Ch&iacute;nh 25 MP &amp; Phụ 8 MP, 5 MP</li>\r\n	<li>Camera trước:25 MP</li>\r\n	<li>CPU: Exynos 9610 8 nh&acirc;n 64-bit</li>\r\n	<li>RAM:4 GB</li>\r\n	<li>Bộ nhớ trong:64 GB</li>\r\n	<li>Thẻ nhớ:MicroSD, hỗ trợ tối đa 512 GB</li>\r\n	<li>Thẻ SIM:2 Nano SIM,&nbsp; Hỗ trợ 4G</li>\r\n	<li>Dung lượng pin:4000 mAh,&nbsp;c&oacute; sạc nhanh</li>\r\n</ul>\r\n', 87, 7, 1, 5, 3, 1558599568),
(2, 'Samsung Galaxy A9 (2018)', 'Samsung', 8290000, 0, 'samsung-galaxy-a50-black-1-400x4601.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>Super AMOLED, 6.3&quot;, Full HD+</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Android 8.0 (Oreo)</p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 24 MP &amp; Phụ 10 MP, 8 MP, 5 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>24 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p>Qualcomm Snapdragon 660 8 nh&acirc;n</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>6 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>Thẻ nhớ:\r\n	<p>MicroSD, hỗ trợ tối đa 512 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p>2 Nano SIM,&nbsp;Hỗ trợ 4G</p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>3800 mAh,&nbsp;c&oacute; sạc nhanh</p>\r\n	</li>\r\n</ul>\r\n', 98, 1, 1, 7, 1, 1558599719),
(3, 'Samsung Galaxy S10', 'Samsung', 17990000, 0, 'samsung-galaxy-a50-black-1-400x4602.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>Dynamic AMOLED, 6.1&quot;, Quad HD+ (2K+)</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Android 9.0 (Pie)</p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 16 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>10 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p>Exynos 9820 8 nh&acirc;n 64-bit</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>8 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>Thẻ nhớ:\r\n	<p>MicroSD, hỗ trợ tối đa 512 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p>2 SIM Nano (SIM 2 chung khe thẻ nhớ),&nbsp;Hỗ trợ 4G</p>\r\n\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>3400 mAh,&nbsp;c&oacute; sạc nhanh</p>\r\n	</li>\r\n</ul>\r\n', 98, 0, 1, 0, 1, 1558599795),
(4, 'iPhone X 64GB', 'Apple', 22990000, 21990000, 'iphone-x-64gb-1-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>OLED 5.8&quot;,&nbsp;Super Retina</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>iOS 12</p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 12 MP &amp; Phụ 12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p>Apple A11 Bionic 6 nh&acirc;n</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>3 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>64 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p>1 Nano SIM Hỗ trợ 4G</p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>2716 mAh,&nbsp;c&oacute; sạc nhanh</p>\r\n	</li>\r\n</ul>\r\n', 99, 0, 1, 3, 1, 1558599872),
(5, 'Samsung Galaxy M20', 'Samsung', 4990000, 4690000, 'iphone-x-64gb-1-400x4601.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>PLS TFT LCD, 6.3&quot;, Full HD+</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Android 8.1 (Oreo)</p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 13 MP &amp; Phụ 5 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>8 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p>Exynos 7904 8 nh&acirc;n 64-bit</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>3 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>32 GB</p>\r\n	</li>\r\n	<li>Thẻ nhớ:\r\n	<p>MicroSD, hỗ trợ tối đa 512 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p>2 Nano SIM,&nbsp;Hỗ trợ 4G</p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>5000 mAh,&nbsp;&gt;c&oacute; sạc nhanh</p>\r\n	</li>\r\n</ul>\r\n', 98, 0, 1, 4, 3, 1558599970),
(6, 'Apple Watch S4 GPS 40mm Viền Nhôm dây cao su', 'Apple', 11990000, 11490000, 'apple-watch-s4-gps-40mm-vien-nhom-mau-hong-nt-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:\r\n	<p>AMOLED</p>\r\n	</li>\r\n	<li>K&iacute;ch thước m&agrave;n h&igrave;nh:\r\n	<p>2.0 inch</p>\r\n	</li>\r\n	<li>Thời gian sử dụng pin:\r\n	<p>Khoảng 18 giờ</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>iOS 12 trở l&ecirc;n</p>\r\n	</li>\r\n	<li>Chống nước:\r\n	<p>50m</p>\r\n	</li>\r\n	<li>Chất liệu mặt:\r\n	<p>Ion-X strengthened glass</p>\r\n	</li>\r\n	<li>Đường k&iacute;nh mặt:\r\n	<p>40 mm</p>\r\n	</li>\r\n	<li>Kết nối:\r\n	<p>Wifi,&nbsp;Bluetooth v5.0 GPS</p>\r\n	</li>\r\n	<li>Ng&ocirc;n ngữ:\r\n	<p>Tiếng Anh, Tiếng Việt</p>\r\n	</li>\r\n	<li>Tiện &iacute;ch:\r\n	<p>Đo nhịp tim, T&iacute;nh lượng Calories ti&ecirc;u thụ, Đếm số bước ch&acirc;n, Điện t&acirc;m đồ, T&iacute;nh qu&atilde;ng đường chạy, Chế độ luyện tập, Ph&aacute;t hiện t&eacute; ng&atilde;, B&aacute;o thức, Nghe nhạc với tai nghe Bluetooth, Gọi điện tr&ecirc;n đồng hồ, Từ chối cuộc gọi, Dự b&aacute;o thời tiết, Điều khiển chơi nhạc, Thay mặt đồng hồ</p>\r\n	</li>\r\n</ul>\r\n', 85, 10, 70, 0, 3, 1558600489),
(7, 'Samsung Galaxy Watch 42mm', 'Samsung', 6990000, 0, 'samsung-galaxy-watch-42mm-nt-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:\r\n	<p>SUPER AMOLED</p>\r\n	</li>\r\n	<li>K&iacute;ch thước m&agrave;n h&igrave;nh:\r\n	<p>1.2 inch</p>\r\n	</li>\r\n	<li>Thời gian sử dụng pin:\r\n	<p>Khoảng 2 ng&agrave;y</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Android 5.0, iOS 9 trở l&ecirc;n</p>\r\n	</li>\r\n	<li>Chống nước:\r\n	<p>50m</p>\r\n	</li>\r\n	<li>Chất liệu mặt:\r\n	<p>K&iacute;nh cường lực Gorilla Glass Dx+</p>\r\n	</li>\r\n	<li>Đường k&iacute;nh mặt:\r\n	<p>42 mm</p>\r\n	</li>\r\n	<li>Kết nối:\r\n	<p>Bluetooth, Wifi,&nbsp;GPS</p>\r\n	</li>\r\n	<li>Ng&ocirc;n ngữ:\r\n	<p>Tiếng Việt, Ứng dụng tiếng Việt</p>\r\n	</li>\r\n	<li>Tiện &iacute;ch:\r\n	<p>Theo d&otilde;i giấc ngủ, Đo nhịp tim, T&iacute;nh lượng Calories ti&ecirc;u thụ, Đếm số bước ch&acirc;n, T&iacute;nh qu&atilde;ng đường chạy, Chế độ luyện tập, C&agrave;i ứng dụng Galaxy App, B&aacute;o thức, Nghe nhạc với tai nghe Bluetooth, M&agrave;n h&igrave;nh lu&ocirc;n hiển thị, Gọi điện tr&ecirc;n đồng hồ, Từ chối cuộc gọi, Đồng hồ bấm giờ, Điều khiển chơi nhạc, Rung th&ocirc;ng b&aacute;o, Thay mặt đồng hồ, Nhận cuộc gọi, T&igrave;m điện thoại, Nhắc nhở</p>\r\n	</li>\r\n</ul>\r\n', 95, 4, 70, 0, 1, 1558600572),
(8, 'iPhone Xs Max 64GB', 'Apple', 29990000, 0, 'iphone-xs-max-gray-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>OLED, 6.5&quot;,&nbsp;Super Retina</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>iOS 12</p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 12 MP &amp; Phụ 12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p>Apple A12 Bionic 6 nh&acirc;n</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>64 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p>Nano SIM &amp; eSIM,&nbsp;Hỗ trợ 4G</p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>3174 mAh,&nbsp;c&oacute; sạc nhanh</p>\r\n	</li>\r\n</ul>\r\n', 97, 1, 1, 7, 1, 1558600665),
(9, 'Samsung Galaxy Note 8', 'Samsung', 14990000, 11990000, 'samsung-galaxy-note8-black-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>Super AMOLED, 6.3&quot;, Quad HD+ (2K+)</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Android 7.1 (Nougat)</p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 12 MP &amp; Phụ 12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>8 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p>Exynos 8895 8 nh&acirc;n 64-bit</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>6 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>64 GB</p>\r\n	</li>\r\n	<li>Thẻ nhớ:\r\n	<p>MicroSD, hỗ trợ tối đa 256 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p>2 Nano SIM,&nbsp;Hỗ trợ 4G</p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>3300 mAh,&nbsp;c&oacute; sạc nhanh</p>\r\n	</li>\r\n</ul>\r\n', 97, 2, 1, 0, 1, 1558600743),
(10, 'OPPO R17 Pro', 'OPPO', 16990000, 13990000, 'oppo-r17-pro-2-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>AMOLED, 6.4&quot;, Full HD+</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>ColorOS 5.2 (Android 8.1)</p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 12 MP &amp; Phụ 20 MP, TOF 3D</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>25 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p>Snapdragon 710 8 nh&acirc;n 64-bit</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>8 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p>2 Nano SIM,&nbsp;Hỗ trợ 4G</p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>3700 mAh,&nbsp;c&oacute; sạc nhanh</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 1, 0, 1, 1558600850),
(11, 'iPad Mini 7.9 inch Wifi Cellular 64GB (2019)', 'Apple', 14990000, 0, 'ipad-mini-79-inch-wifi-cellular-64gb-2019-gray-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p>LED backlit LCD 7.9&quot;</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh\r\n	<p>iOS 12</p>\r\n	</li>\r\n	<li>CPU\r\n	<p>Apple A12 Bionic 6 nh&acirc;n, 2 nh&acirc;n 2.5 GHz Vortex &amp; 4 nh&acirc;n 1.6 GHz Tempest</p>\r\n	</li>\r\n	<li>RAM\r\n	<p>3 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong\r\n	<p>64 GB</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>8 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>Kết nối mạng\r\n	<p>WiFi, 3G,&nbsp;Hỗ trợ 4G</p>\r\n	</li>\r\n	<li>Hỗ trợ SIM\r\n	<p>Nano SIM + eSIM</p>\r\n	</li>\r\n	<li>Đ&agrave;m thoại\r\n	<p>FaceTime</p>\r\n	</li>\r\n</ul>\r\n', 96, 3, 62, 3, 3, 1558601186),
(12, 'iPad Pro 11 inch Wifi 64GB (2018)', 'Apple', 21990000, 21490000, 'ipad-pro-11-inch-2018-64gb-wifi-33397-chitiet-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p>Liquid Retina display, 11&quot;</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh\r\n	<p>iOS 12</p>\r\n	</li>\r\n	<li>CPU\r\n	<p>Apple A12X Bionic 64-bit</p>\r\n	</li>\r\n	<li>RAM\r\n	<p>4 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong\r\n	<p>64 GB</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>Kết nối mạng\r\n	<p>WiFi, Kh&ocirc;ng hỗ trợ 3G, Kh&ocirc;ng hỗ trợ 4G</p>\r\n	</li>\r\n	<li>Đ&agrave;m thoại\r\n	<p>FaceTime</p>\r\n	</li>\r\n	<li>Trọng lượng\r\n	<p>468 g</p>\r\n	</li>\r\n</ul>\r\n', 98, 1, 62, 0, 1, 1558601275),
(13, 'iPad Wifi Cellular 128GB (2018)', 'Apple', 14490000, 13990000, 'ipad-6th-wifi-cellular-128gb-1-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p>LED backlit LCD, 9.7&quot;</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh\r\n	<p>iOS 12</p>\r\n	</li>\r\n	<li>CPU\r\n	<p>Apple A10 Fusion, 2.34 GHz</p>\r\n	</li>\r\n	<li>RAM\r\n	<p>2 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>8 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>1.2 MP</p>\r\n	</li>\r\n	<li>Kết nối mạng\r\n	<p>WiFi, 3G,&nbsp;4G LTE</p>\r\n	</li>\r\n	<li>Hỗ trợ SIM\r\n	<p>Nano Sim</p>\r\n	</li>\r\n</ul>\r\n', 99, 1, 62, 0, 1, 1558601372),
(14, 'iPad Air 10.5 inch Wifi 64GB 2019', 'Apple', 13990000, 0, 'ipad-air-105-inch-wifi-2019-silver-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p>LED backlit LCD, 10.5&quot;</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh\r\n	<p>iOS 12</p>\r\n	</li>\r\n	<li>CPU\r\n	<p>Apple A12 Bionic 6 nh&acirc;n, 2 nh&acirc;n 2.5 GHz Vortex &amp; 4 nh&acirc;n 1.6 GHz Tempest</p>\r\n	</li>\r\n	<li>RAM\r\n	<p>3 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong\r\n	<p>64 GB</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>8 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>Kết nối mạng\r\n	<p>WiFi, Kh&ocirc;ng hỗ trợ 3G, Kh&ocirc;ng hỗ trợ 4G</p>\r\n	</li>\r\n	<li>Đ&agrave;m thoại\r\n	<p>FaceTime</p>\r\n	</li>\r\n	<li>Trọng lượng\r\n	<p>456 g</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 62, 3, 1, 1558601533),
(15, 'Samsung Galaxy Tab A plus 8', 'Samsung', 6990000, 0, 'samsung-galaxy-tab-a8-plus-p205-black-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p>WUXGA TFT, 8&quot;</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh\r\n	<p>Android 9.0 (Pie)</p>\r\n	</li>\r\n	<li>CPU\r\n	<p>Exynos 7904, 2 nh&acirc;n 1.8 GHz &amp; 6 nh&acirc;n 1.6 GHz</p>\r\n	</li>\r\n	<li>RAM\r\n	<p>3 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong\r\n	<p>32 GB</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>8 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>5 MP</p>\r\n	</li>\r\n	<li>Kết nối mạng\r\n	<p>WiFi, 3G,&nbsp;4G LTE</p>\r\n	</li>\r\n	<li>Hỗ trợ SIM\r\n	<p>Nano Sim</p>\r\n	</li>\r\n	<li>Đ&agrave;m thoại\r\n	<p>C&oacute;</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 62, 0, 1, 1558601627),
(16, 'Lenovo Tab E10 TB-X104L Đen', 'Lenovo', 3990000, 3590000, 'lenovo-tab-e10-tb-x104l-den-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p>IPS LCD, 10.1&quot;</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh\r\n	<p>Android 8.0</p>\r\n	</li>\r\n	<li>CPU\r\n	<p>Qualcomm MSM8909, 1.33 GHz</p>\r\n	</li>\r\n	<li>RAM\r\n	<p>2 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong\r\n	<p>16 GB</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>5 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>2 MP</p>\r\n	</li>\r\n	<li>Kết nối mạng\r\n	<p>WiFi, 3G,&nbsp;4G LTE</p>\r\n	</li>\r\n	<li>Hỗ trợ SIM\r\n	<p>Nano Sim</p>\r\n	</li>\r\n	<li>Trọng lượng\r\n	<p>522 g</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 62, 3, 1, 1558601729),
(17, 'Lenovo IdeaPad 330 15IKB i5', 'Lenovo', 12990000, 11990000, 'lenovo-ideapad-330-15ikb-i5-8250u-4gb-1tb-win10-8-1-1-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>CPU:\r\n	<p>Intel Core i5 Coffee Lake, 8250U, 1.60 GHz</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB,&nbsp;DDR3L(On board+1Khe), 2133 MHz</p>\r\n	</li>\r\n	<li>Ổ cứng:\r\n	<p>HDD: 1 TB SATA3</p>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>15.6 inch,&nbsp;Full HD (1920 x 1080)</p>\r\n	</li>\r\n	<li>Card m&agrave;n h&igrave;nh:\r\n	<p>Card đồ họa t&iacute;ch hợp,&nbsp;Intel&reg; UHD Graphics 620</p>\r\n	</li>\r\n	<li>Cổng kết nối:\r\n	<p>HDMI 1.4,&nbsp;2 x USB 3.0,&nbsp;USB Type-C</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Windows 10 Home SL</p>\r\n	</li>\r\n	<li>Thiết kế:\r\n	<p>Vỏ nhựa, PIN liền</p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>D&agrave;y 23 mm, 2.2 kg</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 63, 0, 1, 1558602691),
(18, 'Apple Macbook Air 2018 i5/8GB/128GB (MREE2SA/A)', 'Apple', 31990000, 0, 'apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>CPU:\r\n	<p>Intel Core i5 Coffee Lake, 1.60 GHz</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>8 GB,&nbsp;DDR3, 2133 MHz</p>\r\n	</li>\r\n	<li>Ổ cứng:\r\n	<p>SSD: 128 GB</p>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>13.3 inch,&nbsp;Retina (2560 x 1600)</p>\r\n	</li>\r\n	<li>Card m&agrave;n h&igrave;nh:\r\n	<p>Card đồ họa t&iacute;ch hợp, Intel UHD Graphics 617</p>\r\n	</li>\r\n	<li>Cổng kết nối:\r\n	<p>2 x Thunderbolt 3 (USB-C)</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Mac OS</p>\r\n	</li>\r\n	<li>Thiết kế:\r\n	<p>Vỏ kim loại nguy&ecirc;n khối, PIN liền</p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>D&agrave;y 4.1 đến 15.6 mm, 1.25 kg</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 63, 8, 3, 1558602810),
(19, 'Asus VivoBook X507UF i5 8250U/4GB/1TB/MX130/Win10 (EJ121T)', 'ASUS', 14590000, 0, 'asus-x507uf-i5-8250u-4gb-1tb-2gb-mx130-ej121t-thumb-1-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>CPU:\r\n	<p>Intel Core i5 Kabylake Refresh, 8250U, 1.60 GHz</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB,&nbsp;DDR4 (2 khe), 2400 MHz</p>\r\n	</li>\r\n	<li>Ổ cứng:\r\n	<p>HDD: 1 TB SATA3,&nbsp;Hỗ trợ khe cắm SSD M.2 SATA3</p>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>15.6 inch,&nbsp;Full HD (1920 x 1080)</p>\r\n	</li>\r\n	<li>Card m&agrave;n h&igrave;nh:\r\n	<p>Card đồ họa rời,&nbsp;NVIDIA Geforce MX130, 2GB</p>\r\n	</li>\r\n	<li>Cổng kết nối:\r\n	<p>2 x USB 2.0,&nbsp;HDMI,&nbsp;USB 3.0</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Windows 10 Home SL</p>\r\n	</li>\r\n	<li>Thiết kế:\r\n	<p>Vỏ nhựa, PIN liền</p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>D&agrave;y 21.9mm, 1.8 kg</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 63, 0, 1, 1558602885),
(20, 'Dell Inspiron 3576 i5 8250U/4GB/1TB/2GB AMD 520/Win10/(70157552)', 'Dell', 15790000, 0, 'dell-inspiron-3576-i5-8250u-70157552-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>CPU:\r\n	<p>Intel Core i5 Kabylake Refresh, 8250U, 1.60 GHz</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB,&nbsp;DDR4 (2 khe)2400 MHz</p>\r\n	</li>\r\n	<li>Ổ cứng:\r\n	<p>HDD: 1 TB</p>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>15.6 inch,&nbsp;Full HD (1920 x 1080)</p>\r\n	</li>\r\n	<li>Card m&agrave;n h&igrave;nh:\r\n	<p>Card đồ họa rời,&nbsp;AMD Radeon 520, 2GB</p>\r\n	</li>\r\n	<li>Cổng kết nối:\r\n	<p>HDMI 1.4,&nbsp;2 x USB 3.0,&nbsp;LAN (RJ45),&nbsp;USB 2.0</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Windows 10 Home SL</p>\r\n	</li>\r\n	<li>Thiết kế:\r\n	<p>Vỏ nhựa, PIN rời</p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>D&agrave;y 23.65 mm, 2.3 Kg</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 63, 8, 1, 1558603011),
(21, 'Asus VivoBook S510UN i5 ', 'ASUS', 16790000, 0, 'asus-s510un-i5-8250u-4gb-1tb-mx150-win10-bq276t-33397-thumb-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>CPU:\r\n	<p>Intel Core i5 Coffee Lake, 8250U, 1.60 GHz</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB,&nbsp;DDR4 (2 khe), 2400 MHz</p>\r\n	</li>\r\n	<li>Ổ cứng:\r\n	<p>HDD: 1 TB SATA3,&nbsp;Hỗ trợ khe cắm SSD M.2 SATA3</p>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>15.6 inch,&nbsp;Full HD (1920 x 1080)</p>\r\n	</li>\r\n	<li>Card m&agrave;n h&igrave;nh:\r\n	<p>Card đồ họa rời,&nbsp;NVIDIA Geforce MX150, 2GB</p>\r\n	</li>\r\n	<li>Cổng kết nối:\r\n	<p>2 x USB 2.0&nbsp;HDMI,&nbsp;USB 3.0,&nbsp;USB Type-C</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Windows 10 Home SL</p>\r\n	</li>\r\n	<li>Thiết kế:\r\n	<p>Vỏ nhựa - nắp lưng bằng kim loại, PIN liền</p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>D&agrave;y 17 mm, 1.62 kg</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 63, 0, 1, 1558603101),
(22, 'Dell Vostro 3578 i5 8250U/4GB/1TB/2GB 520/Win10/(P63F002V78B)', 'Dell', 16490000, 0, 'dell-vostro-3578-p63f002v78b-450-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>CPU:\r\n	<p>Intel Core i5 Kabylake Refresh, 8250U, 1.60 GHz</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB,&nbsp;DDR4 (2 khe) 2400 MHz</p>\r\n	</li>\r\n	<li>Ổ cứng:\r\n	<p>HDD: 1 TB</p>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>15.6 inch,&nbsp;Full HD (1920 x 1080)</p>\r\n	</li>\r\n	<li>Card m&agrave;n h&igrave;nh:\r\n	<p>Card đồ họa rời,&nbsp;AMD Radeon 520, 2GB</p>\r\n	</li>\r\n	<li>Cổng kết nối:\r\n	<p>HDMI 1.4,&nbsp;2 x USB 3.0,&nbsp;LAN (RJ45),&nbsp;USB 2.0,&nbsp;VGA (D-Sub)</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Windows 10 Home SL</p>\r\n	</li>\r\n	<li>Thiết kế:\r\n	<p>Vỏ nhựa, PIN rời</p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>D&agrave;y 25.44 mm, 2.2 kg</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 63, 0, 1, 1558603168),
(23, 'HP Pavilion 15 cs1044TX i5 8265U/4GB/1TB', 'HP', 16390000, 0, 'hp-pavilion-15-cs1044tx-i5-8265u-4gb-1tb-2gb-mx130-thumb-33397-thumb-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>CPU:\r\n	<p>Intel Core i5 Coffee Lake 8265U, 1.60 GHz</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB,&nbsp;DDR4 (2 khe), 2666 MHz</p>\r\n	</li>\r\n	<li>Ổ cứng:\r\n	<p>HDD: 1 TB,&nbsp;Hỗ trợ khe cắm SSD M.2 PCIe,&nbsp;Hỗ trợ bộ nhớ Intel&reg; Optane&trade;</p>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>15.6 inch,&nbsp;Full HD (1920 x 1080)</p>\r\n	</li>\r\n	<li>Card m&agrave;n h&igrave;nh:\r\n	<p>Card đồ họa rời,&nbsp;NVIDIA Geforce MX130, 2GB</p>\r\n	</li>\r\n	<li>Cổng kết nối:\r\n	<p>2 x USB 3.1,&nbsp;HDMI,&nbsp;LAN (RJ45,&nbsp;USB Type-C</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Windows 10 Home SL</p>\r\n	</li>\r\n	<li>Thiết kế:\r\n	<p>Vỏ nhựa - nắp lưng bằng kim loại, PIN liền</p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>D&agrave;y 17.9 mm, 1.87 kg</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 63, 0, 1, 1558603237),
(24, 'Tai nghe nhét trong Kanen IP-218', 'Samsung', 150000, 97000, 'tai-nghe-ep-kanen-ip-218-ava-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>Jack cắm:\r\n	<p><em>3.5 mm</em></p>\r\n	</li>\r\n	<li>Độ d&agrave;i d&acirc;y:\r\n	<p><em>1.2 m</em></p>\r\n	</li>\r\n	<li>Ph&iacute;m điều khiển:</li>\r\n</ul>\r\n\r\n<p>&nbsp;- Mic thoại</p>\r\n\r\n<p>- Nghe/nhận cuộc gọi</p>\r\n\r\n<p>&nbsp;- Ph&aacute;t/dừng chơi nhạc</p>\r\n\r\n<p>&nbsp;- Chuyển b&agrave;i h&aacute;t</p>\r\n\r\n<p>&nbsp;- Tăng/giảm &acirc;m lượng</p>\r\n\r\n<ul>\r\n	<li>Bộ b&aacute;n h&agrave;ng:\r\n	<p>Tai nghe 2 cặp đệm tai nghe</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 70, 0, 1, 1558603380),
(25, 'Dây cáp Micro USB 1 m eSaver DS118-TB', 'Samsung', 80000, 40000, 'cap-micro-1m-esaver-ds118br-tb-avatar-1-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>Jack cắm:\r\n	<p><em>Micro USB</em></p>\r\n	</li>\r\n	<li>T&iacute;nh năng:\r\n	<p><em>Sạc</em><em>Truyền dữ liệu</em></p>\r\n	</li>\r\n	<li>D&ograve;ng sạc tối đa:\r\n	<p><em>Max 3A</em></p>\r\n	</li>\r\n	<li>Độ d&agrave;i d&acirc;y:\r\n	<p><em>1 m</em></p>\r\n	</li>\r\n	<li>Xuất xứ\r\n	<p><em>Trung Quốc</em></p>\r\n	</li>\r\n</ul>\r\n', 99, 0, 70, 0, 1, 1558603436),
(26, 'Pin sạc dự phòng 10.000 mAh eSaver LA Y325S', 'LG', 500000, 325000, 'pin-sac-du-phong-10000mah-esaver-la-y325s-anh-dai-dien-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>Hiệu suất sạc:\r\n	<p><em>65%</em></p>\r\n	</li>\r\n	<li>Đ&egrave;n LED b&aacute;o hiệu:\r\n	<p><em>C&oacute;</em></p>\r\n	</li>\r\n	<li>Thời gian sạc:\r\n	<p><em>9 - 10 giờ (d&ugrave;ng Adapter 1A)</em><em>5 - 6 giờ (d&ugrave;ng Adapter 2.1A)</em></p>\r\n	</li>\r\n	<li>Nguồn v&agrave;o:\r\n	<p><em>5V - 1A/2.1A</em></p>\r\n	</li>\r\n	<li>L&otilde;i pin:\r\n	<p><em>Pin Li-Ion</em></p>\r\n	</li>\r\n	<li>Cổng ra USB 1:\r\n	<p><em>5V - 1A</em></p>\r\n	</li>\r\n	<li>Cổng ra USB 2:\r\n	<p><em>5V - 2.1A</em></p>\r\n	</li>\r\n	<li>K&iacute;ch thước\r\n	<p><em>D&agrave;i 14 cm - ngang 6.2 cm - d&agrave;y 1.4 cm</em></p>\r\n	</li>\r\n	<li>Trọng lượng:\r\n	<p><em>300 g</em></p>\r\n	</li>\r\n	<li>Xuất xứ\r\n	<p><em>Trung Quốc</em></p>\r\n	</li>\r\n</ul>\r\n', 97, 0, 70, 0, 1, 1558603549),
(27, 'Tai nghe chụp tai Kanen IP-2090', 'Samsung', 300000, 195000, 'tai-nghe-chup-tai-kanen-ip-2090-2-3-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>Jack cắm:\r\n	<p><em>3.5 mm</em></p>\r\n	</li>\r\n	<li>Độ d&agrave;i d&acirc;y:\r\n	<p><em>1.5 m</em></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ph&iacute;m điều khiển:</p>\r\n\r\n<p>- Mic thoại</p>\r\n\r\n<p>- Nghe/nhận cuộc gọi</p>\r\n\r\n<p>&nbsp;- Ph&aacute;t/dừng chơi nhạc</p>\r\n\r\n<p>- Chuyển b&agrave;i h&aacute;t</p>\r\n\r\n<p>- Tăng/giảm &acirc;m lượ<em>ng</em></p>\r\n\r\n<ul>\r\n	<li>Bộ b&aacute;n h&agrave;ng:\r\n	<p>Tai nghe</p>\r\n	</li>\r\n</ul>\r\n', 99, 1, 70, 0, 1, 1558603629),
(28, 'Bộ thu phát Bluetooth cho loa Roman J205', 'Samsung', 250000, 187000, 'adapter-bluetooth-cong-35mm-roman-j205-avatar-1-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>Jack cắm:\r\n	<p><em>3.5 mm</em></p>\r\n	</li>\r\n	<li>T&iacute;nh năng:\r\n	<p><em>Ph&aacute;t Bluetooth</em></p>\r\n	</li>\r\n	<li>Xuất xứ\r\n	<p><em>Trung Quốc</em></p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 70, 0, 1, 1558603723),
(29, 'iPhone 7 Plus 32GB', 'Samsung', 13990000, 12990000, 'iphone-7-plus-gold-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>LED-backlit IPS LCD, 5.5&quot;,&nbsp;Retina HD</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>iOS 12</p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 12 MP &amp; Phụ 12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p>Apple A10 Fusion 4 nh&acirc;n 64-bit</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>3 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>32 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p>1 Nano SIM,&nbsp;Hỗ trợ 4G</p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>2900 mAh</p>\r\n	</li>\r\n</ul>\r\n', 99, 1, 1, 5, 1, 1558641532),
(30, 'OPPO F11', 'OPPO', 7290000, 0, 'oppo-f11-mtp-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>LTPS LCD, 6.5&quot;, Full HD+</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Android 9.0 (Pie)</p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 48 MP &amp; Phụ 5 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>16 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p>MediaTek Helio P70 8 nh&acirc;n</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>6 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>64 GB</p>\r\n	</li>\r\n	<li>Thẻ nhớ:\r\n	<p>MicroSD, hỗ trợ tối đa 256 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p>2 SIM Nano (SIM 2 chung khe thẻ nhớ),&nbsp;Hỗ trợ 4G</p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>4020 mAh,&nbsp;c&oacute; sạc nhanh</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 1, 0, 1, 1558641652),
(31, 'Samsung Galaxy A70', 'Samsung', 9290000, 0, 'samsung-galaxy-a70-black-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>Super AMOLED, 6.7&quot;, Full HD+</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Android 9.0 (Pie)</p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>Ch&iacute;nh 32 MP &amp; Phụ 8 MP, 5 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>32 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p>Snapdragon 675 8 nh&acirc;n 64-bit</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>6 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong:\r\n	<p>128 GB</p>\r\n	</li>\r\n	<li>Thẻ nhớ:\r\n	<p>MicroSD, hỗ trợ tối đa 512 GB</p>\r\n	</li>\r\n	<li>Thẻ SIM:\r\n	<p>2 Nano SIM,&nbsp;Hỗ trợ 4G</p>\r\n	</li>\r\n	<li>Dung lượng pin:\r\n	<p>4500 mAh,&nbsp;c&oacute; sạc nhanh</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 1, 5, 1, 1558641715),
(32, 'Samsung Galaxy S10+ (128GB) ', 'Samsung', 22990000, 0, 's10.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh :6.4 inches, 1440 x 3040 pixels</li>\r\n	<li>Camera trước :Ch&iacute;nh 10 MP &amp; Phụ 8 MP</li>\r\n	<li>Camera sau :Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 16 MP</li>\r\n	<li>RAM :8 GB</li>\r\n	<li>Bộ nhớ trong :128 GB</li>\r\n	<li>CPU :Exynos 9820 8 nh&acirc;n 64-bit, 8, 2 nh&acirc;n 2.7 GHz, 2 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.9 GHz</li>\r\n	<li>GPU :Mali-G76 MP12</li>\r\n	<li>Dung lượng pin :4100 mAh</li>\r\n	<li>Hệ điều h&agrave;nh :Android 9.0 (Pie)</li>\r\n	<li>Thẻ SIM :Nano SIM, 2 Sim</li>\r\n</ul>\r\n', 100, 0, 1, 7, 1, 1558944433),
(33, 'OPPO F11 Pro 128GB', 'OPPO', 8490000, 0, '636906565297622951_oppo-f11-pro-den-1.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh :6.53 inchs, 1080 x 2340 Pixels</li>\r\n	<li>Camera trước :16.0 MP</li>\r\n	<li>Camera sau :48 MP+ 5 MP</li>\r\n	<li>RAM :6 GB</li>\r\n	<li>Bộ nhớ trong :128 GB</li>\r\n	<li>CPU :MTK P70, 8, 2.1 GHz</li>\r\n	<li>GPU :Mali-G72 MP3</li>\r\n	<li>Dung lượng pin :4000 mAh</li>\r\n	<li>Hệ điều h&agrave;nh :Android 9</li>\r\n	<li>Thẻ SIM :Nano SIM, 2 Sim</li>\r\n</ul>\r\n', 100, 0, 1, 5, 1, 1558946880),
(34, 'Vivo V15 6GB-128GB', 'ViVo', 7990000, 0, 'vivo.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh :6.53 inchs, 1080 x 2340 Pixels</li>\r\n	<li>Camera trước :32.0Mp</li>\r\n	<li>Camera sau :12Mp+8Mp+5Mp</li>\r\n	<li>RAM :6 GB</li>\r\n	<li>Bộ nhớ trong :128 GB</li>\r\n	<li>CPU :MTK P70, 8, 2.1 GHz</li>\r\n	<li>GPU :ARM&reg;Mail-G72</li>\r\n	<li>Dung lượng pin :4000 mAh</li>\r\n	<li>Hệ điều h&agrave;nh :Android 9</li>\r\n	<li>Thẻ SIM :Nano SIM, 2 Sim</li>\r\n</ul>\r\n', 100, 0, 1, 4, 1, 1558947019),
(35, 'Samsung Galaxy A10', 'Samsung', 3090000, 0, 'a10demo.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh :6.2 inches, 720 x 1520 Pixels</li>\r\n	<li>Camera trước :5.0 MP</li>\r\n	<li>Camera sau :13.0 MP</li>\r\n	<li>RAM :2 GB</li>\r\n	<li>Bộ nhớ trong :32 GB</li>\r\n	<li>CPU :Exynos 7884, 8, 1.6 GHz</li>\r\n	<li>GPU :Mali-G71 MP2</li>\r\n	<li>Dung lượng pin :3400 mAh</li>\r\n	<li>Hệ điều h&agrave;nh :Android 9.0 (Pie)</li>\r\n	<li>Thẻ SIM :Nano SIM, 2 Sim</li>\r\n</ul>\r\n', 100, 0, 1, 5, 1, 1558947619),
(36, 'Samsung Galaxy S9 Plus Red 64GB', 'Samsung', 19990000, 0, '636807396283226080_S9-RED-1.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh :6.2 inches, 2K (1440 x 2960 Pixels)</li>\r\n	<li>Camera trước :8.0 MP</li>\r\n	<li>Camera sau :2 camera 12 MP</li>\r\n	<li>RAM :6 GB</li>\r\n	<li>Bộ nhớ trong :64 GB</li>\r\n	<li>CPU :Exynos 9810 8 nh&acirc;n 64 bit, 8, 4 nh&acirc;n 2.7 GHz &amp; 4 nh&acirc;n 1.7 GHz</li>\r\n	<li>GPU :Mali-G72 MP18</li>\r\n	<li>Dung lượng pin :3500 mAh</li>\r\n	<li>Hệ điều h&agrave;nh :Android 8 (Oreo)</li>\r\n	<li>Thẻ SIM :Nano SIM, 2 (SIM 2 chung khe thẻ nhớ)</li>\r\n</ul>\r\n', 100, 0, 1, 5, 1, 1558947883),
(42, 'iPad Wifi 32GB (2018)', 'Apple', 8990000, 8490000, 'ipad-6th-wifi-32gb-1-400x4605.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<p>M&agrave;n h&igrave;nh: LED backlist, 9.7&quot;</p>\r\n\r\n<p>Hệ điều h&agrave;nh: iOS12</p>\r\n\r\n<p>CPU: Apple A10 Fusion , 2.34GHZ</p>\r\n\r\n<p>RAM: 2GB</p>\r\n\r\n<p>Bộ nhớ trong: 32GB</p>\r\n\r\n<p>Camera sau: 8MP</p>\r\n\r\n<p>Camera trước: 1.2 MP</p>\r\n\r\n<p>Kết nối mạng: WiFi, kh&ocirc;ng hỗ trợ 3G, kh&ocirc;ng hỗ trợ 4G</p>\r\n\r\n<p>Đ&agrave;m thoại: FaceTime</p>\r\n\r\n<p>Trọng lượng: 469g</p>\r\n', 100, 0, 62, 5, 1, 1559099763),
(43, 'Samsung Galaxy Tab S5E T725', 'Samsung', 12490000, 0, 'samsung-galaxy-tab-s5e-t725-2019-silver-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p>Super AMOLED, 10.5&quot;</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh\r\n	<p>Android 9.0 (Pie)</p>\r\n	</li>\r\n	<li>CPU\r\n	<p>Qualcomm Snapdragon 670, 2 nh&acirc;n 2.0 GHz &amp; 6 nh&acirc;n 1.7 GHz</p>\r\n	</li>\r\n	<li>RAM\r\n	<p>4 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong\r\n	<p>64 GB</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>13 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>8 MP</p>\r\n	</li>\r\n	<li>Kết nối mạng\r\n	<p>WiFi, 3G,&nbsp;4G LTE</p>\r\n	</li>\r\n	<li>Hỗ trợ SIM\r\n	<p>Nano Sim</p>\r\n</li>\r\n	<li>Đ&agrave;m thoại\r\n	<p>C&oacute;</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 62, 3, 1, 1559100403),
(44, 'Samsung Galaxy Tab A 10.5\"', 'Samsung', 9490000, 0, 'samsung-galaxy-tab-a-105-inch-chitietblue-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p>IPS LCD, 10.5&quot;</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh\r\n	<p>Android 8.0</p>\r\n	</li>\r\n	<li>CPU\r\n	<p>CPU 8 nh&acirc;n, 1.8 GHz</p>\r\n	</li>\r\n	<li>RAM\r\n	<p>3 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong\r\n	<p>32 GB</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>8 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>5 MP</p>\r\n	</li>\r\n	<li>Kết nối mạng\r\n	<p>WiFi, 3G,&nbsp;Hỗ trợ 4G</p>\r\n	</li>\r\n	<li>Hỗ trợ SIM\r\n	<p>Nano Sim</p>\r\n	</li>\r\n	<li>Đ&agrave;m thoại\r\n	<p>C&oacute;</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 62, 0, 1, 1559100533),
(45, 'Samsung Galaxy Tab A6 10.1\" Spen', 'Samsung', 7490000, 0, 'samsung-galaxy-tab-a6-101-spen-400x460.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p>TFT LCD, 10.1&quot;</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh\r\n	<p>Android 6.0 (Marshmallow)</p>\r\n	</li>\r\n	<li>CPU\r\n	<p>Exynos 7870 8 nh&acirc;n, 1.6 GHz</p>\r\n	</li>\r\n	<li>RAM\r\n	<p>3 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong\r\n	<p>16 GB</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>8 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>2 MP</p>\r\n	</li>\r\n	<li>Kết nối mạng\r\n	<p>WiFi, 3G,&nbsp;4G LTE</p>\r\n	</li>\r\n	<li>Hỗ trợ SIM\r\n	<p>Nano Sim</p>\r\n	</li>\r\n	<li>Đ&agrave;m thoại\r\n	<p>C&oacute;</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 62, 0, 1, 1559100669),
(46, 'Lenovo Tab 4 8\" 16GB (TB-8504X)', 'Lenovo', 3690000, 0, 'lenovo-tab-4-8-tb-8504x-chitiet-400x500.png', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p>IPS LCD, 8&quot;</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh\r\n	<p>Android 7.0</p>\r\n	</li>\r\n	<li>CPU\r\n	<p>Qualcomm MSM8917 1.4 GHz</p>\r\n	</li>\r\n	<li>RAM\r\n	<p>2 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong\r\n	<p>16 GB</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>5 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>2 MP</p>\r\n	</li>\r\n	<li>Kết nối mạng\r\n	<p>WiFi, 3G,&nbsp;4G LTE</p>\r\n	</li>\r\n	<li>Hỗ trợ SIM\r\n	<p>Nano SIM, SIM 2 chung khe thẻ nhớ</p>\r\n	</li>\r\n	<li>Đ&agrave;m thoại\r\n	<p>C&oacute;</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 62, 0, 1, 1559100801),
(47, 'Mobell Tab 8 Pro', 'Mobell', 2650000, 0, 'mobell-tab-8-pro-thumb-400x400.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p>IPS LCD, 8&quot;</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh\r\n	<p>Android 5.1</p>\r\n	</li>\r\n	<li>CPU\r\n	<p>MTK 8321 4 nh&acirc;n 1.33 GHz</p>\r\n	</li>\r\n	<li>RAM\r\n	<p>1 GB</p>\r\n	</li>\r\n	<li>Bộ nhớ trong\r\n	<p>16 GB</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>8 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>5 MP</p>\r\n	</li>\r\n	<li>Kết nối mạng\r\n	<p>WiFi, 3G, Kh&ocirc;ng hỗ trợ 4G</p>\r\n	</li>\r\n	<li>Hỗ trợ SIM\r\n	<p>Nano SIM, SIM 2 chung khe thẻ nhớ</p>\r\n	</li>\r\n	<li>Đ&agrave;m thoại\r\n	<p>C&oacute;</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 62, 0, 1, 1559101044),
(48, 'Thẻ nhớ Micro SD 8 GB Class 4', 'Samsung', 150000, 105000, 'the-nho-microsd-8gb-class-4-ava-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>Loại thẻ:\r\n	<p><em>Thẻ Micro SD (Điện thoại, m&aacute;y t&iacute;nh bảng)</em></p>\r\n	</li>\r\n	<li>Dung lượng:\r\n	<p><em>8 GB</em></p>\r\n	</li>\r\n	<li>Tốc độ đọc:\r\n	<p><em>30 MB/s</em></p>\r\n	</li>\r\n	<li>Tốc độ ghi:\r\n	<p><em>4 MB/s</em></p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 70, 0, 1, 1559101168),
(49, 'Tai nghe nhét trong Awei Q7Ni', 'Samsung', 150000, 105000, 'tai-nghe-ep-awei-q7ni-1-2-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>Jack cắm:</li>\r\n	<li><em>3.5 mm</em></li>\r\n	<li>Độ d&agrave;i d&acirc;y:</li>\r\n	<li><em>1.2 m</em></li>\r\n	<li>Ph&iacute;m điều khiển: Mic thoại,&nbsp;Nghe/nhận cuộc gọi</li>\r\n	<li>Bộ b&aacute;n h&agrave;ng:&nbsp;Tai nghe 2 cặp đệm tai nghe&nbsp;Kẹp d&acirc;y</li>\r\n	<li>Xuất xứ</li>\r\n	<li>Trung Quốc</li>\r\n</ul>\r\n', 100, 0, 70, 0, 1, 1559101271),
(50, 'Pin sạc dự phòng 10.000 mAh eValu Sword X', 'ASUS', 500000, 325000, 'pin-sac-du-phong-10000-mah-evalu-sword-x-anh-dai-dien-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>Hiệu suất sạc:\r\n	<p><em>65%</em></p>\r\n	</li>\r\n	<li>Đ&egrave;n LED b&aacute;o hiệu:\r\n	<p><em>C&oacute;</em></p>\r\n	</li>\r\n	<li>Thời gian sạc:\r\n	<p><em>10 - 11 giờ (d&ugrave;ng Adapter 1A)</em><em>5 - 6 giờ (d&ugrave;ng Adapter 2A)</em></p>\r\n	</li>\r\n	<li>Nguồn v&agrave;o:\r\n	<p><em>5V - 2A</em></p>\r\n	</li>\r\n	<li>L&otilde;i pin:\r\n	<p><em>Pin Li-Ion</em></p>\r\n	</li>\r\n	<li>Cổng ra USB 1:\r\n	<p><em>5V - 1A</em></p>\r\n	</li>\r\n	<li>Cổng ra USB 2:\r\n	<p><em>5V - 2.1A</em></p>\r\n	</li>\r\n	<li>K&iacute;ch thước\r\n	<p><em>D&agrave;i 9.8 cm - ngang 8.2 cm - d&agrave;y 2.2 cm</em></p>\r\n	</li>\r\n	<li>Trọng lượng:\r\n	<p><em>235 g</em></p>\r\n	</li>\r\n	<li>Xuất xứ\r\n	<p><em>Trung Quốc</em></p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 70, 0, 1, 1559101405),
(51, 'Chuột không dây Zadez M325', 'Zadez ', 200000, 140000, 'chuot-khong-day-zadez-m325-ava-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>Nh&agrave; sản xuất:\r\n	<p><em>Zadez</em></p>\r\n	</li>\r\n	<li>Model:\r\n	<p><em>M325</em></p>\r\n	</li>\r\n	<li>Độ ph&acirc;n giải quang học:\r\n	<p><em>1000 dpi</em><em>1200 dpi</em><em>1600 dpi</em></p>\r\n	</li>\r\n	<li>C&aacute;ch kết nối:\r\n	<p><em>Cổng USB</em></p>\r\n	</li>\r\n	<li>Độ d&agrave;i d&acirc;y / Khoảng c&aacute;ch kết nối:\r\n	<p><em>10 m</em></p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p><em>D&agrave;i 9.5 cm - ngang 6 cm - cao 2.8 cm</em></p>\r\n	</li>\r\n	<li>Trọng lượng:\r\n	<p><em>80 gr</em></p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 70, 0, 1, 1559101517),
(52, 'USB 3.0-3.1 16 GB Transcend JetFlash 790', 'Transcend ', 200000, 140000, 'usb-transcend-jetflash-790-16gb-30-1-8-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>Nh&agrave; sản xuất:\r\n	<p><em>Transcend</em></p>\r\n	</li>\r\n	<li>Model:\r\n	<p><em>JetFlash 790</em></p>\r\n	</li>\r\n	<li>Dung lượng:\r\n	<p><em>16 GB</em></p>\r\n	</li>\r\n	<li>Loại:\r\n	<p><em>USB 3.0/ USB 3.1</em></p>\r\n	</li>\r\n	<li>Tốc độ đọc:\r\n	<p><em>90 MB/s</em></p>\r\n	</li>\r\n	<li>Tốc độ ghi:\r\n	<p><em>12 MB/s</em></p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p><em>D&agrave;i 6.2 cm - ngang 1.6 cm - d&agrave;y 1 cm</em></p>\r\n	</li>\r\n	<li>Trọng lượng:\r\n	<p><em>3.2 g</em></p>\r\n	</li>\r\n	<li>Xuất xứ\r\n	<p><em>Đ&agrave;i Loan / Trung Quốc</em></p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 70, 0, 1, 1559101582),
(53, 'Acer Aspire A314 31 C2UX N3350 (NX.GNSSV.008)', 'Acer', 6290000, 6090000, 'acer-aspire-a314-31-c2ux-nxgnssv008-ava-1-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>CPU:\r\n	<p>Intel Celeron, N3350, 1.10 GHz</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>2 GB,&nbsp;DDR3L (1 khe RAM), 1600 MHz</p>\r\n	</li>\r\n	<li>Ổ cứng:\r\n	<p>HDD: 500 GB</p>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>14 inch, HD (1366 x 768)</p>\r\n	</li>\r\n	<li>Card m&agrave;n h&igrave;nh:\r\n	<p>Card đồ họa t&iacute;ch hợp,&nbsp;Intel&reg; HD Graphics</p>\r\n	</li>\r\n	<li>Cổng kết nối:\r\n	<p>2 x USB 2.0,&nbsp;HDMI,&nbsp;LAN (RJ45),&nbsp;USB 3.0</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Windows 10 Home SL</p>\r\n	</li>\r\n	<li>Thiết kế:\r\n	<p>Vỏ nhựa, PIN liền</p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>D&agrave;y 20.15 mm, 1.6 kg</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 63, 0, 1, 1559102234),
(54, 'Asus X441MA N5000/4GB/1TB/Win10 (GA024T)', 'ASUS', 7290000, 0, 'asus-x441ma-ga024t-450-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>CPU:\r\n	<p>Intel Pentium, N5000, 1.10 GHz</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB,&nbsp;DDR4 (1 khe), 2133 MHz</p>\r\n	</li>\r\n	<li>Ổ cứng:\r\n	<p>HDD: 1 TB SATA3</p>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>14 inch, HD (1366 x 768)</p>\r\n	</li>\r\n	<li>Card m&agrave;n h&igrave;nh:\r\n	<p>Card đồ họa t&iacute;ch hợp,&nbsp;Intel&reg; HD Graphics</p>\r\n	</li>\r\n	<li>Cổng kết nối:\r\n	<p>HDMI,&nbsp;LAN (RJ45),&nbsp;USB 2.0,&nbsp;USB Type-C,&nbsp;USB 3.0,&nbsp;VGA (D-Sub)</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Windows 10 Home SL</p>\r\n	</li>\r\n	<li>Thiết kế:\r\n	<p>Vỏ nhựa, PIN liền</p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>D&agrave;y 27.6 mm, 1.7 kg</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 63, 0, 1, 1559102516),
(55, 'Acer Aspire A315 31 P2LJ N4200/4GB/500GB/Win10 (NX.GNTSV.010)', 'Acer', 7590000, 7290000, 'acer-aspire-a315-31-p2lj-nxgntsv010-ava-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>CPU:\r\n	<p>Intel Pentium, N4200, 1.10 GHz</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB,&nbsp;DDR3L(On board+1Khe), 1600 MHz</p>\r\n	</li>\r\n	<li>Ổ cứng:\r\n	<p>HDD: 500 GB,&nbsp;Hỗ trợ khe cắm SSD M.2 PCIe</p>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>15.6 inch, HD (1366 x 768)</p>\r\n	</li>\r\n	<li>Card m&agrave;n h&igrave;nh:\r\n	<p>Card đồ họa t&iacute;ch hợp,&nbsp;Intel&reg; HD Graphics</p>\r\n	</li>\r\n	<li>Cổng kết nối:\r\n	<p>2 x USB 2.0,&nbsp;HDMI,&nbsp;LAN (RJ45),&nbsp;USB 3.0</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Windows 10 Home SL</p>\r\n	</li>\r\n	<li>Thiết kế:\r\n	<p>Vỏ nhựa, PIN liền</p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>D&agrave;y 24.6 mm, 2.4 kg</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 63, 5, 1, 1559102967),
(56, 'HP 15 da0048TU N5000/4GB/500GB/Win10 (4ME63PA)', 'HP', 7690000, 0, 'hp-15-da0048tu-4me63pa-33397-ava1-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>CPU:\r\n	<p>Intel Pentium, N5000, 1.10 GHz</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB,&nbsp;DDR4 (1 khe), 2400 MHz</p>\r\n	</li>\r\n	<li>Ổ cứng:\r\n	<p>HDD: 500 GB SATA3</p>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>15.6 inch, HD (1366 x 768)</p>\r\n	</li>\r\n	<li>Card m&agrave;n h&igrave;nh:\r\n	<p>Card đồ họa t&iacute;ch hợp,&nbsp;Intel&reg; HD Graphics</p>\r\n	</li>\r\n	<li>Cổng kết nối:\r\n	<p>2 x USB 3.1,&nbsp;HDMI,&nbsp;LAN (RJ45),&nbsp;USB 2.0</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Windows 10 Home SL</p>\r\n	</li>\r\n	<li>Thiết kế:\r\n	<p>Vỏ nhựa, PIN liền</p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>D&agrave;y 22.5 mm, 1.77 kg</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 63, 0, 1, 1559103382),
(57, 'Lenovo Ideapad 330 15IKBR i3 7020U/4GB/1TB/Win10/(81DE00LDVN)', 'Lenovo', 9690000, 9290000, 'lenovo-ideapad-330-15ikbr-i3-7020u-4gb-1tb-156-win-hinhchitiet-600x600.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>CPU:\r\n	<p>Intel Core i3 Kabylake, 7020U, 2.30 GHz</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB,&nbsp;DDR4 (1 khe), 2133 MHz</p>\r\n	</li>\r\n	<li>Ổ cứng:\r\n	<p>HDD: 1 TB</p>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>15.6 inch, HD (1366 x 768)</p>\r\n	</li>\r\n	<li>Card m&agrave;n h&igrave;nh:\r\n	<p>Card đồ họa t&iacute;ch hợp,&nbsp;Intel&reg; HD Graphics 620</p>\r\n	</li>\r\n	<li>Cổng kết nối:\r\n	<p>HDMI 1.4,&nbsp;2 x USB 3.0,&nbsp;LAN (RJ45),&nbsp;USB Type-C</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Windows 10 Home SL</p>\r\n	</li>\r\n	<li>Thiết kế:\r\n	<p>Vỏ nhựa, PIN liền</p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>D&agrave;y 22.9mm, 2kg</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 63, 8, 1, 1559103751),
(58, 'Lenovo Ideapad 330 15IKBR i3 7020U/4GB/1TB/Win10/(81DE00LDVN)', 'Lenovo', 9690000, 9290000, 'lenovo-ideapad-330-15ikbr-i3-7020u-4gb-1tb-156-win-hinhchitiet-600x6001.jpg', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>CPU:\r\n	<p>Intel Core i3 Kabylake, 7020U, 2.30 GHz</p>\r\n	</li>\r\n	<li>RAM:\r\n	<p>4 GB,&nbsp;DDR4 (1 khe), 2133 MHz</p>\r\n	</li>\r\n	<li>Ổ cứng:\r\n	<p>HDD: 1 TB</p>\r\n	</li>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>15.6 inch, HD (1366 x 768)</p>\r\n	</li>\r\n	<li>Card m&agrave;n h&igrave;nh:\r\n	<p>Card đồ họa t&iacute;ch hợp,&nbsp;Intel&reg; HD Graphics 620</p>\r\n	</li>\r\n	<li>Cổng kết nối:\r\n	<p>HDMI 1.4,&nbsp;2 x USB 3.0,&nbsp;LAN (RJ45),&nbsp;USB Type-C</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>Windows 10 Home SL</p>\r\n	</li>\r\n	<li>Thiết kế:\r\n	<p>Vỏ nhựa, PIN liền</p>\r\n	</li>\r\n	<li>K&iacute;ch thước:\r\n	<p>D&agrave;y 22.9mm, 2kg</p>\r\n	</li>\r\n</ul>\r\n', 100, 0, 63, 8, 1, 1559103847);

--
-- Triggers `product`
--
DELIMITER $$
CREATE TRIGGER `auto add time` BEFORE INSERT ON `product` FOR EACH ROW BEGIN
SET NEW.time_created = UNIX_TIMESTAMP();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `time_start` double NOT NULL,
  `time_end` double NOT NULL,
  `time_created` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id`, `name`, `detail`, `status`, `time_start`, `time_end`, `time_created`) VALUES
(2, 'Phiếu mua hàng trị giá 1 triệu (Áp dụng từ 16/05)', 'Phiếu mua hàng trị giá 1 triệu (Áp dụng từ 16/05)', 0, 1557957600, 1561413600, 1558575430),
(3, 'Giảm 1 triệu cho Apple Watch khi mua kèm iPhone/iPad', 'Giảm 1 triệu cho Apple Watch khi mua kèm iPhone/iPad', 1, 1558562400, 1563919200, 1558575465),
(4, 'Mua thêm thẻ nhớ 16GB giảm 30% - Pin dự phòng 7.500mAh Y323S nâu giảm 40%', 'Mua thêm thẻ nhớ 16GB giảm 30% - Pin dự phòng 7.500mAh Y323S nâu giảm 40%', 1, 1558648800, 1561068000, 1558575513),
(5, 'Phiếu mua hàng trị giá 500.000đ', 'Phiếu mua hàng trị giá 500.000đ', 1, 1558476000, 1561672800, 1558575625),
(6, 'ĐỘC QUYỀN: thu cũ đổi mới trợ giá 1.000.000đ', 'ĐỘC QUYỀN: thu cũ đổi mới trợ giá 1.000.000đ', 1, 1558648800, 1561068000, 1558575686),
(7, 'Tặng Phiếu mua hàng 100.000đ và 1 K.mãi khác', 'Tặng Phiếu mua hàng 100.000đ và 1 K.mãi khác', 1, 1558648800, 1561672800, 1558596479),
(8, 'Tặng Balo lenovo (khuyến mãi) và 3 K.mãi khác', 'Tặng Balo lenovo (khuyến mãi) và 3 K.mãi khác', 1, 1558562400, 1561759200, 1558602739);

--
-- Triggers `promotion`
--
DELIMITER $$
CREATE TRIGGER `auto insert time` BEFORE INSERT ON `promotion` FOR EACH ROW BEGIN
SET NEW.time_created = UNIX_TIMESTAMP();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_news`
--

CREATE TABLE `promotion_news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `time_created` double NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promotion_news`
--

INSERT INTO `promotion_news` (`id`, `title`, `summary`, `image`, `content`, `time_created`, `status`) VALUES
(1, 'Hướng dẫn Unlock Bootloader Xiaomi Redmi Note 7, Redmi Note 7 Pro', '<p>L&agrave;m c&aacute;ch n&agrave;o để Unlock Bootloader Xiaomi Redmi Note 7, Redmi Note 7 Pro&nbsp; ? Đ&acirc;y l&agrave; vẫn đề m&agrave; nhiều bạn muốn biết. Trong b&agrave;i viết ng&agrave;y h&ocirc;m nay m&igrave;nh sẽ hướng dẫn c&aacute;c bạn c&aacute;ch Unlock bootloader Xiaomi Redmi Note 7, Redmi Note 7 Pro đơn giản, nhanh ch&oacute;ng v&agrave; an to&agrave;n nhất. Unlock Bootloader Xiaomi ...</p>\r\n', 'huong-dan-unlock-bootloader-xiaomi-redmi-note-7-redmi-note-7-pro.jpg', '<p>L&agrave;m c&aacute;ch n&agrave;o để&nbsp;<strong>Unlock Bootloader Xiaomi Redmi Note 7, Redmi Note 7 Pro&nbsp;</strong>? Đ&acirc;y l&agrave; vẫn đề m&agrave; nhiều bạn muốn biết. Trong b&agrave;i viết ng&agrave;y h&ocirc;m nay m&igrave;nh sẽ hướng dẫn c&aacute;c bạn c&aacute;ch Unlock bootloader Xiaomi Redmi Note 7, Redmi Note 7 Pro đơn giản, nhanh ch&oacute;ng v&agrave; an to&agrave;n nhất.</p>\r\n\r\n<h2>Unlock Bootloader Xiaomi Redmi Note 7, Redmi Note 7 Pro chi tiết, an to&agrave;n</h2>\r\n\r\n<p><strong>Unlock Bootloader</strong>&nbsp;<strong>Xiaomi Redmi Note 7, Redmi Note 7 Pro</strong>&nbsp;để l&agrave;m g&igrave;? Đ&acirc;y được coi như một&nbsp;chiếc ch&igrave;a kh&oacute;a để bạn can thiếp v&agrave;o hệ thống gi&uacute;p&nbsp;bạn c&oacute; thể ROOT,&nbsp;c&agrave;i Recovery, c&agrave;i ROM t&ugrave;y chỉnh, cứu brick v&agrave; l&agrave;m nhiều việc kh&aacute;c dễ d&agrave;ng hơn. Tuy nhi&ecirc;n việc Unlock Bootloader cũng khiến m&aacute;y kh&ocirc;ng c&ograve;n được bảo h&agrave;nh nữa v&agrave; nếu kh&ocirc;ng cần thận sẽ biến m&aacute;y th&agrave;nh cục gạch. Ngay sau đ&acirc;y m&igrave;nh sẽ hướng dẫn c&aacute;c bạn c&aacute;ch Unlock Bootloader Xiaomi Redmi Note 7, Redmi Note 7 Pro chi tiết v&agrave; an to&agrave;n nhất.&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/03/huong-dan-unlock-bootloader-xiaomi-redmi-note-7-redmi-note-7-pro.jpg\" /></p>\r\n\r\n<h3>Unlock Bootloader Xiaomi Redmi Note 7, Redmi Note 7 Pro cần lưu &yacute; những g&igrave;?</h3>\r\n\r\n<p>Trước khi thực hiện Unlock Bootloader Xiaomi Redmi Note 7, Redmi Note 7 Pro&nbsp;c&aacute;c bạn cần lưu &yacute;:</p>\r\n\r\n<ul>\r\n	<li>Chắc chắn rằng&nbsp;thiết bị của bạn phải tr&ecirc;n 50%&nbsp;pin</li>\r\n	<li>Sao lưu to&agrave;n bộ dữ liệu trước khi thực unlock Bootloader Xiaomi Redmi Note 7, Redmi Note 7 Pro v&igrave; sẽ bị mất hết dữ liệu khi thực hiện</li>\r\n	<li>Chuẩn bị 1 m&aacute;y t&iacute;nh v&agrave; d&acirc;y c&aacute;p để kết nối với điện thoại (N&ecirc;n d&ugrave;ng labtop để tr&aacute;nh trường hợp mất điện)</li>\r\n	<li>Download Mi Flash để c&agrave;i Driver.</li>\r\n	<li>Download&nbsp;Mi Flash Unlock để Unlock Bootloader.</li>\r\n	<li>Tạo tại khoản Mi.</li>\r\n	<li>Đăng k&iacute; quyền Unlock Bootloader Xiaomi tại: en.miui.com/unlock/ v&agrave; chọn unlock Now v&agrave; l&agrave;m theo hướng dẫn (Qu&aacute; tr&igrave;nh duyệt unlock mất khoảng 15-30 ng&agrave;y)</li>\r\n</ul>\r\n\r\n<h3>C&aacute;c bước Unlock Bootloader Xiaomi Redmi Note 7, Redmi Note 7 Pro</h3>\r\n\r\n<p>Bước 1: Đăng nhập t&agrave;i khoản Mi đ&atilde; tạo ở tr&ecirc;n v&agrave;o điện thoại.Nếu bạn đ&atilde; được Xiaomi cấp quyền Unlock Bootloader Xiaomi Redmi Note 7, Redmi Note 7 Pro h&atilde;y l&agrave;m thoe c&aacute;c bước dưới đ&acirc;y:</p>\r\n\r\n<p>Bước 2: Li&ecirc;n kết t&agrave;i khoản Mi với thiết bị : Mở C&agrave;i đặt-&gt;&nbsp;Phần bổ sung -&gt;&nbsp;Nh&agrave; ph&aacute;t triển, t&igrave;m đến chỗ Mi Unlock status nhấn v&agrave;o n&uacute;t &quot;Add account and device&quot;.</p>\r\n\r\n<p>Bước 3: V&agrave;o chế độ Fastboot bằng c&aacute;ch tắt nguồn điện thoại sau đ&oacute; nhấn giữ đồng thời ph&iacute;m nguồn + giảm &acirc;m lượng</p>\r\n\r\n<p>Bước 4: Mở Mi Flash Unlock v&agrave; đăng nhập t&agrave;i khoản của bạ v&agrave;o v&agrave; cắm c&aacute;p kết nối điện thoại với m&aacute;y t&iacute;nh. Ấn Unlock, qu&aacute; tr&igrave;nh n&agrave;y sẽ mất khoảng 30 gi&acirc;y để ho&agrave;n th&agrave;nh.</p>\r\n\r\n<p>Như vậy l&agrave; việc Unlock Bootloader Xiaomi Redmi Note 7, Redmi Note 7 Pro đ&atilde; ho&agrave;n th&agrave;nh. Nếu bạn c&ograve;n thắc mắc g&igrave; h&atilde;y để lại b&igrave;nh luận b&ecirc;n dưới b&agrave;i viết nh&eacute;.</p>\r\n\r\n<p><em>Ch&uacute;c bạn th&agrave;nh c&ocirc;ng!</em></p>\r\n', 1558862735, 1),
(2, 'Mọi vấn đề liên quan đến màn hình cảm ứng sẽ được Apple giải quyết tới năm 2020', '<p>Người d&ugrave;ng Apple đ&atilde; ph&agrave;n n&agrave;n nhiều về m&agrave;n cảm ứng tr&ecirc;n iPhone X. Mới đ&acirc;y,&nbsp;Apple đ&atilde; ch&iacute;nh thức thừa nhận rằng một số mẫu iPhone X gặp vấn đề về cảm ứng do lỗi m&ocirc;-đun. C&aacute;c thiết bị gặp vấn đề c&oacute; biểu hiện như sau: - M&agrave;n h&igrave;nh hoặc 1 phần m&agrave;n h&igrave;nh kh&ocirc;ng phản hồi hoặc l&uacute;c nhận l&uacute;c kh&ocirc;ng khi ...</p>\r\n', 'moi-van-de-lien-quan-den-man-hinh-cam-ung-se-duoc-apple-giai-quyet-toi-nam-2020-medium.jpg', '<p>Người d&ugrave;ng Apple đ&atilde; ph&agrave;n n&agrave;n nhiều về m&agrave;n cảm ứng tr&ecirc;n iPhone X. Mới đ&acirc;y,&nbsp;Apple đ&atilde; ch&iacute;nh thức thừa nhận rằng một số mẫu iPhone X gặp vấn đề về cảm ứng do lỗi m&ocirc;-đun.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/moi-van-de-lien-quan-den-man-hinh-cam-ung-se-duoc-apple-giai-quyet-toi-nam-2020.jpg\" /></p>\r\n\r\n<p>C&aacute;c thiết bị gặp vấn đề c&oacute; biểu hiện như sau:</p>\r\n\r\n<p>- M&agrave;n h&igrave;nh hoặc 1 phần m&agrave;n h&igrave;nh kh&ocirc;ng phản hồi hoặc l&uacute;c nhận l&uacute;c kh&ocirc;ng khi chạm v&agrave;o</p>\r\n\r\n<p>- M&agrave;n h&igrave;nh cảm ứng tự phản hồi d&ugrave; người d&ugrave;ng kh&ocirc;ng chạm v&agrave;o</p>\r\n\r\n<p>Để khắc phục vấn đề, Apple cung cấp chương tr&igrave;nh thay thế, sửa miễn ph&iacute; cho c&aacute;c thiết bị gặp vấn đề trong v&ograve;ng 3 năm kể từ khi mẫu iPhone X đầu ti&ecirc;n được b&aacute;n ra. Điều n&agrave;y đồng nghĩa với việc chương tr&igrave;nh n&agrave;y sẽ diễn ra tới khoảng th&aacute;ng 10/2020.</p>\r\n\r\n<p><img src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/moi-van-de-lien-quan-den-man-hinh-cam-ung-se-duoc-apple-giai-quyet-toi-nam-2020-1.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh Apple Store, c&aacute;c Đại l&yacute; Dịch vụ Ủy quyền của Apple tại c&aacute;c thị trường cũng sẽ triển khai chương tr&igrave;nh&nbsp;thay thế, sửa miễn ph&iacute; cho c&aacute;c mẫu iPhone X gặp vấn đề. Apple cũng lưu &yacute; rằng trước khi tiến h&agrave;nh thay thế, sửa miễn ph&iacute; họ sẽ kiểm tra chiếc iPhone X của bạn xem n&oacute; c&oacute; đủ điều kiện tham gia chương tr&igrave;nh hay kh&ocirc;ng?</p>\r\n\r\n<p>Tuy nhi&ecirc;n, bạn sẽ kh&ocirc;ng được tham gia chương tr&igrave;nh nếu iPhone X của bạn đ&atilde; thay m&agrave;n h&igrave;nh của b&ecirc;n thứ ba. Hơn nữa, trong trường hợp iPhone X của bạn bị rạn, vỡ m&agrave;n h&igrave;nh, Apple c&oacute; thể t&iacute;nh th&ecirc;m một khoản ph&iacute;, t&ugrave;y thuộc v&agrave;o mức độ hư hỏng.</p>\r\n\r\n<p>Nếu trước đ&oacute; chiếc iPhone X của bạn đ&atilde; gặp vấn đề n&agrave;y v&agrave; bạn đ&atilde; t&igrave;m tới Apple hoặc&nbsp;c&aacute;c Đại l&yacute; Dịch vụ Ủy quyền của Apple để sửa chữa, bạn c&oacute; thể li&ecirc;n hệ với Apple để y&ecirc;u cầu bồi ho&agrave;n chi ph&iacute; sửa chữa.&nbsp;</p>\r\n', 1558862802, 1),
(3, 'Tin đồn về 2 mẫu flagship giá rẻ của Redmi thực hư là như nào?', '<p>C&oacute; tới 2 mẫu flagship gi&aacute; rẻ chuẩn bị được Redmi tr&igrave;nh l&agrave;ng, mẫu thứ 2 c&oacute; thể l&agrave; Pocophone F2?? T&ecirc;n gọi của c&aacute;c mẫu flagship Redmi vẫn chưa được c&ocirc;ng bố. Cả hai flagship Redmi đều c&oacute; bốn biến thể kh&aacute;c nhau th&ocirc;ng số lần lượt l&agrave; 6GB + 64GB, 6GB + 128GB, 8GB + 128GB v&agrave; 8GB + 256GB. Một trong ...</p>\r\n', 'tin-don-ve-2-mau-flagship-gia-re-cua-redmi-thuc-hu-la-nhu-nao.jpg', '<p>C&oacute; tới 2 mẫu flagship gi&aacute; rẻ chuẩn bị được Redmi tr&igrave;nh l&agrave;ng, mẫu thứ 2 c&oacute; thể l&agrave; Pocophone F2??</p>\r\n\r\n<p><img alt=\"\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/tin-don-ve-2-mau-flagship-gia-re-cua-redmi-thuc-hu-la-nhu-nao.JPG\" /></p>\r\n\r\n<p>T&ecirc;n gọi của c&aacute;c mẫu flagship Redmi vẫn chưa được c&ocirc;ng bố. Cả hai flagship Redmi đều c&oacute; bốn biến thể kh&aacute;c nhau th&ocirc;ng số lần lượt l&agrave; 6GB + 64GB, 6GB + 128GB, 8GB + 128GB v&agrave; 8GB + 256GB. Một trong số ch&uacute;ng đ&atilde; xuất hiện trong cơ sở dữ liệu của cơ quan IMDA Singapore với t&ecirc;n m&atilde; M1903F10G. B&ecirc;n cạnh đ&oacute;, theo leaker danh tiếng Ishan Agarwal, t&ecirc;n m&atilde; của 2 mẫu flagship Redmi l&agrave; M1903F10 v&agrave; M1903F11. Agarwal n&oacute;i th&ecirc;m rằng t&ecirc;n m&atilde; Pocophone F1 kết th&uacute;c bằng cụm &quot;E10&quot; n&ecirc;n c&oacute; thể M1903F10 sẽ được ra mắt b&ecirc;n ngo&agrave;i thị trường Trung Quốc với t&ecirc;n gọi Pocophone F2. Theo dữ liệu của IMDA, M1903F10G d&ugrave;ng chip Snapdragon 855.</p>\r\n\r\n<p><img src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/tin-don-ve-2-mau-flagship-gia-re-cua-redmi-thuc-hu-la-nhu-nao-1.JPG\" style=\"width:600px\" /></p>\r\n\r\n<p>Dự kiến, cả 2 mẫu flagship Redmi sẽ d&ugrave;ng Snapdragon 855, c&oacute; thiết kế m&agrave;n h&igrave;nh kh&ocirc;ng khiếm khuyết với camera trước dạng trượt. M&agrave;n h&igrave;nh của m&aacute;y d&ugrave;ng c&ocirc;ng nghệ AMOLED v&agrave; c&oacute; k&iacute;ch thước 6.39 inch, độ ph&acirc;n giải full HD+. M&aacute;y cũng được trang bị cảm biến v&acirc;n tay trong m&agrave;n h&igrave;nh.</p>\r\n', 1558862877, 1),
(4, 'So sánh ảnh chụp trên Pixel 3a XL giá chỉ 400 USD với iPhone X giá 1.000 USD, Apple khiến tôi thất vọng', '<p>Phải thừa nhận rằng những chiếc smartphone Pixel của Google kh&oacute; c&oacute; thể cạnh tranh với iPhone, từ thiết kế cho đến c&aacute;c t&iacute;nh năng v&agrave; trải nghiệm người d&ugrave;ng. Mặc d&ugrave; iPhone của Apple c&oacute; khả năng chụp ảnh tuyệt vời, nhưng Google Pixel lại tỏ ra vượt trội hơn với những thuật to&aacute;n của m&igrave;nh. Đặc ...</p>\r\n', 'so-sanh-anh-chup-tren-pixel-3a-xl-gia-chi-400-usd-voi-iphone-x-gia-1-000-usd-apple-khien-toi-that-vong-medium.jpg', '<p>Phải thừa nhận rằng những chiếc smartphone Pixel của Google kh&oacute; c&oacute; thể cạnh tranh với iPhone, từ thiết kế cho đến c&aacute;c t&iacute;nh năng v&agrave; trải nghiệm người d&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mặc d&ugrave; iPhone của Apple c&oacute; khả năng chụp ảnh tuyệt vời, nhưng Google Pixel lại tỏ ra vượt trội hơn với những thuật to&aacute;n của m&igrave;nh. Đặc biệt l&agrave; trong điều kiện chụp ảnh thiếu s&aacute;ng, kh&oacute; c&oacute; chiếc smartphone n&agrave;o l&agrave; đối thủ của Google Pixel.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/so-sanh-anh-chup-tren-pixel-3a-xl-gia-chi-400-usd-voi-iphone-x-gia-1-000-usd-apple-khien-toi-that-vong.jpg\" /></p>\r\n\r\n<p>&ldquo;<em>Những chiếc smartphone cao cấp cố gắng cải thiện chất lượng camera bằng phần cứng đắt tiền, nhưng ch&uacute;ng t&ocirc;i c&oacute; thể mang đến những g&igrave; c&ograve;n tốt hơn thế chỉ với phần mềm v&agrave; AI</em>&rdquo;, Ph&oacute; Chủ tịch Sabrina Ellis ph&aacute;t biểu tr&ecirc;n s&acirc;n khấu: &ldquo;<em>Pixel 3a cũng c&oacute; thể chụp những bức ảnh tuyệt vời trong điều kiện thiếu s&aacute;ng với Night Vision. Đ&acirc;y l&agrave; một trong những t&iacute;nh năng vượt trội của d&ograve;ng Pixel</em>&rdquo;.</p>\r\n\r\n<p><img src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/so-sanh-anh-chup-tren-pixel-3a-xl-gia-chi-400-usd-voi-iphone-x-gia-1-000-usd-apple-khien-toi-that-vong-1.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p>Ngay sau đ&oacute;, Google ph&aacute;t l&ecirc;n m&agrave;n h&igrave;nh lớn hai bức ảnh để so s&aacute;nh. B&ecirc;n tr&aacute;i l&agrave; ảnh chụp từ một chiếc &ldquo;Phone X&rdquo;, c&ograve;n b&ecirc;n phải l&agrave; ảnh chụp bằng Pixel 3a. Kh&ocirc;ng cần Google phải n&oacute;i ra, nhưng ch&uacute;ng ta đều biết được rằng Phone X l&agrave; nhằm &aacute;m chỉ iPhone X của Apple.</p>\r\n\r\n<p>Ch&uacute;ng ta cũng c&oacute; thể dễ d&agrave;ng nhận thấy sự kh&aacute;c biệt. B&ecirc;n cạnh đ&oacute;, đ&atilde; c&oacute; rất nhiều b&agrave;i đ&aacute;nh gi&aacute; Pixel 3a v&agrave; Pixel 3a XL của c&aacute;c trang c&ocirc;ng nghệ lớn tr&ecirc;n thế giới. Business Insider cũng đ&atilde; thực hiện một b&agrave;i kiểm tra chất lượng chụp ảnh của Pixel 3a XL v&agrave; so s&aacute;nh với iPhone Xs Max, dưới đ&acirc;y l&agrave; kết quả.</p>\r\n\r\n<p><img src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/so-sanh-anh-chup-tren-pixel-3a-xl-gia-chi-400-usd-voi-iphone-x-gia-1-000-usd-apple-khien-toi-that-vong-2.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p>C&oacute; thể thấy rằng Pixel 3a v&agrave; Pixel 3a XL d&ugrave; chỉ l&agrave; những chiếc smartphone tầm trung với gi&aacute; b&aacute;n phải chăng, nhưng vẫn sở hữu khả năng chụp ảnh thiếu s&aacute;ng ấn tượng giống như Pixel 3 v&agrave; Pixel 3 XL.</p>\r\n\r\n<p><em>Theo: genk</em></p>\r\n', 1558863019, 1),
(5, 'Xiaomi lại đứng top trong bảng xếp hạng 10 smartphone có điểm benchmark cao nhất tháng 4/2019', '<p>Th&aacute;ng 4 l&agrave; lời nối dối của của em, nhưng Xiaomi th&igrave; kh&ocirc;ng? Top 3 smartphone đứng đầu đều thuộc về Xiaomi khi được trang bị con chip hiện đại Snapdragon 855. Như thường lệ, AnTuTu mới đ&acirc;y vừa c&ocirc;ng bố danh s&aacute;ch 10 mẫu smartphone Android c&oacute; điểm số hiệu năng cao nhất tại Trung Quốc trong th&aacute;ng 4. ...</p>\r\n', 'xiaomi-lai-dung-top-trong-bang-xep-hang-10-smartphone-co-diem-benchmark-cao-nhat-thang-4-2019-medium.jpg', '<p>Th&aacute;ng 4 l&agrave; lời nối dối của của em, nhưng Xiaomi th&igrave; kh&ocirc;ng? Top 3 smartphone đứng đầu đều thuộc về Xiaomi khi được trang bị con chip hiện đại Snapdragon 855.</p>\r\n\r\n<p>Như thường lệ, AnTuTu mới đ&acirc;y vừa c&ocirc;ng bố danh s&aacute;ch 10 mẫu smartphone Android c&oacute; điểm số hiệu năng cao nhất tại Trung Quốc trong th&aacute;ng 4. Thời gian thu thập dữ liệu bắt đầu từ ng&agrave;y 1/4 v&agrave; kết th&uacute;c v&agrave;o ng&agrave;y 30/4/2019, trong đ&oacute; với mỗi thiết bị AnTuTu đều thực hiện 1000 lần kiểm tra để đưa ra kết quả cuối c&ugrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/xiaomi-lai-dung-top-trong-bang-xep-hang-10-smartphone-co-diem-benchmark-cao-nhat-thang-4-2019.jpg\" /></p>\r\n\r\n<p>Trong danh s&aacute;ch c&aacute;c mẫu smartphone Android c&oacute; hiệu năng cao nhất th&aacute;ng 4 của AnTuTu, vị tr&iacute; đầu ti&ecirc;n thuộc về&nbsp;Xiaomi Mi 9 Transparent Edition với điểm số trung b&igrave;nh l&agrave; 373.715 điểm. Phi&ecirc;n bản ti&ecirc;u chuẩn của Mi 9 xếp ở vị tr&iacute; thứ hai với điểm số thấp hơn l&agrave; 373.511 điểm. Smartphone chơi game Black Shark 2 của Xiaomi đạt được 371.837 điểm AnTuTu v&agrave; đứng ở vị tr&iacute; thứ ba.</p>\r\n\r\n<p><img src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/xiaomi-lai-dung-top-trong-bang-xep-hang-10-smartphone-co-diem-benchmark-cao-nhat-thang-4-2019-1.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p>Bộ đ&ocirc;i&nbsp;<a href=\"https://mobilecity.vn/samsung/samsung-glaxy-s10-plus-cu.html\">Samsung Galaxy S10 Plus cũ</a>&nbsp;v&agrave; Galaxy S10 chiếm vị tr&iacute; thứ s&aacute;u v&agrave; thứ bảy với điểm số AnTuTu tương ứng l&agrave; 395.936 v&agrave; 358.726 điểm. Phi&ecirc;n bản ti&ecirc;u chuẩn của Vivo iQOO nằm ở trị thứ thứ t&aacute;m với 354.138 điểm. Smartphone chơi game Red Magic Mars với Snapdragon 845 đạt được 310.612 điểm v&agrave; đứng ở vị tr&iacute; thứ ch&iacute;n. Honor V20 d&ugrave;ng chip Kirin 980 chiếm giữ vị tr&iacute; cuối c&ugrave;ng với 306.289 điểm.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/samsung-galaxy-s10-plus-cu-a-5.jpg\" /></p>\r\n\r\n<p>C&aacute;c mẫu flagship như Huawei P30, Huawei P30 Pro, OPPO Reno 10x Zoom, Lenovo Z6 Pro v&agrave; Nubia Red Magic 3 đ&atilde; được ra mắt trong th&aacute;ng trước nhưng kh&ocirc;ng lọt v&agrave;o danh s&aacute;ch top 10 mẫu smartphone Android c&oacute; hiệu năng tốt nhất của th&aacute;ng 4. Hy vọng rằng những chiếc điện thoại n&agrave;y sẽ c&oacute; thứ hạng cao hơn trong bảng xếp hạng th&aacute;ng 5 sẽ được c&ocirc;ng bố v&agrave;o th&aacute;ng tới.</p>\r\n\r\n<p><em>Theo: genk</em></p>\r\n', 1558863087, 1),
(6, 'Redmi sắp ra mắt thành viên dùng chip khủng Snapdragon 855 ngày 13/5 tới đây', '<p>Ng&agrave;y 13/5 tới đ&acirc;y, Redmi sẽ tung ra flagship gi&aacute; rẻ mới của h&atilde;ng, d&ugrave;ng hẳn chip khủng Snapdragon 855. Sau khi t&aacute;ch ra khỏi c&ocirc;ng ty mẹ Xiaomi để hoạt động đồng lập, Redmi đ&atilde; ra mắt 5 mẫu smartphone gồm Xiaomi Redmi Note 7 , Redmi Go, Redmi Note 7 Pro, Redmi 7 v&agrave; Redmi Y3. Redmi cũng x&aacute;c nhận ...</p>\r\n', 'redmi-sap-ra-mat-thanh-vien-dung-chip-khung-snapdragon-855-ngay-13-5-toi-day-medium.jpg', '<p>Ng&agrave;y 13/5 tới đ&acirc;y, Redmi sẽ tung ra flagship gi&aacute; rẻ mới của h&atilde;ng, d&ugrave;ng hẳn chip khủng Snapdragon 855.</p>\r\n\r\n<p>Sau khi t&aacute;ch ra khỏi c&ocirc;ng ty mẹ Xiaomi để hoạt động đồng lập, Redmi đ&atilde; ra mắt 5 mẫu smartphone gồm&nbsp;Xiaomi Redmi Note 7, Redmi Go, Redmi Note 7 Pro, Redmi 7 v&agrave; Redmi Y3. Redmi cũng x&aacute;c nhận đang ph&aacute;t triển một mẫu flagship gi&aacute; rẻ d&ugrave;ng chip Snapdragon 855.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/redmi-sap-ra-mat-thanh-vien-dung-chip-khung-snapdragon-855-ngay-13-5-toi-day.jpg\" /></p>\r\n\r\n<p>Sau nhiều tuần đồn đo&aacute;n, r&ograve; rỉ, cuối c&ugrave;ng Redmi cũng h&eacute; lộ ng&agrave;y ra mắt của flagship d&ugrave;ng chip Snapdragon 855. Mới đ&acirc;y, qua t&agrave;i khoản tr&ecirc;n Weibo, &ocirc;ng Tang Mu - Tổng gi&aacute;m đốc Mảng Phần cứng Th&ocirc;ng minh của Xiaomi - tiết lộ rằng flagship Redmi sẽ được ra mắt v&agrave;o ng&agrave;y 13/5 tới.</p>\r\n\r\n<p><img src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/redmi-sap-ra-mat-thanh-vien-dung-chip-khung-snapdragon-855-ngay-13-5-toi-day-1.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p>Mới đ&acirc;y, ảnh chụp miếng d&aacute;n bảo vệ m&agrave;n h&igrave;nh của flagship Redmi đ&atilde; bị r&ograve; rỉ. Bức ảnh cho thấy smartphone n&agrave;y sẽ được đặt t&ecirc;n l&agrave; Redmi K20 Pro. B&ecirc;n cạnh đ&oacute;, n&oacute; cũng tiết lộ một v&agrave;i th&ocirc;ng số quan trọng của mẫu flagship n&agrave;y như chip Snapdragon 855, 3 camera sau với camera ch&iacute;nh 48MP.</p>\r\n\r\n<p>C&aacute;c th&ocirc;ng số kh&aacute;c của Redmi K20 Pro được h&eacute; lộ qua miếng d&aacute;n m&agrave;n h&igrave;nh bao gồm pin 4.000mAh hỗ trợ sạc nhanh 27W, t&iacute;ch hợp cảm biến v&acirc;n tay trong m&agrave;n h&igrave;nh. M&aacute;y c&oacute; m&agrave;n h&igrave;nh AMOLED 6.39 inch với độ ph&acirc;n giải full HD+.</p>\r\n', 1558863165, 1),
(7, 'Asus Zenfone 6 với chip khủng Snapdragon 855, với giá hợp lý 15 triệu đồng', '<p>Asus đ&atilde; h&eacute; lộ rằng họ sẽ ra mắt flagship Zenfone 6 với thiết kế to&agrave;n m&agrave;n h&igrave;nh. Theo đồn đo&aacute;n, Zenfone 6 c&oacute; 3 camera sau, d&ugrave;ng chip Snapdragon 855 với gi&aacute; 15 triệu đồng t&iacute;nh theo tiền Việt. Tuy nhi&ecirc;n, vẫn chưa r&otilde; h&atilde;ng c&ocirc;ng nghệ Đ&agrave;i Loan sử dụng giải ph&aacute;p n&agrave;o cho camera trước để đạt được ...</p>\r\n', 'asus-zenfone-6-voi-chip-khung-snapdragon-855-1.jpg', '<p>Asus đ&atilde; h&eacute; lộ rằng họ sẽ ra mắt flagship Zenfone 6 với thiết kế to&agrave;n m&agrave;n h&igrave;nh. Theo đồn đo&aacute;n, Zenfone 6 c&oacute; 3 camera sau, d&ugrave;ng chip Snapdragon 855 với gi&aacute; 15 triệu đồng t&iacute;nh theo tiền Việt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/asus-zenfone-6-voi-chip-khung-snapdragon-855-1.jpg\" /></p>\r\n\r\n<p>Tuy nhi&ecirc;n, vẫn chưa r&otilde; h&atilde;ng c&ocirc;ng nghệ Đ&agrave;i Loan sử dụng giải ph&aacute;p n&agrave;o cho camera trước để đạt được thiết kế to&agrave;n m&agrave;n h&igrave;nh. Hiện tại, r&ograve; rỉ mới nhất đ&atilde; cho ch&uacute;ng ta biết mức gi&aacute; của Zenfone 6 tại thị trường qu&ecirc; nh&agrave; Đ&agrave;i Loan. Theo đ&oacute;, Zenfone 6 c&oacute; 3 phi&ecirc;n bản l&agrave; 6GB + 128GB, 8GB + 256GB v&agrave; 12GB + 512GB với c&aacute;c mức gi&aacute; tương ứng l&agrave; 19.990 NTD (15 triệu), 23.990 NTD (18 triệu) v&agrave; 29.990 NTD (22,5 triệu).</p>\r\n\r\n<p>Ph&iacute;a sau Zenfone 6 dự kiến c&oacute; ba camera với cảm biến ch&iacute;nh 48MP c&ugrave;ng 2 cảm biến phụ chưa r&otilde; th&ocirc;ng số. Thiết kế v&agrave; độ ph&acirc;n giải của camera trước vẫn chưa được tiết lộ.</p>\r\n\r\n<p><em>Theo: genk</em></p>\r\n', 1558863223, 1),
(8, 'Màn hình Samsung Galaxy Note 10 cong tinh tế, \"nốt ruồi\" ở chính giữa', '<p>Kể từ khi ra mắt Galaxy Note Edge, m&agrave;n h&igrave;nh cong đ&atilde; dần trở th&agrave;nh thương hiệu cho c&aacute;c mẫu smartphone cao cấp của Samsung. Tuy nhi&ecirc;n c&oacute; vẻ như Galaxy Note 10 sắp tới sẽ được lấy cảm hứng từ thiết kế cũ của Samsung. Samsung Galaxy Note 9, Galaxy S10 v&agrave; S10+ đều đi k&egrave;m với m&agrave;n h&igrave;nh cong rất ...</p>\r\n', 'man-hinh-samsung-galaxy-note-10-cong-tinh-te-not-ruoi-o-chinh-giua-medium.jpg', '<p>Kể từ khi ra mắt Galaxy Note Edge, m&agrave;n h&igrave;nh cong đ&atilde; dần trở th&agrave;nh thương hiệu cho c&aacute;c mẫu smartphone cao cấp của Samsung. Tuy nhi&ecirc;n c&oacute; vẻ như Galaxy Note 10 sắp tới sẽ được lấy cảm hứng từ thiết kế cũ của Samsung.</p>\r\n\r\n<p><img src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/man-hinh-samsung-galaxy-note-10-cong-tinh-te-not-ruoi-o-chinh-giua-1.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p>Samsung Galaxy Note 9, Galaxy S10 v&agrave; S10+ đều đi k&egrave;m với m&agrave;n h&igrave;nh cong rất tinh tế, chủ yếu để l&agrave;m nổi bật cạnh mỏng ở hai b&ecirc;n v&agrave; l&agrave; c&aacute;i cớ để giữ lại t&iacute;nh năng Edge Screen. Sau thời gian bị l&atilde;ng qu&ecirc;n, việc Samsung đưa viền m&agrave;n h&igrave;nh si&ecirc;u cong quay trở lại cũng l&agrave; một điều kh&aacute; hợp l&yacute;.</p>\r\n\r\n<p><img src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/man-hinh-samsung-galaxy-note-10-cong-tinh-te-not-ruoi-o-chinh-giua-2.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p>Nếu việc Samsung đưa thiết kế cũ quay trở lại với Galaxy Note 10 l&agrave; sự thật, hy vọng rằng n&oacute; sẽ được trang bị nhiều t&iacute;nh năng mới để mang lại trải nghiệm phong ph&uacute; cho người sử dụng. Khi Galaxy Note Edge ra mắt, m&agrave;n h&igrave;nh &quot;si&ecirc;u cong&quot; của n&oacute; chắc chắn đ&atilde; l&agrave; một thứ mới mẻ v&agrave; kh&aacute;c biệt ho&agrave;n to&agrave;n so với bất kỳ mẫu smartphone n&agrave;o kh&aacute;c tr&ecirc;n thị trường, tuy nhi&ecirc;n Samsung chắc chắn sẽ cần phải s&aacute;ng tạo hơn khi mang n&oacute; quay trở lại thế hệ Note 10 sắp tới.</p>\r\n', 1558863281, 1),
(9, 'Công nghệ sạc siêu nhanh 25W của Samsung khủng đến mức nào??', '<p>C&ocirc;ng nghệ sạc si&ecirc;u nhanh 25W của Samsung được cho l&agrave; nhanh hơn đ&aacute;ng kể so với sạc 15W hiện đang c&oacute; tr&ecirc;n thị trường. Sau nhiều năm gắn b&oacute; với c&ocirc;ng nghệ sạc nhanh Quick Charge 2.0 của Qualcomm, cuối c&ugrave;ng h&atilde;ng điện thoại Samsung cũng ra mắt một c&ocirc;ng nghệ sạc nhanh mới. C&ocirc;ng nghệ n&agrave;y c&oacute; c&ocirc;ng suất ...</p>\r\n', 'cong-nghe-sac-sieu-nhanh-25w-cua-samsung-khung-den-muc-nao-medium.jpg', '<p>C&ocirc;ng nghệ sạc si&ecirc;u nhanh 25W của Samsung được cho l&agrave; nhanh hơn đ&aacute;ng kể so với sạc 15W hiện đang c&oacute; tr&ecirc;n thị trường.</p>\r\n\r\n<p>Sau nhiều năm gắn b&oacute; với c&ocirc;ng nghệ sạc nhanh Quick Charge 2.0 của Qualcomm, cuối c&ugrave;ng h&atilde;ng&nbsp;<a href=\"https://mobilecity.vn/dien-thoai-samsung\">điện thoại Samsung</a>&nbsp;cũng ra mắt một c&ocirc;ng nghệ sạc nhanh mới. C&ocirc;ng nghệ n&agrave;y c&oacute; c&ocirc;ng suất sạc 25W v&agrave; được trang bị tr&ecirc;n Galaxy S10 5G cũng như Galaxy A70.</p>\r\n\r\n<p>Do kh&ocirc;ng c&oacute; Galaxy S10 5G n&ecirc;n trang tin SamMobile đ&atilde; tiến h&agrave;nh thử nghiệm c&ocirc;ng nghệ sạc nhanh 25W của Samsung tr&ecirc;n Galaxy A70 để xem n&oacute; vượt trội như thế n&agrave;o so với sạc ti&ecirc;u chuẩn 15W.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/cong-nghe-sac-sieu-nhanh-25w-cua-samsung-khung-den-muc-nao.jpg\" /></p>\r\n\r\n<p>Galaxy A70 c&oacute; pin dung lượng 4.500mAh v&agrave; lượt đầu ti&ecirc;n n&oacute; sẽ được sạc từ mức 3% pin bằng bộ sạc 25W. SamMobile sẽ tiến h&agrave;nh kiểm tra mức pin sau 30, 45 v&agrave; 60 ph&uacute;t. Tiếp theo, qu&aacute; tr&igrave;nh n&agrave;y sẽ được lặp lại với bộ sạc 15W ti&ecirc;u chuẩn.</p>\r\n\r\n<p>Kết quả l&agrave; bộ sạc 25W kh&ocirc;ng qu&aacute; vượt trội so với bộ sạc 15W nhưng n&oacute; vẫn c&oacute; một số kh&aacute;c biệt đ&aacute;ng ch&uacute; &yacute;. Sau 30 ph&uacute;t, sạc 25W sạc được 33% pin trong khi sạc 15W chỉ cung cấp cho pin 26%. Ở mốc 45 ph&uacute;t, ch&ecirc;nh lệch kh&aacute; nhỏ giữa 2 bộ sạc: Pin ở mức 51% với sạc 25W v&agrave; 49% với sạc 15W.</p>\r\n\r\n<p>Nhưng ở mốc 60 ph&uacute;t, sạc 25W tiếp tục cho thấy khả năng của m&igrave;nh khi sạc được 67% pin. Trong khi đ&oacute;, sạc 15W chỉ cung cấp được 60% điện năng cho pin Galaxy A70. Galaxy S10+ cũng sạc được 67% trong 60 ph&uacute;t với sạc 15W ti&ecirc;u chuẩn nhưng n&oacute; chỉ c&oacute; pin 4.100mAh. Điều n&agrave;y cho thấy nếu được hỗ trợ c&ocirc;ng nghệ sạc 25W, Galaxy S10+ c&oacute; thể sạc nhanh hơn rất nhiều.</p>\r\n\r\n<p>Bạn c&oacute; thể so s&aacute;nh chi tiết tốc độ sạc của c&ocirc;ng nghệ 25W v&agrave; 15W qua bảng dưới đ&acirc;y:</p>\r\n\r\n<p><img src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/cong-nghe-sac-sieu-nhanh-25w-cua-samsung-khung-den-muc-nao-1.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>Theo: genk</em></p>\r\n', 1558863331, 1),
(10, 'Lộ render iPhone 2019 với cụm camera khá thất vọng!!', '<p>R&ograve; rỉ render iPhone 2019 với cụm camera t&iacute;ch hợp gọn g&agrave;ng trong phần k&iacute;nh mặt lưng với mục đ&iacute;ch giảm độ lồi cho cụm camera n&agrave;y. Ngo&agrave;i ra Apple l&agrave;m vậy để cho đỡ XẤU. Theo đ&ocirc;̀n đoán, ít nh&acirc;́t 1 trong s&ocirc;́ các m&acirc;̃u iPhone 2019 có 3 camera sau và trong khi Apple thử nghi&ecirc;̣m nhi&ecirc;̀u ki&ecirc;̉u ...</p>\r\n', 'lo-render-iphone-2019-voi-cum-camera-kha-that-vong-medium.jpg', '<p>R&ograve; rỉ render iPhone 2019 với cụm camera t&iacute;ch hợp gọn g&agrave;ng trong phần k&iacute;nh mặt lưng với mục đ&iacute;ch giảm độ lồi cho cụm camera n&agrave;y. Ngo&agrave;i ra Apple l&agrave;m vậy để cho đỡ XẤU.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/04/lo-render-iphone-2019-voi-cum-camera-kha-that-vong.jpg\" /></p>\r\n\r\n<p>Theo đ&ocirc;̀n đoán, ít nh&acirc;́t 1 trong s&ocirc;́ các m&acirc;̃u iPhone 2019 có 3 camera sau và trong khi Apple thử nghi&ecirc;̣m nhi&ecirc;̀u ki&ecirc;̉u thi&ecirc;́t k&ecirc;́ khác nhau thì g&acirc;̀n đ&acirc;y có th&ocirc;ng tin cho rằng &quot;Táo khuy&ecirc;́t&quot; sẽ dùng cụm camera l&ocirc;̀i hình vu&ocirc;ng với 3 camera đặt theo hình tam giác.</p>\r\n\r\n<p>Thi&ecirc;́t k&ecirc;́ này đã được hé l&ocirc;̣ trong các render trước đ&acirc;y tuy nhi&ecirc;n render mới do OnLeaks và trang tin &acirc;́n đ&ocirc;̣ Cashkaro tạo ra chia sẻ th&ecirc;m m&ocirc;̣t s&ocirc;́ th&ocirc;ng tin mới v&ecirc;̀ iPhone 2019.</p>\r\n\r\n<p><img src=\"https://sudospaces.com/mobilecity-vn/images/2019/04/lo-render-iphone-2019-voi-cum-camera-kha-that-vong-1.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p>Như đã th&acirc;́y trong các render trước, iPhone 2019 trong render mới v&acirc;̃n có cụm camera hình vu&ocirc;ng với 3 camera x&ecirc;́p hình tam giác, 2 b&ecirc;n trái và 1 b&ecirc;n phải cùng đèn LED. Dự ki&ecirc;́n, iPhone XI, th&ecirc;́ h&ecirc;̣ ti&ecirc;́p theo của iPhone XS, sẽ ti&ecirc;́p tục có màn hình 5.8 inch nhưng đ&ocirc;̣ dày và đ&ocirc;̣ lớn của ph&acirc;̀n rãnh được giảm đi đáng k&ecirc;̉.</p>\r\n\r\n<p>Dự ki&ecirc;́n cụm 3 camera của iPhone 2019 sẽ bao g&ocirc;̀m 1 camera góc r&ocirc;̣ng 12MP, camera chụp xa 12MP và camera góc si&ecirc;u r&ocirc;̣ng 12MP. Các m&acirc;̃u iPhone 2019 sẽ có camera trước 12MP và được trang bị chip A13 hoàn toàn mới.</p>\r\n\r\n<p><em>Theo: Onleaks x CashKaro</em></p>\r\n', 1558863382, 1),
(11, 'Bạn chỉ nhìn thấy 2 trong 3 camera sau của iPhone 2019, và chỉ thế thôi..', '<p>Bạn chỉ nh&igrave;n thấy 2 trong 3 camera sau của iPhone 2019, v&agrave; chỉ thế th&ocirc;i.. L&iacute; do l&agrave; tr&ocirc;ng 2 camera th&ocirc;i th&igrave; iPhone 2019 sẽ ưa nh&igrave;n hơn rất nhiều.&nbsp;Apple c&oacute; thể sẽ sử dụng một lớp phủ đặc biệt để che đi ống k&iacute;nh camera thứ ba. Chuy&ecirc;n gia ph&acirc;n t&iacute;ch Ming-Chi Kuo mới đ&acirc;y lại đưa ra những nhận ...</p>\r\n', 'ban-chi-nhin-thay-2-trong-3-camera-sau-cua-iphone-2019-va-chi-the-thoi-medium.jpg', '<p>Bạn chỉ nh&igrave;n thấy 2 trong 3 camera sau của iPhone 2019, v&agrave; chỉ thế th&ocirc;i.. L&iacute; do l&agrave; tr&ocirc;ng 2 camera th&ocirc;i th&igrave; iPhone 2019 sẽ ưa nh&igrave;n hơn rất nhiều.&nbsp;Apple c&oacute; thể sẽ sử dụng một lớp phủ đặc biệt để che đi ống k&iacute;nh camera thứ ba.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/04/ban-chi-nhin-thay-2-trong-3-camera-sau-cua-iphone-2019-va-chi-the-thoi.jpg\" /></p>\r\n\r\n<p>Chuy&ecirc;n gia ph&acirc;n t&iacute;ch Ming-Chi Kuo mới đ&acirc;y lại đưa ra những nhận định về iPhone 2019 sắp ra mắt. Theo đ&oacute;, tất cả c&aacute;c mẫu iPhone 2019 sẽ được n&acirc;ng cấp camera selfie từ 7MP l&ecirc;n 12MP. Sẽ c&oacute; hai mẫu iPhone trang bị m&agrave;n h&igrave;nh OLED 6,5 inch v&agrave; 5,8 inch, sở hữu 3 camera sau với 1 camera g&oacute;c si&ecirc;u rộng 12MP được bổ sung th&ecirc;m.</p>\r\n\r\n<p>Cũng theo những nguồn tin r&ograve; rỉ trước đ&acirc;y, cụm camera sau của iPhone 2019 sẽ được xếp th&agrave;nh h&igrave;nh tam gi&aacute;c v&agrave; nằm trong một module h&igrave;nh vu&ocirc;ng. Giống như bức ảnh render dưới đ&acirc;y. Thiết kế n&agrave;y bị đ&aacute;nh gi&aacute; l&agrave; xấu v&agrave; sẽ khiến người d&ugrave;ng thất vọng.</p>\r\n\r\n<p>Tuy nhi&ecirc;n theo &ocirc;ng Kuo, Apple đ&atilde; t&igrave;m ra một c&aacute;ch để gi&uacute;p cụm camera sau tr&ecirc;n iPhone 2019 tr&ocirc;ng đỡ xấu hơn. Đ&oacute; l&agrave; sử dụng một lớp phủ m&agrave;u đen ph&iacute;a tr&ecirc;n ống k&iacute;nh g&oacute;c rộng, khiến người d&ugrave;ng kh&ocirc;ng nh&igrave;n thấy r&otilde; chiếc camera n&agrave;y.</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; kh&ocirc;ng nh&igrave;n thấy r&otilde; ống k&iacute;nh camera g&oacute;c rộng được bổ sung th&ecirc;m, t&iacute;nh đối xứng của thiết kế sẽ được đảm bảo. Về cơ bản, ch&uacute;ng ta sẽ chỉ c&ograve;n nh&igrave;n thấy hai camera sau xếp theo chiều dọc giống với iPhone Xs hay Xs Max.</p>\r\n\r\n<p><em>Theo: 9to5mac</em></p>\r\n', 1558863438, 1),
(12, 'Sau iPhone SE, Apple tiếp tục ra mắt iPhone XE nhỏ nhắn, xinh xắn', '<p>Apple sẽ cho ra mắt phi&ecirc;n bản iPhone XE c&oacute; m&agrave;n h&igrave;nh tai thỏ 4.8 inch, Face ID, camera 12MP, chip A12 Bionic v&agrave;o th&aacute;ng 9 n&agrave;y. Theo nguồn tin mới nhất,&nbsp;Apple đ&atilde; h&eacute; lộ rằng iPhone XE đang được ph&aacute;t triển. IPhone XE đ&atilde; được đồn đo&aacute;n từ l&acirc;u tr&ecirc;n cộng đồng nh&agrave; T&aacute;o dưới t&ecirc;n l&agrave; iPhone SE 2. ...</p>\r\n', 'sau-iphone-se-apple-tiep-tuc-ra-mat-iphone-xe-nho-nhan-xinh-xan-medium.jpg', '<p>Apple sẽ cho ra mắt phi&ecirc;n bản iPhone XE c&oacute; m&agrave;n h&igrave;nh tai thỏ 4.8 inch, Face ID, camera 12MP, chip A12 Bionic v&agrave;o th&aacute;ng 9 n&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/04/sau-iphone-se-apple-tiep-tuc-ra-mat-iphone-xe-nho-nhan-xinh-xan.jpg\" /></p>\r\n\r\n<p>Theo nguồn tin mới nhất,&nbsp;Apple đ&atilde; h&eacute; lộ rằng iPhone XE đang được ph&aacute;t triển. IPhone XE đ&atilde; được đồn đo&aacute;n từ l&acirc;u tr&ecirc;n cộng đồng nh&agrave; T&aacute;o dưới t&ecirc;n l&agrave; iPhone SE 2.</p>\r\n\r\n<p>Giống như&nbsp;<a href=\"https://mobilecity.vn/apple/iphone-x.html\">iPhone X</a>, iPhone XE sẽ c&oacute; m&agrave;n h&igrave;nh OLED 4.8 inch với tai thỏ tương tự. M&aacute;y cũng sẽ c&oacute; Face ID nhưng kh&ocirc;ng d&ugrave;ng mặt lưng k&iacute;nh. Thay v&agrave;o đ&oacute;, XE c&oacute; mặt lưng bằng nh&ocirc;m, đồng nghĩa với việc kh&ocirc;ng hỗ trợ sạc kh&ocirc;ng d&acirc;y.</p>\r\n\r\n<p>Về camera, nguồn tin khẳng định rằng iPhone XE sẽ c&oacute; camera đơn 12MP ph&iacute;a sau, khẩu độ f/1.8. M&aacute;y sẽ d&ugrave;ng chip chip A12 Bionic nhưng chưa c&oacute; th&ocirc;ng tin kh&aacute;c về phần cứng.</p>\r\n\r\n<p>Cũng theo nguồn tin, iPhone XE sẽ được sản xuất tại Ấn Độ bởi đối t&aacute;c Wistron. Dẫu vậy, ở thời điểm hiện tại chưa c&oacute; bất cứ bằng chứng n&agrave;o x&aacute;c thực những th&ocirc;ng tin kể tr&ecirc;n.</p>\r\n\r\n<p><img src=\"https://sudospaces.com/mobilecity-vn/images/2019/04/sau-iphone-se-apple-tiep-tuc-ra-mat-iphone-xe-nho-nhan-xinh-xan-1.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p>Rất nhiều tin đồn xung quanh sự tồn tại của iPhone SE 2 đ&atilde; xuất hiện trong những năm qua nhưng ph&iacute;a Apple vẫn im hơi lặng tiếng. Hy vọng rằng iPhone SE 2 sẽ được ra mắt dưới t&ecirc;n gọi iPhone XE như đồn đo&aacute;n v&agrave;o th&aacute;ng 9 năm nay.</p>\r\n\r\n<p><em>Theo: phoneArena.com</em></p>\r\n', 1558863501, 1);

--
-- Triggers `promotion_news`
--
DELIMITER $$
CREATE TRIGGER `add time` BEFORE INSERT ON `promotion_news` FOR EACH ROW BEGIN
SET NEW.time_created = UNIX_TIMESTAMP();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `time_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `email`, `phone`, `address`, `level`, `status`, `time_created`) VALUES
(22, 'HAILD_ADMIN', '202cb962ac59075b964b07152d234b70', 'Lê Đình Hải', 'hai.ledinh.hust@gmail.com', '0981706560', 'Số 1 Đại Cồ Việt, Hai Bà Trưng, Hà Nội', 2, 1, 1559019707),
(23, 'hongduong', '202cb962ac59075b964b07152d234b70', 'Chu Hồng Dương', 'hongduong@gmail.com', '09817065600', 'Hai Bà Trưng, Hà Nội', 0, 1, 1559019740),
(24, 'hiennguyen', '202cb962ac59075b964b07152d234b70', 'Nguyễn Hiền', 'hiennguyen@gmail.com', '0981706560', '', 0, 1, 1559020079),
(25, 'haivan', '202cb962ac59075b964b07152d234b70', 'Đỗ Hải Vân', 'haivando@monkey.com', '0981706560', '', 0, 1, 1559027279),
(26, 'hongnhung', '202cb962ac59075b964b07152d234b70', 'Nguyễn Hồng Nhung', 'hongnhung@gmail.com', '0981706560', '', 0, 1, 1559027435),
(27, 'TRANGVT_SALE', '202cb962ac59075b964b07152d234b70', 'Vũ Thị Trang', 'trangvt@gmail.com', '0981706560', 'Hai Bà Trưng, Hà Nội', 1, 1, 1559027978),
(28, 'NGANNK_SALE', '202cb962ac59075b964b07152d234b70', 'Nguyễn Kim Ngân', 'ngannguyen@gmail.com', '0981706560', 'Số 1 Đại Cồ Việt, Hai Bà Trưng, Hà Nội', 1, 1, 1559028335),
(29, 'namtrang', '202cb962ac59075b964b07152d234b70', 'Lê Nam Trang', 'namtrangle@monkey.com', '0981706560', '', 0, 1, 1559028803),
(30, 'thuhuyen', '202cb962ac59075b964b07152d234b70', 'Mai Thu Huyền', 'thuhuyenmai@gmail.com', '0981706560', '', 0, 1, 1559030067),
(31, 'thuylinh', '202cb962ac59075b964b07152d234b70', 'Phạm Thùy Linh', 'linhpham@gmail.com', '0981706560', '', 0, 1, 1559030888),
(32, 'honghanh', '202cb962ac59075b964b07152d234b70', 'Nguyễn Hồng Hạnh', 'hanhnguyen.nb@gnmail.com', '0981706560', '', 0, 1, 1559030972),
(33, 'lita', '202cb962ac59075b964b07152d234b70', 'Luyện Linh Trang', 'litanguyen@gmail.com', '0981706560', '', 0, 0, 1559031138),
(34, 'SUND_ADMIN', '202cb962ac59075b964b07152d234b70', 'Nguyễn Duy Sự', 'su.nguyenduy.nb@gmail.com', '0962302616', '', 2, 1, 1559032161),
(35, 'HANGDT_SALE', '202cb962ac59075b964b07152d234b70', 'Đặng Thị Hằng', 'hangdang@monkey.com', '0981706560', '', 1, 1, 1559032236),
(39, 'khachhang', '202cb962ac59075b964b07152d234b70', 'khach hang', 'su.nguyenduy@gmail.com', '0962302616', '', 0, 1, 1559116713);

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `add time user` BEFORE INSERT ON `user` FOR EACH ROW BEGIN
SET NEW.time_created = UNIX_TIMESTAMP();
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_company`
--
ALTER TABLE `info_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_news`
--
ALTER TABLE `promotion_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `info_company`
--
ALTER TABLE `info_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `promotion_news`
--
ALTER TABLE `promotion_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
