-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2019 at 12:57 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electro_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `checkout` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `user_id`, `username`, `product_id`, `product_name`, `img`, `price`, `quantity`, `total`, `date`, `checkout`) VALUES
(1, 1, 'Bhagyashree', 21, 'LG 260 L 4 Star Frost Free Double Door ', 'lg1.jpg', 27499, 2, 55098, '14/09/19', 'y'),
(2, 1, 'Bhagyashree', 31, 'Canon EOS 1500D 24.1 Digital SLR Camera (Black)', 'c1.jpg', 24990, 2, 50130, '16/09/19', 'y'),
(4, 1, 'Bhagyashree', 8, 'Micromax 109 cm (43 inches) L43Z0666FHD Full HD LE', 'Micr_TV2.jpg', 16990, 2, 34280, '16/09/19', 'y'),
(5, 2, 'Ankita', 8, 'Micromax 109 cm (43 inches) L43Z0666FHD Full HD LE', 'Micr_TV2.jpg', 16990, 2, 34280, '16/09/19', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `description`) VALUES
(1, 'Television', 'Get smart television. Discover millions of results here.'),
(2, 'Mobile', 'Shop for Android, iOS, Dual-SIM mobiles & More. Top Brands. Great Offers. Low Prices. Huge Selection'),
(3, 'Refrigerators', 'Find Instant Quality Results Now! Get  Refrigerator Filters. Find Related Results Now.'),
(4, 'Camera', 'Buy DSLR, Instant Cameras & more from top brands'),
(5, 'Laptops', 'Attractive Discounts on Desktops, Monitors, Mice &amp; More brand. Exciting deals on laptops.'),
(6, 'Headphones & Speakers', 'Get the best offers on headphones, explore speakers, home theatre systems .');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `img` varchar(500) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `landmark` varchar(300) NOT NULL,
  `city` varchar(50) NOT NULL,
  `add_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `user_id`, `username`, `product_id`, `product_name`, `img`, `price`, `qty`, `total`, `mobile_no`, `landmark`, `city`, `add_type`, `status`, `date`) VALUES
(1, 1, 'Bhagyashree', 21, 'LG 260 L 4 Star Frost Free Double Door ', 'lg1.jpg', '27499', '2', '55098', '7485967182', 'near talathi office', 'satara', 'Home', 'Deliver', '14/09/19'),
(2, 1, 'Bhagyashree', 31, 'Canon EOS 1500D 24.1 Digital SLR Camera (Black)', 'c1.jpg', '24990', '2', '50130', '9652748596', 'mandir', 'wai', 'Home', 'Deliver', '15/09/19'),
(3, 1, 'Bhagyashree', 8, 'Micromax 109 cm (43 inches) L43Z0666FHD Full HD LE', 'Micr_TV2.jpg', '16990', '2', '34280', '7485157435', 'near rivers', 'satara', 'Home', 'Deliver', '16/09/19'),
(4, 2, 'Ankita', 8, 'Micromax 109 cm (43 inches) L43Z0666FHD Full HD LE', 'Micr_TV2.jpg', '16990', '2', '34280', '7485963652', 'near krushna river', 'wai', 'Home', 'Pending', '16/09/19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `subcategory` varchar(50) NOT NULL,
  `selling` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `after_discount` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `availability` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `category`, `subcategory`, `selling`, `discount`, `after_discount`, `description`, `shipping`, `availability`, `photo`) VALUES
(1, 'Sony Bravia 123.2 cm (49 Inches) 4K UHD LED Smart ', 'Television', 'SONY-TV', '84900', '21', '66990', 'Resolution : 4K Ultra HD (3840x2160p)\r\nDisplay: 4K HDR | 4K X-Reality Pro | Motionflow XR\r\nSmart TV Features: Built-in WiFi | Linux Based OS | Youtube Direct | Opera Store | Netflix |\r\nConnectivity: 3 HDMI ports to connect set top box, Blu Ray players, gaming console | 3 USB ports to connect hard drives and other USB devices\r\nSound : 20 Watts Output | Clear Audio+\r\nInstallation: For installation/wall mounting/demo of this product once delivered, directly contact Sony at 18001037799 and provide p', '300', 'yes', 'sony_TV1.jpg'),
(2, 'Sony 80 cm (32 Inches) HD Ready LED TV KLV-32R202F', 'Television', 'SONY-TV', '25900', '31', '17999', 'Resolution: HD Ready (1366x768p) | Refresh Rate: 50 hertz\r\nDisplay: Clear Resolution Enhancer\r\nConnectivity: 2 HDMI ports to connect set top box, Blu Ray players, gaming console | 1 USB port to connect hard drives and other USB devices\r\nSound: 20 Watts Output, SPEAKER TYPE: Open Baffle Speaker\r\nInstallation: For installation/wall mounting/demo of this product once delivered, directly contact Sony at 18001037799 and provide product\'s model name and seller\'s details mentioned on your invoice. The ', '300', 'yes', 'sony_TV2.jpg'),
(3, 'Samsung 80 cm (32 Inches) Series 4 HD Ready LED TV', 'Television', 'Samsung-TV', '25900', '46', '13999', 'Resolution: HD Ready (1366x768) | Refresh Rate: 60 hertz\r\nConnectivity: 2 HDMI ports to connect set top box, Blu Ray players, gaming console | 1 USB ports to connect hard drives and other USB devices\r\nSound : 20 W output, Screen Capture and Sound Capture\r\nDisplay : LED Panel | Wide Colour Enhancer | HD Picture Quality\r\nWarranty Information: 1 year comprehensive and 1 year additional warranty on Panel by Samsung\r\nInstallation: For requesting installation/wall mounting/demo of this product once de', '300', 'yes', 'sams-TV1.jpg'),
(4, 'Samsung 108 cm (43 Inches) Super 6 Series 4K UHD L', 'Television', 'Samsung-TV', '66900', '43', '37999', 'Resolution: 4K UHD (3840x2160) | Refresh Rate: 60 hertz\r\nConnectivity: 2 HDMI ports to connect set top box, Blu Ray players, gaming console | 1 USB port to connect hard drives and other USB devices\r\nSound : 20 W output\r\nDisplay : Real 4K UHD |Slim and stylish design\r\nUniversal guide : It shows you popular shows and content, it recommends content specifically to your viewing preference by analysing your viewing pattern over the past few months\r\nWarranty: 1 year comprehensive plus 1 year additiona', '300', 'yes', 'sams_TV2.jpg'),
(5, 'Mi LED TV 4A PRO 108 cm (43) Full HD Android TV ', 'Television', 'MI-TV', '25999', '15', '21999', 'Resolution : Full HD (1920x1080p) | Refresh Rate: 60 hertz\r\nConnectivity: 3 HDMI ports to connect set top box, Blu Ray players, gaming console | 3 USB ports to connect hard drives and other USB devices\r\nSound: 20 W output | DTS-HD sound\r\nSmart TV features : | PatchWall with Android TV and Set-Top Box Integration | Chromecast built-in | 700,000+ hrs of Content | Mi Remote with Google voice search | Content across 15 languages | Play Store, YouTube, Play Movies, Play Music | Hotstar, Voot, Sony LI', '300', 'yes', 'MI_TV1.jpg'),
(6, 'Mi LED TV 4 PRO 138.88 cm (55) Ultra HD Android TV', 'Television', 'MI-TV', '54999', '13', '47999', 'Resolution: 4K Ultra HD (3840x2160p) | Refresh Rate: 60 hertz\r\nConnectivity: 3 HDMI ports to connect set top box, Blu Ray players | gaming console, 2 USB ports to connect hard drives and other USB devices\r\nSound: 16 W Output | Dolby + DTS-HD\r\nSmart TV features : | PatchWall with Android TV and Set-Top Box Integration | Chromecast built-in | 700,000+ hrs of Content | Mi Remote with Google voice search | Content across 15 languages | Play Store, YouTube, Play Movies, Play Music | Hotstar, Voot, So', '300', 'yes', 'MI_TV2.jpg'),
(7, 'Micromax 101 cm (40 Inches) Full HD LED Smart TV 4', 'Television', 'Micromax-TV', '39990', '38', '24990', 'Full HD (Resolution: 1920 x 1080), Refresh Rate: 170 hertz\r\nConnectivity - Input: 2 HDMI, 1 VGA\r\nPower supply: 100 to 240V\r\nPower Consumption: less than or equal to 0.5W\r\ndemo of this product once delivered and provide product\'s model name as well as seller\'s details mentioned on the invoice\r\nMSD 628 Quad Core A7 Cortex (1 GHz) processor | Miracast screen monitoring technology\r\nWarranty : 1 year standard warranty from Micromax from the date of purchase', '300', 'yes', 'Micr_TV1.jpg'),
(8, 'Micromax 109 cm (43 inches) L43Z0666FHD Full HD LE', 'Television', 'Micromax-TV', '42990', '60', '16990', 'Resolution: Full HD (1920x1080) | Refresh Rate: 60 hertz\r\nConnectivity: 2 HDMI ports to connect set top box, Blu Ray players gaming console | 2 USB ports to connect hard drives and other USB devices | 1 VGA Port to connect your laptop\r\nSound : 20 W output | Surround sound\r\nWarranty Information: 1 year warranty provided by the manufacturer from date of purchase\r\nInstallation: For requesting installation/wall mounting/demo of this product once delivered, please directly call Micromax support on 01', '300', 'yes', 'Micr_TV2.jpg'),
(9, 'Panasonic 100 cm (40 inches) TH-40F200DX Full HD L', 'Television', 'Panasonic-TV', '41900', '43', '23987', 'Dot Noise Reduction\r\nFull HD (Resolution: 1920 x 1080p), Refresh Rate: 60 hertz;Connectivity - Input: 3*HDMI, 2*USB, ;Audio: 16 W output;Warranty Information\r\n1 year warranty provided by the manufacturer from date of purchase;Installation: For requesting installation/wall mounting/demo of this product once delivered, please directly call Pansonic support on 1800-108-1333 and provide product\'s model name as well as seller\'s details mentioned on the invoice', '300', 'yes', 'Pan_TV1.jpg'),
(10, 'Panasonic 138 cm (55 Inches) 4K UHD LED Smart TV T', 'Television', 'Panasonic-TV', '129900', '54', '59999', 'Resolution: 4K UHD (3840 x 2160p) | Refresh Rate: 60 hertz\r\nDisplay: IPS display | HDR Support | Wide Viewing Angle | Hexa Chroma drive | 6-Color Reproduction | 1500Hz Backlight Motion Rate; Power Supply : 110 - 240 V\r\nSmart TV Features: Built-in WiFi | My Home Screen 3.0 | Swipe & Share | Easy Mirroring | Voice Interaction\r\nConnectivity: 2 HDMI ports to connect set top box, Blu Ray players, gaming console | 1 USB ports to connect hard drives and other USB devices\r\nSound output: 20 Watts Output ', '300', 'yes', 'Pan_TV2.jpg'),
(11, 'OPPO K3(Aurora Blue, 6GB RAM, 64GB Storage)', 'Mobile', 'oppo-Mobile', '24990', '32', '16990', '16MP+2MP dual rear camera with AI wisdom beauty, front HDR, facial recognition, front portrait style | 16MP front camera\r\n16.51 centimeters (6.5-inch) full screen AMOLED display with 2340 x 1080 pixels resolution, 394 ppi pixel density and 16M color support\r\nMemory, Storage & SIM: 6GB RAM, 64GB internal memory | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid ColorOS v6.0 operating system with 2.2GHz Snapdragon 710 octa core processor, Adreno 616\r\n3765mAH lithium-polymer\r\n1 year manufacturer ', '100', 'yes', 'oppo_1.jpg'),
(12, 'OPPO A5S (Green, 4GB RAM, 64GB Storage,dual sim)', 'Mobile', 'oppo-Mobile', '15990', '25', '11990', '13MP+2MP dual rear camera with AI face beauty, gender detection, AR sticker, face beauty video, camera filter, HDR | 8MP front camera\r\n15.748 centimeters (6.2-inch) HD+ IPS capacitive multi touch screen with 1520 x 720 pixels resolution, 270 ppi pixel density | 16M color support\r\nMemory, Storage & SIM: 4GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid v8.1 Oreo based on Color OS 5.1 operating system with 2.4GHz Mediatek 6765 octa core proc', '100', 'yes', 'oppo_2.jpg'),
(13, 'Samsung Galaxy M30 (Gradation Blue)', 'Mobile', 'Samsung-Mobile', '16490', '25', '13990', '13+5+5MP Triple rear camera with f1.9 aperture, 2.2 wide angle, 2.2 flash | 16MP front camera with f2.0 aperture\r\n16.21 centimeters (6.4-inch) FHD+ multi-touch capacitive touchscreen with 2340 x 1080 pixels resolution and 16M color support\r\nMemory, Storage and SIM: 4GB RAM | 64GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid Oreo v8.1 operating system with 1.8GHz Exynos 7904 octa core processor\r\n5000mAH lithium-ion battery with 3x fast charge | 15W T', '100', 'yes', 'sam_1.jpg'),
(14, 'Samsung Galaxy A50 (Blue, 4GB RAM, 64GB)', 'Mobile', 'Samsung-Mobile', '21000', '12', '18490', '25MP + 5MP + 8MP with F1.7, F2.2 wide Angle and F2.2 with Flash | 25 MP front camers with F2.0\r\n16.21 centimeters (6.4-inch) FHD+ multi-touch capacitive touchscreen with 2340 x 1080 pixels resolution and 16M color support\r\nMemory, Storage and SIM: 4GB RAM | 64GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid Pie V9.0 operating system with 2.29 Ghz Exynos 9610 Octa Core Processor\r\n4000mAH lithium-ion battery with Type-C fast charging | 15W Charger in t', '100', 'yes', 'sam_2.jpg'),
(15, 'Mi A2 (Red, 4GB RAM, 64GB Storage)', 'Mobile', 'MI-Mobile', '17499', '43', '9999', '12MP+20MP dual rear camera and 20MP front facing camera\r\n15.21 centimeters (5.99-inch) with 2160 x 1080 pixels resolution, 403 ppi pixel density\r\nMemory, Storage & SIM: 4GB RAM | 64GB storage | Dual nano SIM with dual standby (4G+4G)\r\nAndroid v8.1 Oreo operating system with 2.2GHz Qualcomm Snapdragon 660 octa core processor, Adreno 512 GPU\r\n3010mAH lithium-ion battery, Quick Charging 4.0, USB Type-C port, Removable battery: No\r\n1 year manufacturer warranty for device and 6 months manufacturer wa', '100', 'yes', 'mi_1.jpg'),
(16, 'Redmi 6 Pro (Black, 3GB RAM, 32GB Storage)', 'Mobile', 'MI-Mobile', '11499', '30', '7999', '12MP+5MP dual rear camera | 5MP front facing camera\r\n14.833 centimeters (5.84-inch) capacitive touchscreen with 2280 x 1080 pixels resolution, 432 ppi pixel density\r\nMemory, Storage & SIM: 3GB RAM | 32GB storage expandable up to 256GB with dedicated slot | Dual nano SIM with dual standby (4G+4G)\r\nAndroid v8.1 Oreo operating system with 2GHz Qualcomm Snapdragon 625 octa core processor, Adreno 506 GPU\r\n4000 lithium-polymer battery\r\n1 year manufacturer warranty for device and 6 months manufacturer ', '100', 'yes', 'mi2.jpg'),
(17, 'Vivo Y91i (Ocean Blue, 2GB RAM, 32GB)', 'Mobile', 'Vivo-Mobile', '9990', '20', '7990', '13MP rear camera | 5MP front camera\r\n15.80 centimeters (6.22-inch) multi-touch capacitive touchscreen with 1520 x 720 pixels resolution\r\nMemory, Storage & SIM: 2GB RAM | 32GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid Oreo v8.1 operating system with Helio P22 octa core processor\r\n4030mAH lithium-ion battery\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purcha', '100', 'yes', 'vivo1.jpg'),
(18, 'Vivo V15 (Aqua Blue, 6GB RAM, 64GB)', 'Mobile', 'Vivo-Mobile', '26990', '26', '19990', '12MP (24 million photosensitive Units) + 8MP + 5MP AI Triple rear camera and 32MP front facing camera\r\n16.59 centimeters (6.53-inch) with 2340 x 1080 pixels resolution\r\nMemory, Storage & SIM: 6GB RAM | 64GB storage expandable up to 256GB| Dual SIM with dual standby (4G+4G)\r\nAndroid v9 Pie operating system with MediaTek P70 octa core processor\r\n4000mAH lithium-ion battery\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from th', '100', 'yes', 'vi2.jpg'),
(19, 'Nokia 6.1 Plus (Blue, 6GB RAM, 64GB Storage)', 'Mobile', 'Nokia-Mobile', '20499', '49', '10999', '16MP+5MP rear camera | 16MP front facing camera\r\n14.732 centimeters (5.8-inch) with 1080 x 2280 pixels resolution\r\nMemory, Storage and SIM: 6GB RAM | 64GB internal memory | Expandable to 400 GB |Dual SIM dual-standby (4G+4G)\r\nAndroid v8 Oreo operating system with Qualcomm Snapdragon SD 636 quad core processor\r\n3060mAH lithium-ion battery\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase\r\nBox includes: ', '100', 'yes', 'no1.jpg'),
(20, 'Nokia 6.1 (Blue-Gold, 4GB RAM, 64GB Storage)', 'Mobile', 'Nokia-Mobile', '16990', '44', '9590', '16MP rear camera | 8MP front camera\r\n13.9 centimeters (5.5-inch) with 1920 x 1080 pixels resolution | 2.5D corning gorilla glass\r\nMemory, Storage and SIM: 4GB RAM | 64GB internal memory expandable up to 128GB | Dual SIM dual-standby (4G+4G)\r\nAndroid v8.0 Oreo operating system with 1.3GHz Qualcomm Snapdragon 630 octa core processor\r\n3000mAH lithium-ion battery providing talk-time of 20 hours and standby time of 648 hours\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty ', '100', 'yes', 'no2.jpg'),
(21, 'LG 260 L 4 Star Frost Free Double Door ', 'Refrigerators', 'LG-Refrigerator', '34990', '21', '27499', 'Frost Free, Double Door: Auto defrost to stop ice-build up\r\nCapacity 260 L: Suitable for families with 2-3 members\r\nWarranty: 1 year on product, 10 years on compressor\r\nEnergy Rating: 4 Star\r\nInverter Compressor â€“ Energy efficient, less noise & more durable\r\nShelf Type: Toughened Glass\r\nAlso included in the box: User manual, Warranty card', '500', 'yes', 'lg1.jpg'),
(22, 'LG 190 L 4 Star Direct Cool Single Door ', 'Refrigerators', 'LG-Refrigerator', '17690', '18', '14490', 'Direct Cool, Single Door: Economical requires manual defrosting\r\nCapacity 190 L: Suitable for families with 2-3 members\r\nWarranty: 1 year on product, 10 years on compressor\r\nEnergy Rating: 4 Star\r\nSmart Inverter Compressor â€“ Energy efficient, less noise & more durable\r\nShelf Type: Toughened Glass\r\nAlso included in the box: User manual, Warranty card', '500', 'yes', 'lg2.jpg'),
(23, 'Whirlpool 190 L 3 Star Direct Cool Single Door ', 'Refrigerators', 'Whirlpool-Refrigerator', '14650', '22', '11490', 'Direct Cool, Single Door: Economical requires manual defrosting\r\nCapacity 190 L: Suitable for families with 2-3 members\r\nWarranty: 1 year on product, 5 years on compressor\r\nEnergy Rating: 3 Star\r\nShelf Type: Toughened Glass\r\nAlso included in the box: User manual, Warranty card', '500', 'yes', 'w1.jpg'),
(24, 'Whirlpool 260 L Frost Free Multi-Door', 'Refrigerators', 'Whirlpool-Refrigerator', '31650', '22', '24620', 'Frost Free, Multi-Door: Auto defrost to stop ice-build up\r\nCapacity 260 L: Suitable for families with 2-3 members\r\nWarranty: 1 year on product, 10 years on compressor\r\nShelf Type: Toughened Glass\r\nAlso included in the box: User manual, Warranty card', '500', 'yes', 'w2.jpg'),
(25, 'Samsung 230 L 3 Star Inverter', 'Refrigerators', 'Samsung-Refrigerator', '20890', '16', '17590', 'Direct-cool refrigerator; 230 litres capacity\r\nEnergy Rating: 3 Star\r\nWarranty: 1 year on product, 10 years on compressor\r\nDirect cool, single door: Economical requires manual defrosting\r\nCapacity 192 L: Suitable for families with 2-3 members\r\nShelf Type: Toughened Glass\r\nInverter compressor: Energy efficient, less noise and more durable', '500', 'yes', 's1.jpg'),
(26, 'Samsung 465 L 4 Star Frost Free Double Door ', 'Refrigerators', 'Samsung-Refrigerator', '69000', '20', '55400', 'Frost Free, Double Door: Auto defrost to stop ice-build up\r\nCapacity 465 L: Suitable for families with 5 or more members\r\nWarranty: 1 year on product, 10 years on compressor\r\nEnergy Rating: 4 Star\r\nInverter Compressor â€“ Energy efficient, less noise & more durable\r\nShelf Type: Toughened Glass\r\nAlso included in the box: User manual, Warranty card\r\n', '500', 'yes', 's2.jpg'),
(27, 'Godrej 225 L 4 Star Direct Cool Single Door ', 'Refrigerators', 'Godrej-Refrigerator', '24900', '14', '21490', 'Direct Cool, Single Door: Economical requires manual defrosting\r\nCapacity 225 L: Suitable for families with 2-3 members\r\nWarranty: 1 year on product, 10 years on compressor\r\nEnergy Rating: 4 Star\r\nInverter Compressor â€“ Energy efficient, less noise & more durable\r\nShelf Type: Toughened Glass; Base Stand with Drawer\r\nAlso included in the box: User manual, Warranty card', '500', 'yes', 'g1.jpg'),
(28, 'Godrej 330 L 2 Star Frost Free Double Door ', 'Refrigerators', 'Godrej-Refrigerator', '35200', '32', '23990', 'Frost Free, Double Door: Auto defrost to stop ice-build up\r\nCapacity 330 L: Suitable for families with 3-4 members\r\nWarranty: 1 year on product, 10 years on compressor\r\nEnergy Rating: 2 Star ; Net Dimensions (H*W*D)cm: 174.5*60*70.6 ; Stabilizer Required: No ; Volatge (AC) and Frequency: 230V, 50Hz, Input Power: 155W\r\nShelf Type: Toughened Glass\r\nAlso included in the box: User manual, Warranty card', '500', 'yes', 'g2.jpg'),
(29, 'Haier 320 L 3 Star Frost Free Double Door', 'Refrigerators', 'Haier-Refrigerator', '40300', '33', '26850', 'Frost Free, Double Door: Auto defrost to stop ice-build up , 1HIT(1 Hour Icing Technology) Freshness Solution available , Frequency:50Hz\r\nCapacity 320 L: Suitable for families with 3-4 members\r\nWarranty: 1 year on product, 10 years on compressor\r\nEnergy Rating: 3 Star; Climate Class:T=18 43Â°C\r\nShelf Type: Toughened Glass\r\nAlso included in the box: User manual, Warranty card', '500', 'yes', 'h1.jpg'),
(30, 'Haier 220 L 4 Star Direct Cool Single Door ', 'Refrigerators', 'Haier-Refrigerator', '25100', '31', '17400', 'Direct-cool refrigerator; 220 litres capacity\r\nEnergy Rating: 4 Star\r\nWarranty: 1 year on product, 10 years on compressor\r\n4 Star\r\n1HIT\r\n10 Years Warranty\r\nBase Stand\r\nMirror Glass', '500', 'yes', 'h2.jpg'),
(31, 'Canon EOS 1500D 24.1 Digital SLR Camera (Black)', 'Camera', 'Cannon-Camera', '34995', '29', '24990', 'Sensor: APS-C CMOS Sensor with 24.1 MP (high resolution for large prints and image cropping)\r\nISO: 100-6400 sensitivity range (critical for obtaining grain-free pictures, especially in low light)\r\nImage Processor: DIGIC 4+ with 9 autofocus points (important for speed and accuracy of autofocus and burst photography)\r\nVideo Resolution: Full HD video with fully manual control and selectable frame rates (great for precision and high-quality video work)\r\nConnectivity: WiFi, NFC and Bluetooth built-in', '150', 'yes', 'c1.jpg'),
(32, 'Canon PowerShot SX540HS 20.3MP Digital Camera', 'Camera', 'Cannon-Camera', '20995', '12', '18450', 'Canon PowerShot SX540HS 20.3MP Digital Camera with 50x Optical Zoom (Black) + Memory Card + Camera Case', '150', 'yes', 'c2.jpg'),
(33, 'Nikon D3500 W/AF-P DX Nikkor 18-55mm f/3.5-5.6G VR', 'Camera', 'Nikkon-Camera', '36250', '14', '31000', 'Sensor: APS-C CMOS Sensor with 24.2 MP (high resolution for large prints and image cropping)\r\nISO: 100-25600 sensitivity range (critical for obtaining grain-free pictures, especially in low light)\r\nImage Processor: Expeed 4 with 11 autofocus points (important for speed and accuracy of autofocus and burst photography)\r\nVideo Resolution: Full HD video with fully manual control and selectable frame rates (great for precision and high-quality video work)\r\nConnectivity: WiFi, NFC and Bluetooth built-', '150', 'yes', 'n1.jpg'),
(34, 'Nikon D3500 DX-Format DSLR Two Lens Kit with AF-P ', 'Camera', 'Nikkon-Camera', '539950', '31', '36999', 'Sensor: APS-C CMOS Sensor with 24.2 MP (high resolution for large prints and image cropping)\r\nISO: 100-25600 sensitivity range (critical for obtaining grain-free pictures, especially in low light)\r\nImage Processor: Expeed 4 with 11 autofocus points (important for speed and accuracy of autofocus and burst photography)\r\nVideo Resolution: Full HD video with fully manual control and selectable frame rates (great for precision and high-quality video work)\r\nConnectivity: WiFi, NFC and Bluetooth built-', '150', 'yes', 'n2.jpg'),
(35, 'Sony Compact DSC-RX100M5A Advanced Digital 4K ', 'Camera', 'Sony-Camera', '75990', '18', '61995', 'Exmor RS 1.0 type stacked CMOS sensor with DRAM chip and approx. 20.1 effective megapixels\r\nAdvanced BIONZ X image processing engine with front end LSI\r\nZEISS Vario-Sonnar T F1.8-2.8 large-aperture lens and optimized image processing system\r\nFast Hybrid AF when shooting movies\r\n315-point focal-plane phase-detection AF sensor gives wide coverage area\r\nSilent and vibration-free shooting\r\nXGA OLED Tru-Finder with 100% frame coverage', '150', 'yes', 'so1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product1`
--

