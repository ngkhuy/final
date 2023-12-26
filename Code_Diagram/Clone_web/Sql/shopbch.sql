-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 06:38 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `date_birth` date NOT NULL,
  `phone_number` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `name`, `password`, `email`, `gender`, `date_birth`, `phone_number`, `address`, `role`) VALUES
(5, 'admin', 'Đạo thanh Hưng', 'e10adc3949ba59abbe56e057f20f883e', 'hungdt@gmail.com', 'Nam', '2023-05-03', '0123456789', 'Ninh Thuận', 0),
(6, 'bienzan', 'Nguyễn Văn Biên', 'e10adc3949ba59abbe56e057f20f883e', 'bienzan@gmail.com', 'Nam', '0000-00-00', '12345678', 'Sài Gòn', 1),
(12, 'bienne', 'Nguyễn Ngọc Biên', 'e10adc3949ba59abbe56e057f20f883e', 'nvb221003@gmail.com', 'Nam', '2023-05-04', '0333091697', 'Dak Lak', 1),
(13, 'ninhanh', 'ninh anh', 'e10adc3949ba59abbe56e057f20f883e', 'nvb221003@gmail.com', 'Nữ', '2023-05-06', '0333091697', 'Dak Lak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cate_product`
--

CREATE TABLE `cate_product` (
  `id_cate` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `cate_product`
--

INSERT INTO `cate_product` (`id_cate`, `name`) VALUES
(24, 'Laptop'),
(25, 'Điện thoại'),
(26, 'Phụ kiện'),
(27, 'Ipad');

-- --------------------------------------------------------

--
-- Table structure for table `detail_product`
--

CREATE TABLE `detail_product` (
  `id_product` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `detail_product`
--

INSERT INTO `detail_product` (`id_product`, `id_order`, `quantity`, `total_price`, `date_create`) VALUES
(51, 47, 1, 27690000, '2023-05-15 16:14:48'),
(51, 52, 1, 27690000, '2023-05-17 19:38:49'),
(52, 48, 1, 18490000, '2023-05-15 16:34:03'),
(52, 53, 1, 18490000, '2023-05-17 19:40:54'),
(53, 47, 1, 9990000, '2023-05-15 16:14:48'),
(53, 48, 1, 9990000, '2023-05-15 16:34:03'),
(53, 49, 2, 19980000, '2023-05-15 18:59:45'),
(64, 48, 1, 26440000, '2023-05-15 16:34:03'),
(64, 49, 1, 26440000, '2023-05-15 18:59:45'),
(65, 47, 1, 28440000, '2023-05-15 16:14:48'),
(65, 50, 10, 284400000, '2023-05-15 19:07:44'),
(65, 51, 5, 142200000, '2023-05-15 19:13:31'),
(77, 50, 1, 7990000, '2023-05-15 19:07:44'),
(77, 51, 1, 7990000, '2023-05-15 19:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `placeorder`
--

CREATE TABLE `placeorder` (
  `id` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `placeorder`
--

INSERT INTO `placeorder` (`id`, `id_account`, `order_date`, `status`, `total`, `name`, `phone`, `address`) VALUES
(47, 5, '2023-05-15 16:14:48', 'Đã nhận', 66120000, 'Đạo thanh Hưng', '0123456789', 'Ninh Thuận'),
(48, 5, '2023-05-15 16:34:03', 'Đã hủy', 54920000, 'Đạo thanh Hưng', '0123456789', 'Ninh Thuận'),
(49, 5, '2023-05-15 18:59:45', 'Đã nhận', 46420000, 'Nguyễn Văn Biên', '0333091697', 'Đăk Đắk'),
(50, 5, '2023-05-15 19:07:44', 'Đã nhận', 292390000, 'Nguyễn Văn Biên', '0333091697', 'Bảo Lộc'),
(51, 5, '2023-05-15 19:13:31', 'Đã nhận', 150190000, 'Nguyễn Văn Biên', '0333091697', 'Bảo Lộc'),
(52, 5, '2023-05-17 19:38:49', 'Đang giao', 27690000, 'Đạo thanh Hưng', '0123456789', 'Ninh Thuận'),
(53, 5, '2023-05-17 19:40:54', 'Đang giao', 18490000, 'Đạo thanh Hưng', '0123456789', 'Ninh Thuận');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_cate` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `old_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_cate`, `name`, `price`, `image`, `description`, `old_price`, `quantity`) VALUES
(50, 25, 'Samsung Galaxy A24', 6190000, 'samsung-galaxy-a24-black-thumb-600x600.jpg', '', 6490000, 10),
(51, 24, 'Laptop MacBook Air M2 2022', 27690000, 'apple-macbook-air-2020-mgn63saa-(71).jpg', 'Sau 14 năm, ba lần sửa đổi và hai kiến trúc bộ vi xử lý khác nhau, kiểu dáng mỏnLaptop Apple MacBook Air M1 2020 thuộc dòng laptop cao cấp sang trọng có cấu hình mạnh mẽ, chinh phục được các tính năng văn phòng lẫn đồ hoạ mà bạn mong muốn, thời lượng pin dài, thiết kế mỏng nhẹ sẽ đáp ứng tốt các nhu cầu làm việc của bạn.', 32990000, 200),
(52, 24, 'Laptop MacBook Air M1 2020', 18490000, 'apple-macbook-air-2020-mgn63saa-(71).jpg', 'Laptop Apple MacBook Air M1 2020 thuộc dòng laptop cao cấp sang trọng có cấu hình mạnh mẽ, chinh phục được các tính năng văn phòng lẫn đồ hoạ mà bạn mong muốn, thời lượng pin dài, thiết kế mỏng nhẹ sẽ đáp ứng tốt các nhu cầu làm việc của bạn.', 22990000, 200),
(53, 24, 'Laptop Lenovo IdeaPad 1 2022', 9990000, 'lenovo-ideapad-3-15iau7-i3-82rk005lvn-(14).jpg', '', 12690000, 20),
(54, 24, 'Laptop HP 15s fq2716TU i3', 10990000, 'hp-15s-fq2716tu-i3-7c0x3pa-(10).jpg', '', 13690000, 10),
(55, 24, 'Laptop Asus Vivobook X415EA', 10190000, 'asus-vivobook-14-x1402za-i3-ek249w-(4).jpg', '', 11490000, 11),
(56, 24, 'Laptop Acer Aspire 7 Gaming', 15290000, 'acer-aspire-7-gaming-a715-42g-r05g-r5-nhqaysv007-(50).jpg', '', 20490000, 124),
(57, 24, 'Laptop Lenovo ThinkBook 14 G3', 18190000, 'lenovo-ideapad-gaming-3-15ihu6-i5-82k101f3vn-(4).jpg', '', 11990000, 24),
(58, 24, 'Laptop Lenovo Ideapad 3 15ITL6 i5', 12390000, 'lenovo-ideapad-gaming-3-15ihu6-i5-82k101f3vn-(4).jpg', '', 14490000, 53),
(59, 24, 'Laptop MSI Gaming GF63 Thin 11SC i5', 16290000, 'msi-gaming-gf63-thin-11ud-i5-649vn-(24).jpg', '', 20990000, 34),
(60, 24, 'Laptop MSI Modern 14 B11MOU i3', 9490000, 'msi-modern-14-b11mou-i3-1115g4-8gb-600x600.jpg', '', 13790000, 65),
(61, 24, 'Laptop MSI Modern 15 A11MU i5', 12590000, 'msi-modern-14-b11mou-i3-1115g4-8gb-600x600.jpg', '', 17190000, 42),
(62, 24, 'Laptop MSI Modern 14 C11M i3', 10890000, 'msi-modern-14-b11mou-i3-1115g4-8gb-600x600.jpg', '', 11490000, 53),
(63, 24, 'Laptop MSI Modern 15 A5M R7', 13290000, 'msi-modern-14-b11mou-i3-1115g4-8gb-600x600.jpg', '', 14990000, 42),
(64, 25, 'iPhone 14 Pro Max 128GB', 26440000, 'iphone-14-pro-max-den-thumb-600x600.jpg', '', 29990000, 24),
(65, 25, 'iPhone 14 Pro Max 512GB', 28440000, 'iphone-14-pro-max-den-thumb-600x600.jpg', '', 29990000, 24),
(66, 25, 'iPhone 14 Pro 512GB', 24990000, 'iphone-14-pro-vang-thumb-600x600.jpg', '', 27900000, 22),
(67, 26, 'Tai nghe Bluetooth AirPods 2', 2640000, 'bluetooth-airpods-2-apple-mv7n2-imei-ava-600x600.jpg', '', 3540000, 44),
(72, 25, 'Iphone 12 512GB mini', 13900000, 'iphone-12-den-new-2-600x600.jpg', '', 15490000, 22),
(73, 25, 'Iphone 13 512GB mini', 15900000, 'iphone-13-mini-midnight-1-600x600.jpg', '', 20000000, 55),
(77, 27, 'iPad 9 Wifi', 7990000, 'iPad-9-wifi-trang-600x600.jpg', '', 11490000, 44),
(78, 27, 'iPad 10 Wifi', 10490000, 'iPad-Gen-10-sliver-thumb-600x600.jpg', '', 11490000, 44),
(79, 27, 'iPad Pro M1', 44990000, 'ipad-pro-m1-11-inch-wifi-2tb-2021-xam-thumb-600x600.jpeg', '', 49990000, 44),
(81, 27, 'iPad mini 6 WiFi', 10490000, 'ipad-mini-6-wifi-starlight-1-600x600.jpg', '', 12490000, 55),
(82, 27, 'iPad Pro M1 12.9', 21000000, 'ipad-pro-2021-129-inch-silver-600x600.jpg', '', 29000000, 55),
(83, 27, 'Galaxy Tab A8', 6490000, 'samsung-galaxy-tab-a8-thumb-1-600x600.jpg', '', 8490000, 44),
(84, 26, 'Loa Bluetooth JBL Go 3', 1990000, 'bluetooth-jbl-go-3-xanh-den-thumb3-600x600.jpeg', '', 3000000, 55),
(85, 26, 'Loa Bluetooth JBL Pulse 5', 5490000, 'loa-bluetooth-jbl-pulse-5-thumb.-600x600.jpeg', '', 6490000, 66),
(86, 26, 'Loa Bluetooth JBL Partybox', 4490000, 'jbl-partybox-on-the-go-thumb-5-600x600.jpg', '', 6490000, 66),
(87, 26, 'Loa Bluetooth JBL Partybox 110', 10900000, 'loa-bluetooth-jbl-partybox-110-imei-thumb-600x600.jpeg', '', 12900000, 22),
(88, 26, 'Loa Bluetooth JBL Flip 6 ', 2490000, 'bluetooth-jbl-flip-6-thumb-600x600.jpeg', '', 3490000, 66);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cate_product`
--
ALTER TABLE `cate_product`
  ADD PRIMARY KEY (`id_cate`);

--
-- Indexes for table `detail_product`
--
ALTER TABLE `detail_product`
  ADD PRIMARY KEY (`id_product`,`id_order`);

--
-- Indexes for table `placeorder`
--
ALTER TABLE `placeorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cate_product`
--
ALTER TABLE `cate_product`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `placeorder`
--
ALTER TABLE `placeorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
