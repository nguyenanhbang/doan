-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 09, 2022 lúc 05:49 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'vuduy', 'vuduy@gmail.com', 'vuduy', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_binhluan`
--

CREATE TABLE `tbl_binhluan` (
  `binhluan_id` int(11) NOT NULL,
  `tenbinhluan` varchar(255) NOT NULL,
  `binhluan` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(6, 'Samsung'),
(7, 'Apple'),
(8, 'Huawei'),
(9, 'Oppo'),
(10, 'Dell'),
(12, 'Viettel'),
(13, 'OEM'),
(15, 'TP-Link'),
(16, 'Xiaomi'),
(17, 'Osaka'),
(18, 'Macbook'),
(19, 'Asus');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(21, 24, 'g7alu2sh1cu9errli7mbg1587m', 'Samsung Galaxy A12', '3950000', 1, 'aaa94c8bfc.jpg'),
(22, 25, 'najvgcl8rjoti86fmt368vraag', 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', '8000000', 1, '5cca03034d.jpg'),
(28, 46, '2fva1gfkrbprlujjbalcch68t4', 'Điện thoại Honor 70 Pro', '29650000', 1, '0ca7788d23.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(3, 'Laptop'),
(5, 'Điện thoại di động'),
(6, 'Phụ kiện công nghệ'),
(7, 'Phần mềm'),
(16, 'Thiết bị thông minh'),
(17, 'Thiết bị mạng'),
(19, 'sách toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_compare`
--