CREATE TABLE `tbl_product1` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `subcategory` varchar(50) NOT NULL,
  `selling` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `after_discount` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `shipping` varchar(50) NOT NULL,
  `availability` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product1`
--

INSERT INTO `tbl_product1` (`id`, `name`, `category`, `subcategory`, `selling`, `discount`, `after_discount`, `description`, `shipping`, `availability`, `photo`) VALUES
(1, 'Sony Bravia 123.2 cm (49 Inches) 4K UHD LED Smart ', 'Television', 'SONY-TV', '84900', '21', '66990', 'Resolution : 4K Ultra HD (3840x2160p)\r\nDisplay: 4K HDR | 4K X-Reality Pro | Motionflow XR\r\nSmart TV Features: Built-in WiFi | Linux Based OS | Youtube Direct | Opera Store | Netflix |\r\nConnectivity: 3 HDMI ports to connect set top box, Blu Ray players, gaming console | 3 USB ports to connect hard drives and other USB devices\r\nSound : 20 Watts Output | Clear Audio+\r\nInstallation: For installation/wall mounting/demo of this product once delivered, directly contact Sony at 18001037799 and provide p', '100', 'yes', 'sony_TV1.jpg'),
(2, 'Sony 80 cm (32 Inches) HD Ready LED TV KLV-32R202F', 'Television', 'SONY-TV', '25900', '31', '17999', 'Resolution: HD Ready (1366x768p) | Refresh Rate: 50 hertz\r\nDisplay: Clear Resolution Enhancer\r\nConnectivity: 2 HDMI ports to connect set top box, Blu Ray players, gaming console | 1 USB port to connect hard drives and other USB devices\r\nSound: 20 Watts Output, SPEAKER TYPE: Open Baffle Speaker\r\nInstallation: For installation/wall mounting/demo of this product once delivered, directly contact Sony at 18001037799 and provide product\'s model name and seller\'s details mentioned on your invoice. The ', '100', 'yes', 'sony_TV2.jpg'),
(3, 'Samsung 80 cm (32 Inches) Series 4 HD Ready LED TV', 'Television', 'Samsung-TV', '25900', '46', '13999', 'Resolution: HD Ready (1366x768) | Refresh Rate: 60 hertz\r\nConnectivity: 2 HDMI ports to connect set top box, Blu Ray players, gaming console | 1 USB ports to connect hard drives and other USB devices\r\nSound : 20 W output, Screen Capture and Sound Capture\r\nDisplay : LED Panel | Wide Colour Enhancer | HD Picture Quality\r\nWarranty Information: 1 year comprehensive and 1 year additional warranty on Panel by Samsung\r\nInstallation: For requesting installation/wall mounting/demo of this product once de', '100', 'yes', 'sams-TV1.jpg'),
(4, 'Samsung 108 cm (43 Inches) Super 6 Series 4K UHD L', 'Television', 'Samsung-TV', '66900', '43', '37999', 'Resolution: 4K UHD (3840x2160) | Refresh Rate: 60 hertz\r\nConnectivity: 2 HDMI ports to connect set top box, Blu Ray players, gaming console | 1 USB port to connect hard drives and other USB devices\r\nSound : 20 W output\r\nDisplay : Real 4K UHD |Slim and stylish design\r\nUniversal guide : It shows you popular shows and content, it recommends content specifically to your viewing preference by analysing your viewing pattern over the past few months\r\nWarranty: 1 year comprehensive plus 1 year additiona', '100', 'yes', 'sams_TV2.jpg'),
(5, 'Mi LED TV 4A PRO 108 cm (43) Full HD Android TV (B', 'Television', 'MI-TV', '25999', '15', '21999', 'Resolution : Full HD (1920x1080p) | Refresh Rate: 60 hertz\r\nConnectivity: 3 HDMI ports to connect set top box, Blu Ray players, gaming console | 3 USB ports to connect hard drives and other USB devices\r\nSound: 20 W output | DTS-HD sound\r\nSmart TV features : | PatchWall with Android TV and Set-Top Box Integration | Chromecast built-in | 700,000+ hrs of Content | Mi Remote with Google voice search | Content across 15 languages | Play Store, YouTube, Play Movies, Play Music | Hotstar, Voot, Sony LI', '100', 'yes', 'MI_TV1.jpg'),
(6, 'Mi LED TV 4 PRO 138.88 cm (55) Ultra HD Android TV', 'Television', 'MI-TV', '54999', '13', '47999', 'Resolution: 4K Ultra HD (3840x2160p) | Refresh Rate: 60 hertz\r\nConnectivity: 3 HDMI ports to connect set top box, Blu Ray players | gaming console, 2 USB ports to connect hard drives and other USB devices\r\nSound: 16 W Output | Dolby + DTS-HD\r\nSmart TV features : | PatchWall with Android TV and Set-Top Box Integration | Chromecast built-in | 700,000+ hrs of Content | Mi Remote with Google voice search | Content across 15 languages | Play Store, YouTube, Play Movies, Play Music | Hotstar, Voot, So', '100', 'yes', 'MI_TV2.jpg'),
(7, 'Micromax 101 cm (40 Inches) Full HD LED Smart TV 4', 'Television', 'Micromax-TV', '39990', '38', '24990', 'Full HD (Resolution: 1920 x 1080), Refresh Rate: 170 hertz\r\nConnectivity - Input: 2 HDMI, 1 VGA\r\nPower supply: 100 to 240V\r\nPower Consumption: less than or equal to 0.5W\r\ndemo of this product once delivered and provide product\'s model name as well as seller\'s details mentioned on the invoice\r\nMSD 628 Quad Core A7 Cortex (1 GHz) processor | Miracast screen monitoring technology\r\nWarranty : 1 year standard warranty from Micromax from the date of purchase', '100', 'yes', 'Micr_TV1.jpg'),
(8, 'Micromax 109 cm (43 inches) L43Z0666FHD Full HD LE', 'Television', 'Micromax-TV', '42990', '60', '16990', 'Resolution: Full HD (1920x1080) | Refresh Rate: 60 hertz\r\nConnectivity: 2 HDMI ports to connect set top box, Blu Ray players gaming console | 2 USB ports to connect hard drives and other USB devices | 1 VGA Port to connect your laptop\r\nSound : 20 W output | Surround sound\r\nWarranty Information: 1 year warranty provided by the manufacturer from date of purchase\r\nInstallation: For requesting installation/wall mounting/demo of this product once delivered, please directly call Micromax support on 01', '100', 'yes', 'Micr_TV2.jpg'),
(9, 'Panasonic 100 cm (40 inches) TH-40F200DX Full HD L', 'Television', 'Panasonic-TV', '41900', '43', '23987', 'Dot Noise Reduction\r\nFull HD (Resolution: 1920 x 1080p), Refresh Rate: 60 hertz;Connectivity - Input: 3*HDMI, 2*USB, ;Audio: 16 W output;Warranty Information\r\n1 year warranty provided by the manufacturer from date of purchase;Installation: For requesting installation/wall mounting/demo of this product once delivered, please directly call Pansonic support on 1800-108-1333 and provide product\'s model name as well as seller\'s details mentioned on the invoice', '100', 'yes', 'Pan_TV1.jpg'),
(10, 'Panasonic 138 cm (55 Inches) 4K UHD LED Smart TV T', 'Television', 'Panasonic-TV', '129900', '54', '59999', 'Resolution: 4K UHD (3840 x 2160p) | Refresh Rate: 60 hertz\r\nDisplay: IPS display | HDR Support | Wide Viewing Angle | Hexa Chroma drive | 6-Color Reproduction | 1500Hz Backlight Motion Rate; Power Supply : 110 - 240 V\r\nSmart TV Features: Built-in WiFi | My Home Screen 3.0 | Swipe & Share | Easy Mirroring | Voice Interaction\r\nConnectivity: 2 HDMI ports to connect set top box, Blu Ray players, gaming console | 1 USB ports to connect hard drives and other USB devices\r\nSound output: 20 Watts Output ', '100', 'yes', 'Pan_TV2.jpg'),
(11, 'OPPO K3(Aurora Blue, 6GB RAM, 64GB Storage)', 'Mobile', 'oppo-Mobile', '24990', '32', '16990', '16MP+2MP dual rear camera with AI wisdom beauty, front HDR, facial recognition, front portrait style | 16MP front camera\r\n16.51 centimeters (6.5-inch) full screen AMOLED display with 2340 x 1080 pixels resolution, 394 ppi pixel density and 16M color support\r\nMemory, Storage & SIM: 6GB RAM, 64GB internal memory | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid ColorOS v6.0 operating system with 2.2GHz Snapdragon 710 octa core processor, Adreno 616\r\n3765mAH lithium-polymer\r\n1 year manufacturer ', '100', 'yes', 'oppo_1.jpg'),
(12, 'OPPO A5S (Green, 4GB RAM, 64GB Storage) with No Co', 'Mobile', 'oppo-Mobile', '15990', '25', '11990', '13MP+2MP dual rear camera with AI face beauty, gender detection, AR sticker, face beauty video, camera filter, HDR | 8MP front camera\r\n15.748 centimeters (6.2-inch) HD+ IPS capacitive multi touch screen with 1520 x 720 pixels resolution, 270 ppi pixel density | 16M color support\r\nMemory, Storage & SIM: 4GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid v8.1 Oreo based on Color OS 5.1 operating system with 2.4GHz Mediatek 6765 octa core proc', '100', 'yes', 'oppo_2.jpg'),
(13, 'Samsung Galaxy M30 (Gradation Blue, 4+64 GB)', 'Mobile', 'Samsung-Mobile', '16490', '25', '13990', '13+5+5MP Triple rear camera with f1.9 aperture, 2.2 wide angle, 2.2 flash | 16MP front camera with f2.0 aperture\r\n16.21 centimeters (6.4-inch) FHD+ multi-touch capacitive touchscreen with 2340 x 1080 pixels resolution and 16M color support\r\nMemory, Storage and SIM: 4GB RAM | 64GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid Oreo v8.1 operating system with 1.8GHz Exynos 7904 octa core processor\r\n5000mAH lithium-ion battery with 3x fast charge | 15W T', '100', 'yes', 'sam_1.jpg'),
(14, 'Samsung Galaxy A50 (Blue, 4GB RAM, 64GB Storage) w', 'Mobile', 'Samsung-Mobile', '21000', '12', '18490', '25MP + 5MP + 8MP with F1.7, F2.2 wide Angle and F2.2 with Flash | 25 MP front camers with F2.0\r\n16.21 centimeters (6.4-inch) FHD+ multi-touch capacitive touchscreen with 2340 x 1080 pixels resolution and 16M color support\r\nMemory, Storage and SIM: 4GB RAM | 64GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid Pie V9.0 operating system with 2.29 Ghz Exynos 9610 Octa Core Processor\r\n4000mAH lithium-ion battery with Type-C fast charging | 15W Charger in t', '100', 'yes', 'sam_2.jpg'),
(15, 'Mi A2 (Red, 4GB RAM, 64GB Storage)', 'Mobile', 'MI-Mobile', '17499', '43', '9999', '12MP+20MP dual rear camera and 20MP front facing camera\r\n15.21 centimeters (5.99-inch) with 2160 x 1080 pixels resolution, 403 ppi pixel density\r\nMemory, Storage & SIM: 4GB RAM | 64GB storage | Dual nano SIM with dual standby (4G+4G)\r\nAndroid v8.1 Oreo operating system with 2.2GHz Qualcomm Snapdragon 660 octa core processor, Adreno 512 GPU\r\n3010mAH lithium-ion battery, Quick Charging 4.0, USB Type-C port, Removable battery: No\r\n1 year manufacturer warranty for device and 6 months manufacturer wa', '100', 'yes', 'mi_1.jpg'),
(16, 'Redmi 6 Pro (Black, 3GB RAM, 32GB Storage)', 'Mobile', 'MI-Mobile', '11499', '30', '7999', '12MP+5MP dual rear camera | 5MP front facing camera\r\n14.833 centimeters (5.84-inch) capacitive touchscreen with 2280 x 1080 pixels resolution, 432 ppi pixel density\r\nMemory, Storage & SIM: 3GB RAM | 32GB storage expandable up to 256GB with dedicated slot | Dual nano SIM with dual standby (4G+4G)\r\nAndroid v8.1 Oreo operating system with 2GHz Qualcomm Snapdragon 625 octa core processor, Adreno 506 GPU\r\n4000 lithium-polymer battery\r\n1 year manufacturer warranty for device and 6 months manufacturer ', '100', 'yes', 'mi2.jpg'),
(17, 'Vivo Y91i (Ocean Blue, 2GB RAM, 32GB Storage) with', 'Mobile', 'Vivo-Mobile', '9990', '20', '7990', '13MP rear camera | 5MP front camera\r\n15.80 centimeters (6.22-inch) multi-touch capacitive touchscreen with 1520 x 720 pixels resolution\r\nMemory, Storage & SIM: 2GB RAM | 32GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid Oreo v8.1 operating system with Helio P22 octa core processor\r\n4030mAH lithium-ion battery\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purcha', '100', 'yes', 'vivo1.jpg'),
(18, 'Vivo V15 (Aqua Blue, 6GB RAM, 64GB Storage) with N', 'Mobile', 'Vivo-Mobile', '26990', '26', '19990', '12MP (24 million photosensitive Units) + 8MP + 5MP AI Triple rear camera and 32MP front facing camera\r\n16.59 centimeters (6.53-inch) with 2340 x 1080 pixels resolution\r\nMemory, Storage & SIM: 6GB RAM | 64GB storage expandable up to 256GB| Dual SIM with dual standby (4G+4G)\r\nAndroid v9 Pie operating system with MediaTek P70 octa core processor\r\n4000mAH lithium-ion battery\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from th', '100', 'yes', 'vi2.jpg'),
(19, 'Nokia 6.1 Plus (Blue, 6GB RAM, 64GB Storage)', 'Mobile', 'Nokia-Mobile', '20499', '49', '10999', '16MP+5MP rear camera | 16MP front facing camera\r\n14.732 centimeters (5.8-inch) with 1080 x 2280 pixels resolution\r\nMemory, Storage and SIM: 6GB RAM | 64GB internal memory | Expandable to 400 GB |Dual SIM dual-standby (4G+4G)\r\nAndroid v8 Oreo operating system with Qualcomm Snapdragon SD 636 quad core processor\r\n3060mAH lithium-ion battery\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase\r\nBox includes: ', '100', 'yes', 'no1.jpg'),
(20, 'Nokia 6.1 (Blue-Gold, 4GB RAM, 64GB Storage)', 'Mobile', 'Nokia-Mobile', '16990', '44', '9590', '16MP rear camera | 8MP front camera\r\n13.9 centimeters (5.5-inch) with 1920 x 1080 pixels resolution | 2.5D corning gorilla glass\r\nMemory, Storage and SIM: 4GB RAM | 64GB internal memory expandable up to 128GB | Dual SIM dual-standby (4G+4G)\r\nAndroid v8.0 Oreo operating system with 1.3GHz Qualcomm Snapdragon 630 octa core processor\r\n3000mAH lithium-ion battery providing talk-time of 20 hours and standby time of 648 hours\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty ', '100', 'yes', 'no2.jpg'),
(21, 'LG 260 L 4 Star Frost Free Double Door Refrigerato', 'Refrigerators', 'LG-Refrigerators', '34990', '21', '27499', 'Frost Free, Double Door: Auto defrost to stop ice-build up\r\nCapacity 260 L: Suitable for families with 2-3 members\r\nWarranty: 1 year on product, 10 years on compressor\r\nEnergy Rating: 4 Star\r\nInverter Compressor â€“ Energy efficient, less noise & more durable\r\nShelf Type: Toughened Glass\r\nAlso included in the box: User manual, Warranty card', '100', 'yes', 'lg1.jpg'),
(22, 'LG 190 L 4 Star Direct Cool Single Door Refrigerat', 'Refrigerators', 'LG--Refrigerators', '17690', '18', '14490', 'Direct Cool, Single Door: Economical requires manual defrosting\r\nCapacity 190 L: Suitable for families with 2-3 members\r\nWarranty: 1 year on product, 10 years on compressor\r\nEnergy Rating: 4 Star\r\nSmart Inverter Compressor â€“ Energy efficient, less noise & more durable\r\nShelf Type: Toughened Glass\r\nAlso included in the box: User manual, Warranty card', '100', 'yes', 'lg2.jpg'),
(23, 'Whirlpool 190 L 3 Star Direct Cool Single Door Ref', 'Refrigerators', 'Whirlpool-Refrigerators', '14650', '22', '11490', 'Direct Cool, Single Door: Economical requires manual defrosting\r\nCapacity 190 L: Suitable for families with 2-3 members\r\nWarranty: 1 year on product, 5 years on compressor\r\nEnergy Rating: 3 Star\r\nShelf Type: Toughened Glass\r\nAlso included in the box: User manual, Warranty card', '100', 'yes', 'w1.jpg'),
(24, 'Whirlpool 260 L Frost Free Multi-Door Refrigerator', 'Refrigerators', 'Whirlpool-Refrigerators', '31650', '22', '24620', 'Frost Free, Multi-Door: Auto defrost to stop ice-build up\r\nCapacity 260 L: Suitable for families with 2-3 members\r\nWarranty: 1 year on product, 10 years on compressor\r\nShelf Type: Toughened Glass\r\nAlso included in the box: User manual, Warranty card', '100', 'yes', 'w2.jpg'),
(25, 'Samsung 230 L 3 Star Inverter Direct Cool Single D', 'Refrigerators', 'Samsung-Refrigerators', '20890', '16', '17590', 'Direct-cool refrigerator; 230 litres capacity\r\nEnergy Rating: 3 Star\r\nWarranty: 1 year on product, 10 years on compressor\r\nDirect cool, single door: Economical requires manual defrosting\r\nCapacity 192 L: Suitable for families with 2-3 members\r\nShelf Type: Toughened Glass\r\nInverter compressor: Energy efficient, less noise and more durable', '100', 'yes', 's1.jpg'),
(26, 'Samsung 465 L 4 Star Frost Free Double Door Refrig', 'Refrigerators', 'Samsung-Refrigerators', '69000', '20', '55400', 'Frost Free, Double Door: Auto defrost to stop ice-build up\r\nCapacity 465 L: Suitable for families with 5 or more members\r\nWarranty: 1 year on product, 10 years on compressor\r\nEnergy Rating: 4 Star\r\nInverter Compressor â€“ Energy efficient, less noise & more durable\r\nShelf Type: Toughened Glass\r\nAlso included in the box: User manual, Warranty card\r\n', '100', 'yes', 's2.jpg'),
(27, 'Godrej 225 L 4 Star Direct Cool Single Door Refrig', 'Refrigerators', 'Godrej-Refrigerators', '24900', '14', '21490', 'Direct Cool, Single Door: Economical requires manual defrosting\r\nCapacity 225 L: Suitable for families with 2-3 members\r\nWarranty: 1 year on product, 10 years on compressor\r\nEnergy Rating: 4 Star\r\nInverter Compressor â€“ Energy efficient, less noise & more durable\r\nShelf Type: Toughened Glass; Base Stand with Drawer\r\nAlso included in the box: User manual, Warranty card', '100', 'yes', 'g1.jpg'),
(28, 'Godrej 330 L 2 Star Frost Free Double Door Refrige', 'Refrigerators', 'Godrej-Refrigerators', '35200', '32', '23990', 'Frost Free, Double Door: Auto defrost to stop ice-build up\r\nCapacity 330 L: Suitable for families with 3-4 members\r\nWarranty: 1 year on product, 10 years on compressor\r\nEnergy Rating: 2 Star ; Net Dimensions (H*W*D)cm: 174.5*60*70.6 ; Stabilizer Required: No ; Volatge (AC) and Frequency: 230V, 50Hz, Input Power: 155W\r\nShelf Type: Toughened Glass\r\nAlso included in the box: User manual, Warranty card', '100', 'yes', 'g2.jpg'),
(29, 'Haier 320 L 3 Star Frost Free Double Door Refriger', 'Refrigerators', 'Haier-Refrigerators', '40300', '33', '26850', 'Frost Free, Double Door: Auto defrost to stop ice-build up , 1HIT(1 Hour Icing Technology) Freshness Solution available , Frequency:50Hz\r\nCapacity 320 L: Suitable for families with 3-4 members\r\nWarranty: 1 year on product, 10 years on compressor\r\nEnergy Rating: 3 Star; Climate Class:T=18 43Â°C\r\nShelf Type: Toughened Glass\r\nAlso included in the box: User manual, Warranty card', '100', 'yes', 'h1.jpg'),
(30, 'Haier 220 L 4 Star Direct Cool Single Door Refrige', 'Refrigerators', 'Haier-Refrigerators', '25100', '31', '17400', 'Direct-cool refrigerator; 220 litres capacity\r\nEnergy Rating: 4 Star\r\nWarranty: 1 year on product, 10 years on compressor\r\n4 Star\r\n1HIT\r\n10 Years Warranty\r\nBase Stand\r\nMirror Glass', '100', 'yes', 'h2.jpg'),
(31, 'Canon EOS 1500D 24.1 Digital SLR Camera (Black) wi', 'Camera', 'Cannon-Camera', '34995', '29', '24990', 'Sensor: APS-C CMOS Sensor with 24.1 MP (high resolution for large prints and image cropping)\r\nISO: 100-6400 sensitivity range (critical for obtaining grain-free pictures, especially in low light)\r\nImage Processor: DIGIC 4+ with 9 autofocus points (important for speed and accuracy of autofocus and burst photography)\r\nVideo Resolution: Full HD video with fully manual control and selectable frame rates (great for precision and high-quality video work)\r\nConnectivity: WiFi, NFC and Bluetooth built-in', '100', 'yes', 'c1.jpg'),
(32, 'Canon PowerShot SX540HS 20.3MP Digital Camera with', 'Camera', 'Cannon-Camera', '20995', '12', '18450', 'Canon PowerShot SX540HS 20.3MP Digital Camera with 50x Optical Zoom (Black) + Memory Card + Camera Case', '100', 'yes', 'c2.jpg'),
(33, 'Nikon D3500 W/AF-P DX Nikkor 18-55mm f/3.5-5.6G VR', 'Camera', 'Nikkon-Camera', '36250', '14', '31000', 'Sensor: APS-C CMOS Sensor with 24.2 MP (high resolution for large prints and image cropping)\r\nISO: 100-25600 sensitivity range (critical for obtaining grain-free pictures, especially in low light)\r\nImage Processor: Expeed 4 with 11 autofocus points (important for speed and accuracy of autofocus and burst photography)\r\nVideo Resolution: Full HD video with fully manual control and selectable frame rates (great for precision and high-quality video work)\r\nConnectivity: WiFi, NFC and Bluetooth built-', '100', 'yes', 'n1.jpg'),
(34, 'Nikon D3500 DX-Format DSLR Two Lens Kit with AF-P ', 'Camera', 'Nikkon-Camera', '539950', '31', '36999', 'Sensor: APS-C CMOS Sensor with 24.2 MP (high resolution for large prints and image cropping)\r\nISO: 100-25600 sensitivity range (critical for obtaining grain-free pictures, especially in low light)\r\nImage Processor: Expeed 4 with 11 autofocus points (important for speed and accuracy of autofocus and burst photography)\r\nVideo Resolution: Full HD video with fully manual control and selectable frame rates (great for precision and high-quality video work)\r\nConnectivity: WiFi, NFC and Bluetooth built-', '100', 'yes', 'n2.jpg'),
(35, 'Sony Compact DSC-RX100M5A Advanced Digital 4K Came', 'Camera', 'Sony-Camera', '75990', '18', '61995', 'Exmor RS 1.0 type stacked CMOS sensor with DRAM chip and approx. 20.1 effective megapixels\r\nAdvanced BIONZ X image processing engine with front end LSI\r\nZEISS Vario-Sonnar T F1.8-2.8 large-aperture lens and optimized image processing system\r\nFast Hybrid AF when shooting movies\r\n315-point focal-plane phase-detection AF sensor gives wide coverage area\r\nSilent and vibration-free shooting\r\nXGA OLED Tru-Finder with 100% frame coverage', '100', 'yes', 'so1.jpg'),
(36, 'Sony Cybershot DSC-W830/S 20.1MP Digital Camera (S', 'Camera', 'Sony-Camera', '9490', '20', '7580', '20.1 megapixel camera with 1/2.3 inch super HAD CCD image sensor\r\n720p MP4 movie mode the camera shoots 1280 x 720 high definition movies at 30 fps. Has sweep panorama, intelligent auto and picture effect\r\nThe 8x zoom Carl Zeiss Vario Tessar lens helps you get much closer to your subjects\r\nStandard 2 year manufacturer Warranty. Refer User Manual.\r\nGenerous 2.7-inch (230K dots) Clear Photo LCD display features sharp, natural color that makes it easy to compose shots, read menus, and view photos, ', '150', 'yes', 'so2.jpg'),
(37, 'GoPro Hero7 CHDHX-701-RW Camera(Black)', 'Camera', 'GoPro-Camera', '35500', '18', '28999', 'Get gimbal-like stabilization without the gimbal, hero7 black predicts your movements and corrects for camera shake to deliver insanely smooth footage\r\nRugged + waterproof share experiences you canâ€™t capture with your phone hero7 black is rugged, waterproof without a housing to 10 m and up for any adventure\r\nFace, smile + scene detection hero7 black knows when you face the camera, smile and more, the gopro app uses those details to handpick your best shots and create amazing videos\r\n4k60 v', '150', 'yes', 'go1.jpg'),
(38, 'GoPro Hero7 CHDHB-601-RW Camera(White)', 'Camera', 'GoPro-Camera', '18000', '1', '17990', 'With a touch screen and simple, streamlined capture modes, itâ€™s easy to jump right in and get great shots just swipe and tap\r\nHero7 white records beautiful full hd video, you can also shoot unique time lapse videos to turn longer events into short, shareable moments\r\nHero7 white takes 10 mp photos, and with burst mode, you can get 15 photos in one second so you never miss a moment\r\nAdios shaky footage, hero7 white records smooth, steady video whether youâ€™re skiing, snorkeling or chasing your', '150', 'yes', 'go2.jpg'),
(40, 'Avika 12MP 1080P Sports Plastics Fibre Waterproof ', 'Camera', 'AVIKA-Camera', '2099', '52', '999', 'Full HD 1080P Sports Action Cameraã€‘Featuring professional 1080P/25fps videos and 12MP photos, capture every fantasy moment in you daily life. WP200 enables people to take pictures of disired one and record the exact moments with 2.0 Inch high definition LCD screen, also easy to preview and playback.\r\nâž» ã€Waterproof Action Cameraã€‘Drograce waterproof case is designed to use in extremely environments and conditions, the level of protection reaches IP68. The strong waterproof housing a', '150', 'yes', 'av1.jpg'),
(41, 'AVIKA WiFi Camera, AVIKA Wireless Surveillance Cam', 'Camera', 'AVIKA-Camera', '3299', '39', '1999', 'WiFi CONNECTION With MULTIPLE USES: Without a specific display, you may use this wifi camera as a baby monitor to view your baby\'s activity and safety. No matter where you are, you can remote view the baby and control the wireless camera.\r\nFULLY FUNCTIONAL AT ALL TIME: The 720P HD s provide you the best image and video. Using it for video recording, fast forward and playback via micro SD card. With Pan 350Ã‚Â°/Tilt 100Ã‚Â° and IR led Night Vision, you can view any angle of your home at any time.', '150', 'yes', 'av2.jpg'),
(42, 'Adofys Dash Cam 1080P FHD DVR Car Driving Recorder', 'Camera', 'ADOFYS-Camera', '6999', '57', '2999', 'â˜…â˜…â˜…â˜…â˜…ã€3 INCH LARGE LCD SCREEN CAR RECORDERã€‘- Adofys car camera combined with 1080P Full HD and 12MP resolution, this dash cam can provide insurance claims to prevent disputes. Super large screen shows the realtime image, helps you clearly see every details when playing back and brings better visual experience.\r\nâ˜…â˜…â˜…â˜…â˜…ã€BUILT-IN G-SENSOR CAR DASH CAMERAã€‘-Adofys dash camera with built-in G-sensor, this dash cam can automatically detect a sudden shake/collision and lock th', '150', 'yes', 'ad1.jpg'),
(43, 'Adofys Novatek 96650 Full Hd Car Dash Camera, H108', 'Camera', 'ADOFYS-Camera', '6999', '53', '3299', 'â˜…â˜…â˜…â˜…â˜…ã€3 INCH LARGE LCD SCREEN CAR RECORDERã€‘- Adofys car camera combined with 1080P Full HD and 12MP resolution, this dash cam can provide insurance claims to prevent disputes. Super large screen shows the realtime image, helps you clearly see every details when playing back and brings better visual experience.\r\nâ˜…â˜…â˜…â˜…â˜…ã€BUILT-IN G-SENSOR CAR DASH CAMERAã€‘-Adofys dash camera with built-in G-sensor, this dash cam can automatically detect a sudden shake/collision and lock th', '150', 'yes', 'ad2.jpg'),
(44, 'Dell Vostro 3480 Intel Core i3 8th Gen 14-inch HD ', 'Laptops', 'DELL-Laptop', '38091', '19', '30990', 'Processor: 8th Generation Intel(r) Core(tm) i3-8145U Processor (4M Cache, up to 3.9 GHz)\r\nOperating System: Pre-loaded Windows 10 with lifetime validity\r\nDisplay: 14.0-inch HD (1366 x 768) Anti-Glare LED-Backlit Non-touch Display\r\nMemory & Storage: 4GB DDR4 RAM with Intel HD Graphics | Storage: 1TB HDD\r\nDesign & battery: 3-Cell 42WHr Battery (Integrated))/ Starting Weight:1.72kg\r\nWarranty : This genuine Dell laptop comes with 1 year Pro Support + Accidental Damage Protection (ADP). For more deta', '200', 'yes', 'dell2.jpg'),
(45, 'Dell Vostro 3568 Intel Core i3 7th Gen 15.6-inch H', 'Laptops', 'DELL-Laptop', '35000', '20', '27990', 'Processor: 7th Gen Intel Core i3-7020U processor, 2.3GHz base processor speed\r\nOperating System: Pre-loaded Windows 10 with lifetime validity\r\nDisplay: 15.6-inch HD (1366x768) Anti-Glare LED-Backlit Display\r\nMemory & Storage: 4GB DDR4 RAM with Intel HD 620 Graphics| Storage: 1TB HDD\r\nDesign & battery: Laptop weight: 2.5kg | Lithium battery (4-Cell 40 Whr Battery (removable)\r\nWarranty: This genuine Dell laptop comes with 1 year Pro Support + Accidental Damage Protection (ADP). For more details, s', '200', 'yes', 'dell1.jpg'),
(46, 'HP 15 Core i3 7th Gen 15.6-inch Touchscreen Laptop', 'Laptops', 'HP-Laptop', '42991', '16', '35990', 'Processor: 7th Gen Intel Core i3-7020U processor, 2.3GHz base processor speed, 2 cores, 3MB cache\r\nOperating System: Pre-loaded Windows 10 Home with lifetime validity\r\nDisplay: 15.6-inch HD WLED Touch Screen Display\r\nMemory & Storage: 4GB DDR4 RAM | Storage: 1TB HDD, 5400 RPM | Intel HD Graphics 620\r\nDesign & battery: Multi-touch gesture support | Thin and light design | Laptop weight: 2.04kg | Max battery life = up to 13 hours, Fast Charge, Battery: 3 Cell, Li-Ion, Power Supply: 41 W AC Adapter', '200', 'yes', 'hp1.jpg'),
(47, 'HP 15 Intel Core i5 (8GB DDR4/1TB HDD/Win 10/MS Of', 'Laptops', 'HP-Laptop', '51810', '19', '41990', '7th Gen Intel i5-7200U (2.5 GHz base processor speed, 3 MB SmartCache, 2 cores), Max Boost Clock Up to 3.1 GHz\r\nWindows 10 Home with lifetime validity\r\nMicrosoft Office Home & Student 2016 Lifetime edition\r\n8GB DDR4-2400 RAM\r\nExpandable to 16 GB, 1TB 5400 RPM HDD, The fueling capacity of the device is maintained with the presence of 3 cell Li-Ion battery, which quite resoundingly provides an excellent battery back up', '200', 'yes', 'hp2.jpg'),
(48, 'Acer Aspire 3 Thin A315-55G 15.6-inch Thin and Lig', 'Laptops', 'acer-Laptop', '59999', '28', '42990', '1.6GHz Intel Core i5-8265U 8th Gen processor\r\n8GB DDR4 RAM\r\n1TB 5400rpm hard drive\r\n15.6-inch screen, NVIDIA GeForce MX230 2GB Graphics\r\nWindows 10 Home 64 Bit operating system\r\n7 hours battery life, 1.9kg laptop\r\nProcessor: Intel Core i5-8265U processor, 1.6 Ghz turbo up to 3.90 Ghz, display: 15.6\" Full HD 1920 x 1080, high-brightness Acer ComfyView LED-backlit TFT LCD', '200', 'yes', 'ac1.jpg'),
(49, 'Acer Aspire 3 UN.GNVSI.009 15.6-inch Laptop (AMD D', 'Laptops', 'acer-Laptop', '28999', '33', '19450', '2.6GHz AMD Dual-Core Processor A4-9125 processor\r\n4GB DDR4 RAM\r\n1TB 5400rpm hard drive\r\n15.6-inch screen, AMD Radeon R2 Graphics Graphics\r\nWindows 10 Home operating system\r\n6.5 hours battery life, 2.1kg laptop', '200', 'yes', 'ac2.jpg'),
(50, 'Lenovo Ideapad S145 Intel Core I3 8th Gen 15.6-inc', 'Laptops', 'Lenovo-Laptop', '45390', '33', '30490', 'Processor: 8th Generation Core Intel I3-8145U processor, 2.1 Ghz base speed, 3.9 Ghz max speed, 2 cores, 4Mb smart Cache\r\nOperating System: Preloaded Windows 10 Home, with lifetime validity\r\nDisplay: 15.6-inch screen with (1920X1080) full HD display | Anti Glare technology\r\nMemory and Storage: 4 GB RAM | Storage 1 TB HDD\r\nDesign and battery: Thin and light Laptop| 180 Degree Hinge| Laptop weight 1.85kg | Battery Life: Upto 5.5 hours as per MobileMark 2014\r\nThis genuine Lenovo Laptop comes with 1', '200', 'yes', 'leno1.jpg'),
(51, 'Lenovo Ideapad 330 Intel Core I3 7th Gen 15.6-inch', 'Laptops', 'Lenovo-Laptop', '44990', '38', '27955', 'Processor: 7th Generation Core Intel I3-7020U processor, 2.3 Ghz base speed, 2 cores, 3Mb smart Cache\r\nOperating System: Preloaded Windows 10 Home, with lifetime validity\r\nDisplay: 15.6-inch screen with (1920X1080) full HD display | Anti Glare technology\r\nMemory and Storage: 4 GB RAM | Storage 1 TB HDD\r\nDesign and battery: Laptop weight 2.2kg | Battery Life: Upto 5.5 hours as per MobileMark 2014\r\nThis genuine Lenovo Laptop comes with 1 year onsite domestic warranty from Lenovo covering manufactu', '200', 'yes', 'leno2.jpg'),
(52, 'ASUS TUF Gaming FX505GD 15.6\" FHD Laptop GTX 1050 ', 'Laptops', 'Asus-Laptops', '64990', '23', '49990', 'Processor: 8th Gen Intel Core i5-8300H Processor 2.3GHz (8M Cache, up to 3.9GHz, 4 Cores)\r\nMemory & Storage: 8GB DDR4 2666MHz RAM upgradeable upto 32GB RAM with| Storage: 1TB 5400RPM 2.5\' HDD\r\nGraphics: NVIDIA GeForce GTX 1050 GDDR5 4GB VRAM\r\nDisplay: 15.6\" (16:9) LED-backlit FHD (1920x1080) 60Hz Anti-Glare IPS-level Panel with 45% NTSC.\r\nOperating System: Pre-loaded Windows 10 Home with lifetime validity\r\nDesign & battery: 6.5mm Thin bezel | Laptop weight 2.20kg | Lithium battery 3-Cell\r\nHyperc', '200', 'yes', 'as1.jpg'),
(53, 'ASUS VivoBook X407UF-EK140T 14.0-inch Thin and Lig', 'Laptops', 'Asus-Headphones & Speakers', '64990', '23', '49990', 'Processor : 1.6 Ghz Intel Core i5-8250U 8th Gen processor\r\nMemory : 8GB DDR4 RAM\r\nStorage : 1TB 5400rpm hard drive\r\nGPU : NVIDIA GeForce MX130 GDDR5 2GB graphics\r\nOS : Windows 10 operating system\r\nWeight : 1.55kg laptop\r\nDisplay : 14.0-inch (16:9) LED backlit FHD (1920x1080) 60Hz Anti-Glare Panel with 45 percent NTSC support ASUS splendid technology', '200', 'yes', 'as2.jpg'),
(54, 'Sony SRS-XB10 EXTRA BASS Portable Splash-proof Wir', 'Headphones & Speakers', 'Sony-Headphones & Speaker', '4990', '40', '2999', 'For any query please contact_us on: 1800 103 7799\r\nFrequency Transmission Range- 20 Hz - 20,000 Hz (Sampling frequency 44.1 kHz)\r\nMax. Communication Range- 10m. Frequency Range-2.45GHz', '50', 'yes', 'ss1.jpg'),
(55, 'Sony SRS-XB22 Wireless Extra Bass Waterproof Speak', 'Headphones & Speakers', 'Sony-Headphones & Speaker', '7690', '5', '7270', 'Extra bass for deep and punchy sound\r\nSound effects with party booster\r\nWaterproof, dustproof, rustproof and shockproof (IP67 rated)\r\nOne-touch listening with NFC and Bluetooth\r\nSingle-coloured line light\r\nConnect up to 100 speakers with wireless party chain\r\nUp to 12 hours of battery life', '100', 'yes', 'ss2.jpg'),
(56, 'JBL Flip 3 Stealth Waterproof Portable Bluetooth S', 'Headphones & Speakers', 'JBL-Headphones & Speakers', '7999', '38', '4999', 'JBL Signature Sound\r\nWireless Bluetooth streaming\r\nDual external passive Bass radiators\r\nIPX7 Waterproof with durable fabric material\r\n10 hours of playtime under optimum audio settings\r\n1 year manufacturerâ€™s warranty\r\nContact us on: [ 18001020525 ] for warranty', '100', 'yes', 'jlb1.jpg'),
(57, 'JBL Tuner Portable Bluetooth Speaker', 'Headphones & Speakers', 'JBL-Headphones & Speakers', '6999', '37', '4390', 'Wirelessly stream high-quality sound from your smartphone or tablet\r\nEnjoy traditional FM radio stations along with RDS\r\nThe built-in rechargeable battery with up to 8 hours of playtime\r\nBacklit LCD display\r\n5 FM preset buttons to tune your favorite stations ; Frequency response 85Hz â€“ 20kHz ; Bluetooth: 4.1V ; Battery type: Lithium-ion polymer (3.7V, 1500mAh), Battery charge time 3.5 hours, Music playing time up to 8 hour (varies by volume level and audio content) ; Bluetooth transmitter powe', '100', 'yes', 'jlb2.jpg'),
(58, 'boAt Stone 200 Portable Bluetooth Speakers (Black)', 'Headphones & Speakers', 'doAt-Headphones & Speakers', '2999', '57', '1299', 'Boat Stone 200 is waterproof to suit your active, outdoorsy lifestyle\r\nThe body is constructed of durable rubber matte finish that makes it shock proof, which offers all around outdoor protection against dust and water\r\nGrab one and take it with you when swimming, camping, hiking, cycling, drifting and more\r\nWill surprise you by its well-balanced crystal sound and robust bass\r\nIt produces a very decent amount of bass and can go extremely loud that make this a little beast, which is nice because ', '100', 'yes', 'bo1.jpg'),
(59, 'boAt BassHeads 100 in-Ear Headphones with Mic (Whi', 'Headphones & Speakers', 'doAt-Headphones & Speakers', '999', '60', '399', 'The perfect way to add some style and stand out from the crowd with the boAt BassHeads 100 \"Hawk\" inspired earphones, Feel the BassHeads Super Extra Bass at a wide Frequency range of10Hz - 20KHz\r\nThe stylish BassHeads 100 superior coated wired earphones are a definite fashion statement - wear your attitude with amazing jet black and frosty white colors and get ready to turn heads wherever you go\r\nComes with an amazing commixture of style with performance\r\nThe powerful 10mm dynamic driver with th', '50', 'yes', 'bo2.jpg'),
(60, 'Philips BT50B Portable Wireless Bluetooth Speaker,', 'Headphones & Speakers', 'Philips-Headphones & Speakers', '1999', '41', '1180', 'Anti-clipping function for loud, distortion free music\r\nWireless music streaming via Bluetooth 4.0 or below. Bluetooth range: Line of sight, 10M or 30FT\r\nBuilt-in rechargeable battery for music playback anywhere\r\nBattery backup is 5-6 hrs when the volume level is at Moderate level ( 40 -50% ). Good Bluetooth signal strength leads to slow discharging\r\nIncluded accessories USB cable for PC charging, World Wide Warranty leaflet and Quick install guide', '100', 'yes', 'phi1.jpg'),
(61, 'Philips IN-BT40BK/94 Wireless Portable Speaker (Bl', 'Headphones & Speakers', 'Philips-Headphones & Speakers', '1999', '38', '1249', 'Powerful Sound: Advanced audio performance with a compact design\r\nMultiple Connectivity: Wireless music streaming via Bluetooth, built-in microphone for hands free phone calls, audio-in for easy connection to almost any electronic device\r\nDesigned for grab and go - built-in rechargeable battery for music playback anywhere, easy to carry with knitted strap\r\ncontact_us on: [ 1800-425-6396 ]', '100', 'yes', 'phi2.jpg'),
(62, 'Sony MDR-ZX110A On-Ear Stereo Headphones (White), ', 'Headphones & Speakers', 'Sony-Headphones & Speaker', '1390', '50', '690', '30mm dynamic driver unit for clear sound\r\nHigh energy neodymium magnets deliver powerful sound\r\nSlim, folding design for easy portability\r\nPressure relieving earpads for extended comfort\r\nWarranty: 1 Year', '50', 'yes', 'sh1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id` int(11) NOT NULL,
  `ship_name` varchar(500) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `landmark` varchar(500) NOT NULL,
  `city` varchar(50) NOT NULL,
  `add_type` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id`, `ship_name`, `mobile_no`, `landmark`, `city`, `add_type`, `date`) VALUES
(1, 'Bhagyashree', '7485967182', 'near talathi office', 'satara', 'Home', '14/09/19'),
(2, 'Ankita Nevase', '9652748596', 'mandir', 'wai', 'Home', '16/09/19'),
(3, 'Priti', '7485157435', 'near rivers', 'satara', 'Select Address type', '16/09/19'),
(4, 'Nevase Ankita ', '7485963652', 'near krushna river', 'wai', 'Home', '16/09/19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `id` int(5) NOT NULL,
  `category` varchar(50) NOT NULL,
  `c_id` int(11) NOT NULL,
  `sub_category` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`id`, `category`, `c_id`, `sub_category`, `description`) VALUES
(1, 'Television', 1, 'SONY-TV', 'Experience the unmatched picture quality .'),
(2, 'Television', 1, 'Samsung-TV', 'Samsung offers world\'s best smart  TV  with features like Personal Compute, Music System, Home Cloud'),
(3, 'Television', 1, 'MI-TV', 'MI TV is virtually frameless.'),
(4, 'Television', 1, 'Micromax-TV', 'Enjoy the latest in TV technology by purchasing micromax TVs at great price.'),
(5, 'Television', 1, 'Panasonic-TV', 'Ultra HD TV has 4times the resolution of full HD TV.'),
(6, 'Mobile', 2, 'oppo-Mobile', 'Provide the latest technology.'),
(7, 'Mobile', 2, 'Samsung-Mobile', 'Samsung offers worlds best smart phones.'),
(8, 'Mobile', 2, 'MI-Mobile', 'Buy MI mobiles at lowest price . all new latest 3G  & 4G Xiaomi MI mobile phones.'),
(9, 'Mobile', 2, 'Vivo-Mobile', 'Vivo offers best mobile phones with great features & specifications.'),
(10, 'Mobile', 2, 'Nokia-Mobile', 'Explore the rang of nokia handset.'),
(11, 'Refrigerators', 3, 'LG-Refrigerator', 'Large  capacity & cutting-edge innovations keep food freasher.'),
(12, 'Refrigerators', 3, 'Whirlpool-Refrigerator', 'Refrigerators with most advance and energy efficient compressor.'),
(13, 'Refrigerators', 3, 'Samsung-Refrigerator', 'Shop top mount freezers at Sumsang.'),
(14, 'Refrigerators', 3, 'Godrej-Refrigerator', 'Godrej Refrigerators. Beat the summer heat with godrej Eon Refrigerator.'),
(15, 'Refrigerators', 3, 'Haier-Refrigerator', 'Haier is known for introducing innovative products in the country.'),
(16, 'Camera', 4, 'Cannon-Camera', 'Create Powerful images with your own EOS  DSLR.'),
(17, 'Camera', 4, 'Nikkon-Camera', 'Provide the greatest clarity'),
(18, 'Camera', 4, 'Sony-Camera', 'Provide the higest resolution with more clarity.'),
(19, 'Camera', 4, 'GoPro-Camera', 'Worlds most versatile action camera.'),
(20, 'Camera', 4, 'AVIKA-Camera', 'Buy AVIKA wifi wireless HD IP Security Camera.'),
(21, 'Camera', 4, 'ADOFYS-Camera', 'Capturing your lifes movement and sharing with your friends.'),
(22, 'Computer/Laptops', 5, 'DELL-Laptop', 'Explore the wide range of dell laptops.'),
(23, 'Computer/Laptops', 5, 'HP-Laptop', 'Shop online for latest HP laptops.'),
(24, 'Computer/Laptops', 5, 'acer-Laptop', 'Acer is a taiwanese manufacturerof laptops & other electronics.'),
(25, 'Computer/Laptops', 5, 'Lenovo-Laptop', 'Find your dream laptop from a wide range of lenovo laptops.'),
(26, 'Computer/Laptops', 5, 'Asus', 'Smart & comfortable design.'),
(27, 'Headphones & Speakers', 6, '3G  Gold Royal', '3G  Gold Royal Bluetooth earphone  clip bluetooth headset.'),
(28, 'Headphones & Speakers', 6, '3Keys', '3keys brings you the stylish & high quality latest gadgets.'),
(29, 'Headphones & Speakers', 6, '3Keys', '3keys brings you the stylish & high quality latest gadgets.'),
(30, 'Headphones & Speakers', 6, '4d', 'Wireless Microphone cartridge'),
(31, 'Headphones & Speakers', 6, '5PLUS', 'Buy 5PLUS wired Headphones & Headsets.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `Supplier_ID` int(50) NOT NULL,
  `Supplier_Name` varchar(50) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `Quantity` varchar(50) NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Total` varchar(50) NOT NULL,
  `Email_ID` varchar(50) NOT NULL,
  `Mobile_No` varchar(10) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`Supplier_ID`, `Supplier_Name`, `category_name`, `description`, `Quantity`, `Price`, `Total`, `Email_ID`, `Mobile_No`, `Address`) VALUES
(1, 'Rani Rajpure', 'Mobile', 'Galaxy M20 Specifications. Offering a screen panel', '10', '11000', '110000', 'rani@gmail.com', '2147483647', 'satara');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(5) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `fname`, `lname`, `email`, `mobile`, `address`, `password`, `date`) VALUES
(1, 'Bhagyashree', 'Shinde', 'bhagi@gmail.com', '7219743775', 'At post - Limb ,Tal-Dist Satara', '12345', '2019-09-12'),
(2, 'Ankita', 'jadhav', 'ankita@gmail.com', '8574967485', 'wai', '12345', '2019-09-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product1`
--
ALTER TABLE `tbl_product1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`Supplier_ID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_product1`
--
ALTER TABLE `tbl_product1`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `Supplier_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