INSERT INTO `tbl_compare` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(9, 9, 52, 'điện thoại 2', '5656400', '400aa0abe2.jpg'),
(10, 9, 29, 'Điện thoại OPPO Reno7 5G (Chính hãng)', '9000000', 'b322824b3e.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(6, 'Vũ Duy', '22 Giải Phóng-Hai Bà Trưng- Hà Nội', 'Thành phố Hà Nội', 'HN', '700000', '0932023992', 'duy36863@nuce.edu.vn', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'Hình', 'số 22 Dịch Vọng', 'Hà Nội', 'hn', '150000', '09658743215', 'hinh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'Duy', 'số 22 Dịch Vọng', 'Hà Nội', 'hn', '150000', '09658743215', 'duy2006182@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'duy', 'số 22 Dịch Vọng', 'Hà Nội', 'hn', '150000', '09658743215', 'duy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(60, 23, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', 6, 3, '4050000', '24af523530.png', 1, '2022-02-22 15:30:38'),
(61, 25, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', 6, 1, '8000000', '5cca03034d.jpg', 0, '2022-02-15 15:48:48'),
(62, 27, 'Samsung Galaxy A12', 6, 1, '3950000', 'aaa94c8bfc.jpg', 0, '2022-02-02 00:00:00'),
(63, 28, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', 6, 1, '8000000', '5cca03034d.jpg', 0, '2022-06-24 15:53:57'),
(64, 27, 'Samsung Galaxy A12', 6, 2, '7900000', 'aaa94c8bfc.jpg', 0, '2022-01-12 16:02:43'),
(65, 26, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', 6, 2, '2700000', '24af523530.png', 0, '2021-12-10 16:02:43'),
(66, 25, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', 6, 1, '8000000', '5cca03034d.jpg', 1, '2021-10-15 16:03:47'),
(67, 28, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', 6, 1, '8000000', '5cca03034d.jpg', 1, '2022-03-17 16:04:24'),
(68, 26, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', 6, 1, '1350000', '24af523530.png', 0, '2022-05-16 16:09:25'),
(69, 26, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', 6, 1, '1350000', '24af523530.png', 0, '2022-07-06 16:14:40'),
(70, 23, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', 6, 1, '1350000', '24af523530.png', 0, '2022-07-24 16:15:29'),
(71, 24, 'Samsung Galaxy A12', 6, 1, '3950000', 'aaa94c8bfc.jpg', 0, '2022-06-14 16:16:01'),
(75, 27, 'Samsung Galaxy A12', 6, 1, '3950000', 'aaa94c8bfc.jpg', 0, '2022-06-22 22:17:24'),
(76, 43, 'Điện thoại iPhone 13 Pro Max Chính hãng VN/A (128GB, 256GB, 512GB)', 6, 1, '25300000', '5f54d2d1c3.jpg', 0, '2022-06-23 12:00:50'),
(77, 46, 'Điện thoại Honor 70 Pro', 9, 1, '29650000', '0ca7788d23.png', 0, '2022-06-23 14:17:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(23, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', '', '', '0', '', 17, 15, '<p><span>Hi&ecirc;̣n nay router chắc chắn là m&ocirc;̣t trong những phụ ki&ecirc;̣n kh&ocirc;ng th&ecirc;̉ nào thi&ecirc;́u đ&ocirc;́i với người dùng c&ocirc;ng ngh&ecirc;̣ phải kh&ocirc;ng nào. Hãy chọn mua ngay Router Wifi Huawei AX3 băng tần k&eacute;p Ax3000 CPU 2 nh&acirc;n&nbsp;t&ocirc;́c đ&ocirc;̣ truy&ecirc;̀n tải nhanh chóng, nhỏ gọn sẽ là sự lựa chọn hoàn hảo cho bạn.</span></p>', 1, '1350000', '24af523530.png'),
(24, 'Samsung Galaxy A12', '', '', '0', '', 5, 6, '<h2><span>Điện thoại Samsung Galaxy A12 &ndash; Smartphone gi&aacute; rẻ cấu h&igrave;nh tốt v&agrave; pin tr&acirc;u</span></h2>\r\n<p><span>Samsung A12</span>&nbsp;l&agrave; một chiếc smartphone gi&aacute; rẻ nhưng sở hữu cấu h&igrave;nh ổn định c&ugrave;ng với vi&ecirc;n pin 5000mAh cho thời lượng suốt ng&agrave;y d&agrave;i. B&ecirc;n cạnh đ&oacute; điện thoại cũng sở hữu thiết kế thời trang v&agrave; ph&ugrave; hợp với xu hướng.</p>\r\n<h3><span>Thiết kế đơn giản, 4 phi&ecirc;n bản m&agrave;u, v&acirc;n tay cạnh b&ecirc;n</span></h3>\r\n<p>Galaxy A12 c&oacute; thiết kế đơn giản với bốn g&oacute;c cạnh được bo tr&ograve;n mềm mại c&ugrave;ng với hai cạnh b&ecirc;n được v&aacute;t cong nhẹ nh&agrave;ng tạo cảm gi&aacute;c cầm thoải m&aacute;i cho người d&ugrave;ng.</p>\r\n<p>B&ecirc;n cạnh đ&oacute; smartphone c&ograve;n được cho ra mắt với nhiều phi&ecirc;n bản m&agrave;u Đen, Trắng, Xanh thời trang để bạn c&oacute; thể lựa chọn m&agrave;u sắc y&ecirc;u th&iacute;ch.</p>', 1, '3950000', 'aaa94c8bfc.jpg'),
(25, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', '', '', '0', '', 6, 7, '<h2>Apple Watch SE 40mm - Sang trọng, đẳng cấp như bản cao cấp</h2>\r\n<p>Năm 2020, chắc hẳn c&aacute;c iFan đang h&aacute;o hức đ&oacute;n chờ c&aacute;c si&ecirc;u phẩm được ra mắt từ Apple. Đặc biệt Apple Watch SE 40mm&nbsp; GPS) l&agrave; một trong những phi&ecirc;n bản được Apple ra mắt v&agrave;o năm 2020 v&agrave; đang được nhiều người d&ugrave;ng quan t&acirc;m kh&ocirc;ng k&eacute;m g&igrave; phi&ecirc;n bản ch&iacute;nh thức cao cấp.</p>\r\n<h3>Thiết kế thời trang, m&agrave;n h&igrave;nh Retina LTPO OLED hiển thị chất lượng cao</h3>\r\n<p><a title=\"Đồng hồ Apple Watch ch&iacute;nh h&atilde;ng\" href=\"https://cellphones.com.vn/do-choi-cong-nghe/apple-watch.html\" target=\"_self\">Apple Watch</a>&nbsp;SE 40mm (GPS) c&oacute; thiết kế vừa năng động v&agrave; mang đậm t&iacute;nh thời trang rất giống với thế hệ trước đ&acirc;y m&agrave; nh&agrave; sản xuất Apple đ&atilde; thiết kế.</p>\r\n<p>Hơn thế, d&acirc;y đeo được l&agrave;m từ chất liệu silicon c&oacute; độ đ&agrave;n hồi cao gi&uacute;p người d&ugrave;ng c&oacute; thể đeo trong thời gian d&agrave;i m&agrave; kh&ocirc;ng bị đau tay. Với chất liệu n&agrave;y người d&ugrave;ng dễ d&agrave;ng vệ sinh v&agrave; hạn chế b&aacute;m bẩn v&agrave; mồ h&ocirc;i.</p>', 1, '8000000', '5cca03034d.jpg'),
(26, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', '', '', '0', '', 17, 15, '<p><span>Hi&ecirc;̣n nay router chắc chắn là m&ocirc;̣t trong những phụ ki&ecirc;̣n kh&ocirc;ng th&ecirc;̉ nào thi&ecirc;́u đ&ocirc;́i với người dùng c&ocirc;ng ngh&ecirc;̣ phải kh&ocirc;ng nào. Hãy chọn mua ngay Router Wifi Huawei AX3 băng tần k&eacute;p Ax3000 CPU 2 nh&acirc;n&nbsp;t&ocirc;́c đ&ocirc;̣ truy&ecirc;̀n tải nhanh chóng, nhỏ gọn sẽ là sự lựa chọn hoàn hảo cho bạn.</span></p>', 1, '1350000', '24af523530.png'),
(27, 'Samsung Galaxy A12', '', '', '0', '', 5, 6, '<h2><span>Điện thoại Samsung Galaxy A12 &ndash; Smartphone gi&aacute; rẻ cấu h&igrave;nh tốt v&agrave; pin tr&acirc;u</span></h2>\r\n<p><span>Samsung A12</span>&nbsp;l&agrave; một chiếc smartphone gi&aacute; rẻ nhưng sở hữu cấu h&igrave;nh ổn định c&ugrave;ng với vi&ecirc;n pin 5000mAh cho thời lượng suốt ng&agrave;y d&agrave;i. B&ecirc;n cạnh đ&oacute; điện thoại cũng sở hữu thiết kế thời trang v&agrave; ph&ugrave; hợp với xu hướng.</p>\r\n<h3><span>Thiết kế đơn giản, 4 phi&ecirc;n bản m&agrave;u, v&acirc;n tay cạnh b&ecirc;n</span></h3>\r\n<p>Galaxy A12 c&oacute; thiết kế đơn giản với bốn g&oacute;c cạnh được bo tr&ograve;n mềm mại c&ugrave;ng với hai cạnh b&ecirc;n được v&aacute;t cong nhẹ nh&agrave;ng tạo cảm gi&aacute;c cầm thoải m&aacute;i cho người d&ugrave;ng.</p>\r\n<p>B&ecirc;n cạnh đ&oacute; smartphone c&ograve;n được cho ra mắt với nhiều phi&ecirc;n bản m&agrave;u Đen, Trắng, Xanh thời trang để bạn c&oacute; thể lựa chọn m&agrave;u sắc y&ecirc;u th&iacute;ch.</p>', 1, '3950000', 'aaa94c8bfc.jpg'),
(28, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', '', '', '0', '', 6, 7, '<h2>Apple Watch SE 40mm - Sang trọng, đẳng cấp như bản cao cấp</h2>\r\n<p>Năm 2020, chắc hẳn c&aacute;c iFan đang h&aacute;o hức đ&oacute;n chờ c&aacute;c si&ecirc;u phẩm được ra mắt từ Apple. Đặc biệt Apple Watch SE 40mm&nbsp; GPS) l&agrave; một trong những phi&ecirc;n bản được Apple ra mắt v&agrave;o năm 2020 v&agrave; đang được nhiều người d&ugrave;ng quan t&acirc;m kh&ocirc;ng k&eacute;m g&igrave; phi&ecirc;n bản ch&iacute;nh thức cao cấp.</p>\r\n<h3>Thiết kế thời trang, m&agrave;n h&igrave;nh Retina LTPO OLED hiển thị chất lượng cao</h3>\r\n<p><a title=\"Đồng hồ Apple Watch ch&iacute;nh h&atilde;ng\" href=\"https://cellphones.com.vn/do-choi-cong-nghe/apple-watch.html\" target=\"_self\">Apple Watch</a>&nbsp;SE 40mm (GPS) c&oacute; thiết kế vừa năng động v&agrave; mang đậm t&iacute;nh thời trang rất giống với thế hệ trước đ&acirc;y m&agrave; nh&agrave; sản xuất Apple đ&atilde; thiết kế.</p>\r\n<p>Hơn thế, d&acirc;y đeo được l&agrave;m từ chất liệu silicon c&oacute; độ đ&agrave;n hồi cao gi&uacute;p người d&ugrave;ng c&oacute; thể đeo trong thời gian d&agrave;i m&agrave; kh&ocirc;ng bị đau tay. Với chất liệu n&agrave;y người d&ugrave;ng dễ d&agrave;ng vệ sinh v&agrave; hạn chế b&aacute;m bẩn v&agrave; mồ h&ocirc;i.</p>', 1, '8000000', '5cca03034d.jpg'),
(29, 'Điện thoại OPPO Reno7 5G (Chính hãng)', '', '', '0', '', 5, 9, '<p><span>OPPO Reno7 Z,&nbsp;OPPO Reno7&nbsp;sở hữu vẻ ngo&agrave;i v&ocirc; c&ugrave;ng thanh lịch nhưng cũng kh&ocirc;ng k&eacute;m phần thời thượng với c&aacute;c viền bo cong mềm mại, mặt lưng bo cong mềm mại đem đến cho người d&ugrave;ng cảm gi&aacute;c cầm nắm cực kỳ tốt.&nbsp;Nổi bật ở mặt sau l&agrave; cụm camera với 3 cảm biến được đặt trong m&ocirc; đun h&igrave;nh chữ nhật, hiệu ứng chuyển m&agrave;u theo g&oacute;c nh&igrave;n tr&ecirc;n mặt lưng kh&aacute; thu h&uacute;t gi&uacute;p cho trải nghiệm quan s&aacute;t trở n&ecirc;n th&uacute; vị hơn bao giờ hết.</span></p>', 0, '9000000', 'b322824b3e.jpg'),
(30, 'Điện thoại Xiaomi POCO X4 Pro 5G (Chính hãng DGW)', '', '', '0', '', 5, 16, '<p><span>M&aacute;y c&oacute; m&agrave;n h&igrave;nh k&iacute;ch thước 6.67 inches tần số qu&eacute;t 120Hz, hỗ trợ HDR10, Full HD+ (1080 x 2400 pixel)&nbsp;</span></p>', 1, '6750000', '362b649f4d.jpg'),
(31, 'Điện thoại Samsung Galaxy S10 5G  (8-256GB)', '', '', '0', '', 5, 6, '<p><span>Galaxy S10 5G được ra mắt sau c&ugrave;ng v&agrave; l&agrave; chiếc điện thoại \"Tr&ugrave;m cuối\" trong gia đ&igrave;nh S10 series. M&aacute;y được thừa hưởng thiết kế cực kỳ sang trọng với hai mặt lưng k&iacute;nh b&oacute;ng bẩy tr&ecirc;n khung viền kim loại c&ugrave;ng nhiều m&agrave;u sắc bắt mắt thu h&uacute;t mọi &aacute;nh nh&igrave;n.</span></p>', 0, '7300000', '1264088565.jpg'),
(32, 'MÁY HÚT BỤI CẦM TAY XIAOMI CLEANFLY-FVQ', '', '', '0', '', 19, 16, '<p><span>M&aacute;y h&uacute;t bụi cầm tay Xiaomi Cleanfly-FVQ chuy&ecirc;n d&ugrave;ng h&uacute;t bụi tr&ecirc;n &ocirc;t&ocirc; hoặc gia đ&igrave;nh độ ồn thấp.</span></p>', 1, '850000', '9084511da7.jpg'),
(34, 'ẤM ĐUN SIÊU TỐC BÁN CHẠY NHẤT 2018', '', '', '0', '', 19, 17, '<p><span>Ấm đun si&ecirc;u tốc Osako b&aacute;n chạy nhất kiểu d&aacute;ng hiện đại v&agrave; độc đ&aacute;o, đun nước rất nhanh, tiết kiệm thời gian</span></p>', 1, '250000', '4812d24043.jpg'),
(35, 'MÁY LỌC KHÔNG KHÍ THÔNG MINH XIAOMI', '', '', '0', '', 19, 16, '<p><span>M&aacute;y lọc kh&ocirc;ng kh&iacute;&nbsp;th&ocirc;ng minh Xiaomi 2s</span><span>&nbsp;c&oacute; kết nối WIFI với smartphone, nhiều cảm biến theo d&otilde;i m&ocirc;i trường như: chất lượng kh&ocirc;ng kh&iacute;, nhiệt độ, &aacute;nh s&aacute;ng, th&oacute;i quen..</span></p>', 1, '3200000', 'afe0ac9664.jpg'),
(36, 'Máy trộn thực phẩm Tiross TS5401', '', '', '0', '', 19, 17, '<p><span>T&ocirc; trộn được l&agrave;m từ chất liệu inox với dung t&iacute;ch 6 l&iacute;t, gi&uacute;p đ&aacute;nh được lượng bột, lượng trứng nhiều hơn.&nbsp;T&ocirc; trộn c&oacute; nắp đậy chống tr&agrave;n, chống văn bắn thực phẩm trong qu&aacute; tr&igrave;nh trộn.&nbsp;</span></p>', 1, '2790000', '6bddf72822.jpg'),
(37, 'Máy làm nóng lạnh nước uống Osaka KG-32N', '', '', '0', '', 19, 17, '<p><span>KG32N c&oacute; nhiệt độ nước n&oacute;ng từ 85 - 95 độ C, gi&uacute;p bạn c&oacute; thể pha sữa, pha m&igrave; t&ocirc;m, pha c&agrave; ph&ecirc; t&ugrave;y th&iacute;ch.&nbsp;B&igrave;nh nước n&oacute;ng l&agrave;m từ inox 304, an to&agrave;n tuyệt đối cho người sử dụng.</span></p>', 1, '2330000', '085ceb34d8.jpg'),
(38, 'Bộ điều khiển Tivi, Điều Hoà qua điện thoại, Hunonic IR Smart', '', '', '0', '', 16, 13, '<p><span>Hunonic Ir Smart&nbsp; sử dụng cơ chế điều khiển bằng hồng ngoại. Thiết bị chủ đạo trong giải ph&aacute;p điều khiển tivi, điều ho&agrave;,&hellip; từ xa</span></p>', 1, '240000', '1e1f06c684.jpg'),
(39, 'Khóa Cửa Zigbee Thông Minh Cao Cấp Điều Khiển Qua App Tuya SHP-DLZ3', '', '', '0', '', 16, 17, '<p><span>Kh&ocirc;ng cần phải mang theo ch&igrave;a kh&oacute;a khi ra ngo&agrave;i, mở kh&oacute;a bằng nhiều c&aacute;ch như v&acirc;n tay, thẻ từ, m&atilde; số, app điện thoại, ch&igrave;a kh&oacute;a cơ.</span></p>', 1, '3950000', '1623b2b151.webp'),
(40, 'Camera IP WiFi an ninh không dây lắp trong nhà HMCK-88', '', '', '0', '', 16, 15, '<p><span>Camera IP WiFi HM-CK-88&nbsp;l&agrave; chiếc camera xoay th&ocirc;ng minh gi&uacute;p bạn quan s&aacute;t mọi ng&oacute;c ng&aacute;ch trong căn ph&ograve;ng, h&igrave;nh ảnh quan s&aacute;t sắc n&eacute;t, r&otilde; r&agrave;ng cả ban ng&agrave;y v&agrave; ban đ&ecirc;m.&nbsp;</span></p>', 1, '2360000', 'cabfd3527b.jpg'),
(41, 'Bàn Là Ủi Hơi Nước Xiaomi Lofans YD-013', '', '', '0', '', 16, 16, '<p><span>Th&acirc;n m&aacute;y được l&agrave;m nhỏ gọn dễ d&agrave;ng cầm khi ủi m&agrave; kh&ocirc;ng sợ bị rơi. B&igrave;nh c&oacute; thể chứa lượng nước l&ecirc;n đến 190ml, gi&uacute;p cho chiếc b&agrave;n ủi c&oacute; thể ủi c&ugrave;ng l&uacute;c nhiều quần &aacute;o m&agrave; kh&ocirc;ng cần bận t&acirc;m đến việc hết nước như c&aacute;c chiếc b&agrave;n ủi hơi nước th&ocirc;ng thường.</span></p>', 1, '399000', '9cda83fc87.webp'),
(42, 'Điện thoại iPhone 13 Chính hãng VN/A (128GB, 256GB, 512GB)', '', '', '0', '', 5, 7, '<p><span>Con chip Apple A15 Bionic si&ecirc;u mạnh được sản xuất tr&ecirc;n tiến tr&igrave;nh 5 nm gi&uacute;p iPhone 13 đạt hiệu năng ấn tượng, với CPU nhanh hơn 50%, GPU nhanh hơn 30% so với c&aacute;c đối thủ trong c&ugrave;ng ph&acirc;n kh&uacute;c.</span></p>', 1, '22000000', '4cca5e017f.jpg'),
(43, 'Điện thoại iPhone 13 Pro Max Chính hãng VN/A (128GB, 256GB, 512GB)', '', '', '0', '', 5, 7, '<p><span>X&eacute;t về phong c&aacute;ch thiết kế, iPhone 13 Pro Max vẫn sở hữu khung viền vu&ocirc;ng vức bằng kim loại sang trọng tương tự như iPhone 12 Pro Max. Mặt lưng của m&aacute;y được ho&agrave;n thiện nh&aacute;m để tr&aacute;nh lưu lại v&acirc;n tay khi sử dụng.</span></p>', 0, '25300000', '5f54d2d1c3.jpg'),
(44, 'Điện thoại Honor 60 SE', '', '', '0', '', 5, 8, '<p><span>OLED, 120Hz, tỷ lệ 20:9</span><br /><span>6.67 inches, Full HD+ (1080 x 2400 pixels)</span><br /><span>Cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh</span></p>', 1, '7300000', '81e469d638.jpg'),
(45, 'Điện thoại Honor Magic 4 Pro', '', '', '0', '', 5, 8, '<p><span>LTPO OLED, 1 tỷ m&agrave;u, 120Hz, HDR10+, độ s&aacute;ng 1000 nits</span><br /><span>6.81 inches, Full HD+ (1312 x 2848 pixels)</span><br /><span>Aluminosilicate Glass</span></p>', 0, '27650000', '4d61d4ea29.jpg'),
(46, 'Điện thoại Honor 70 Pro', '', '', '0', '', 5, 8, '<p><span>OLED, 1 tỷ m&agrave;u, 120Hz</span><br /><span>6.78 inches, Full HD+ (1200 x 2652 pixels)</span></p>', 0, '29650000', '0ca7788d23.png'),
(47, 'Laptop MacBook Pro 14 M1 Max 2021', '', '', '0', '', 3, 18, '<p><span>Hệ điều h&agrave;nh&nbsp;</span><strong>Mac OS&nbsp;</strong><span>với&nbsp;giao diện m&aacute;y t&iacute;nh c&oacute; độ thẩm mỹ cao, hiện đại, thuận tiện mang lại cảm hứng l&agrave;m việc ngay mỗi khi bạn bật m&aacute;y l&ecirc;n, tiện thao t&aacute;c, dễ sử dụng v&agrave; kho ứng dụng đồ sộ.</span></p>', 1, '75650000', '25f0d3a9f5.jpg'),
(48, 'Laptop Apple MacBook Pro 14 M1 Pro 2021', '', '', '0', '', 3, 18, '<p><span>Tạo cảm hứng l&agrave;m việc ngay cho người d&ugrave;ng mỗi khi bật m&aacute;y l&ecirc;n nhờ hệ điều h&agrave;nh&nbsp;</span><strong>macOS&nbsp;</strong><span>cho</span><strong>&nbsp;</strong><span>giao diện m&aacute;y t&iacute;nh c&oacute; độ thẩm mỹ cao, thuận tiện thao t&aacute;c mở ứng dụng l&agrave;m việc, dễ sử dụng v&agrave; kho ứng dụng đồ sộ.</span></p>', 0, '65400000', 'e14521cef7.jpg'),
(49, 'Laptop Asus TUF Gaming FX506LH i5 10300H/8GB/512GB/4GB GTX1650/144Hz/Win11', '', '', '0', '', 3, 19, '<ul class=\"parameter__list 269241 active\">\r\n<li data-index=\"0\" data-prop=\"0\">\r\n<p class=\"lileft\">CPU:</p>\r\n<div class=\"liright\"><span class=\"comma\">i5</span><span class=\"comma\">10300H</span><span>2.5GHz</span></div>\r\n</li>\r\n<li data-index=\"0\" data-prop=\"0\">\r\n<p class=\"lileft\">RAM:</p>\r\n<div class=\"liright\"><span class=\"comma\">8 GB</span><span class=\"comma\">DDR4 2 khe (1 khe 8GB + 1 khe rời)</span><span>3200 MHz</span></div>\r\n</li>\r\n<li data-index=\"0\" data-prop=\"0\">\r\n<p class=\"lileft\">Ổ cứng:</p>\r\n<div class=\"liright\"><span>512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1TB)</span></div>\r\n</li>\r\n<li data-index=\"0\" data-prop=\"0\">\r\n<p class=\"lileft\">M&agrave;n h&igrave;nh:</p>\r\n<div class=\"liright\"><span class=\"comma\">15.6\"</span><span class=\"comma\">Full HD (1920 x 1080)</span><span>144Hz</span></div>\r\n</li>\r\n</ul>', 0, '17650000', 'dd7bb9ac9a.jpg'),
(50, 'Laptop Asus Gaming ROG Flow Z13 GZ301Z i7 12700H/16GB/512GB/4GB RTX3050/120Hz/Touch/Pen/Túi/Win11', '', '', '0', '', 0, 0, '<ul class=\"parameter__list 274539 active\">\r\n<li data-index=\"0\" data-prop=\"0\">\r\n<p class=\"lileft\">CPU:</p>\r\n<div class=\"liright\"><span class=\"comma\">i7</span><span class=\"comma\">12700H</span><span>2.30 GHz</span></div>\r\n</li>\r\n<li data-index=\"0\" data-prop=\"0\">\r\n<p class=\"lileft\">RAM:</p>\r\n<div class=\"liright\"><span class=\"comma\">16 GB</span><span class=\"comma\">LPDDR5&nbsp;(8GB On board + 8GB On board)</span><span>5200 MHz</span></div>\r\n</li>\r\n<li data-index=\"0\" data-prop=\"0\">\r\n<p class=\"lileft\">Ổ cứng:</p>\r\n<div class=\"liright\"><span>512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1TB)</span></div>\r\n</li>\r\n<li data-index=\"0\" data-prop=\"0\">\r\n<p class=\"lileft\">M&agrave;n h&igrave;nh:</p>\r\n<div class=\"liright\"><span class=\"comma\">13.4\"</span><span class=\"comma\">WUXGA (1920 x 1200)</span><span>120Hz</span></div>\r\n</li>\r\n</ul>', 0, '49999000', '0d046a9b0b.jpg'),
(51, 'Laptop Asus Gaming ROG Flow Z13 GZ301Z i7', '', '', '0', '', 3, 19, '<p>H&agrave;ng chất lượng cao</p>', 1, '49999000', 'b668f2916a.jpg'),
(52, 'điện thoại 2', '', '', '0', '', 5, 9, '<p>gi&aacute; tốt</p>', 0, '5656400', '400aa0abe2.jpg'),
(53, 'điện thoại 2', '', '', '0', '', 5, 9, '<p>gi&aacute; tốt</p>', 0, '5656400', '8cf63bc6f5.jpg'),
(54, 'sách;lll', '', '', '0', '', 16, 19, '<p>y</p>', 0, '9000000', '704b5e15d9.jfif');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2021-04-12 03:31:22'),
(2, 21, '10', '2021-03-31 17:00:00'),
(3, 21, '3', '2021-10-18 17:00:00'),
(4, 20, '5', '2022-06-02 03:21:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 3, 6, 'MÃ¡y tÃ­nh Dell A503', '10000000', 'dbb417a309.jpg'),
(4, 3, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', '32942e9470.jpg'),
(5, 6, 24, 'Samsung Galaxy A12', '3950000', 'aaa94c8bfc.jpg'),
(6, 6, 25, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', '8000000', '5cca03034d.jpg'),
(7, 7, 48, 'Laptop Apple MacBook Pro 14 M1 Pro 2021', '65400000', 'e14521cef7.jpg'),
(8, 9, 52, 'điện thoại 2', '5656400', '400aa0abe2.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
