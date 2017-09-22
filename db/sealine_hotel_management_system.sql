-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2017 at 08:46 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sealine_hotel_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_type` varchar(45) DEFAULT NULL,
  `event_duration` double DEFAULT NULL,
  `event_entertainment` varchar(45) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` varchar(10) DEFAULT NULL,
  `no_of_guests` int(11) DEFAULT NULL,
  `hall_name` varchar(45) DEFAULT NULL,
  `hall_price` double DEFAULT NULL,
  `event_status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_type`, `event_duration`, `event_entertainment`, `event_date`, `event_time`, `no_of_guests`, `hall_name`, `hall_price`, `event_status`) VALUES
(410001, 'Wedding', 5, 'Band', '2016-09-28', '08 :30 AM', 230, 'Ockroom - max 250', 12000, NULL),
(410002, 'Birthday Party', 4, 'DJ', '2016-09-25', '07 :30 PM', 190, 'Ballroom - max 200', 10000, NULL),
(410003, 'Anniversary', 3, 'Calipso', '2016-09-30', '04 :30 PM', 280, 'Platinum - max 300', 16000, NULL),
(410004, 'Get together', 6, 'DJ', '2016-09-30', '06 :00 PM', 350, 'Rooftop - max 350', 20000, NULL),
(410005, 'Office Function', 5, 'Band', '2016-09-29', '07 :30 PM', 230, 'Ockroom - max 250', 12000, NULL),
(410006, 'Wedding', 4, 'Dancing Group', '2016-10-05', '07 :30 PM', 275, 'Platinum - max 300', 16000, NULL),
(410007, 'Anniversary', 5, 'Band', '2016-10-12', '07 :30 PM', 175, 'Ballroom - max 200', 10000, NULL),
(410008, 'Birthday Party', 5, 'DJ', '2016-09-28', '06 :00 PM', 180, 'Ballroom - max 200', 10000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_booking`
--

CREATE TABLE `event_booking` (
  `booking_event_id` int(11) NOT NULL,
  `booking_customer_NIC` varchar(10) NOT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_status` varchar(45) DEFAULT NULL,
  `booking_time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `event_customer_info`
--

CREATE TABLE `event_customer_info` (
  `customer_id` int(11) DEFAULT NULL,
  `customer_NIC` varchar(10) NOT NULL,
  `cus_event_id` int(11) DEFAULT NULL,
  `customer_name` varchar(30) DEFAULT NULL,
  `customer_address` varchar(50) DEFAULT NULL,
  `customer_tel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_customer_info`
--

INSERT INTO `event_customer_info` (`customer_id`, `customer_NIC`, `cus_event_id`, `customer_name`, `customer_address`, `customer_tel`) VALUES
(NULL, '786547865v', 410007, 'Lasini Liyanage', 'Galle', 876567865),
(NULL, '786754876v', 410005, 'Dinusha Perera', 'Maharagama', 112657654),
(NULL, '897675347v', 410004, 'Chethana perera', 'Athurugiriya', 716547654),
(NULL, '897685467v', 410006, 'Dimansha Malrindu', 'Gampaha', 774567872),
(NULL, '936758334v', 410003, 'Kavinda Kalutota', 'Nawala', 773456432),
(NULL, '937656467v', 410002, 'Dulitha Hansaka', 'Maharagama', 772346537),
(NULL, '948602920v', 410001, 'Ashani De Silva', 'no23,Malabe', 772356242);

-- --------------------------------------------------------

--
-- Table structure for table `event_decoration`
--

CREATE TABLE `event_decoration` (
  `decor_id` int(11) NOT NULL,
  `decor_event_id` int(11) NOT NULL,
  `decor_customer_NIC` varchar(10) DEFAULT NULL,
  `theme_color` varchar(45) DEFAULT NULL,
  `decor_description` varchar(500) DEFAULT NULL,
  `table_decoration` varchar(25) DEFAULT NULL,
  `wall_decoration` varchar(25) DEFAULT NULL,
  `flower_decoration` varchar(25) DEFAULT NULL,
  `disco_light` varchar(25) DEFAULT NULL,
  `entrance_arch` varchar(25) DEFAULT NULL,
  `decor_special_requirements` varchar(200) DEFAULT NULL,
  `decor_special_req_price` double DEFAULT NULL,
  `decor_price` double DEFAULT NULL,
  `decor_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_decoration`
--

INSERT INTO `event_decoration` (`decor_id`, `decor_event_id`, `decor_customer_NIC`, `theme_color`, `decor_description`, `table_decoration`, `wall_decoration`, `flower_decoration`, `disco_light`, `entrance_arch`, `decor_special_requirements`, `decor_special_req_price`, `decor_price`, `decor_total`) VALUES
(440001, 410001, '948602920v', 'Blue', '25 tables', 'Table Decorations', 'null', 'Flower Decorations', 'null', 'null', 'Baloons', 1000, 12000, 13000),
(440002, 410002, '937656467v', 'Green', '20 tables', 'Table Decorations', 'null', 'Flower Decorations', 'null', 'null', 'Baloons', 1000, 14000, 15000),
(440003, 410003, '936758334v', 'Purple', '20 tables', 'Table Decorations', 'null', 'Flower Decorations', 'Disco Light', 'null', 'Oil lamp', 1500, 15000, 16500),
(440004, 410004, '897675347v', 'Gold', '28 tables', 'Table Decorations', 'null', 'null', 'Disco Light', 'null', 'oil lamp, baloons', 3000, 16000, 19000),
(440005, 410005, '786754876v', 'Yellow', '18 tables', 'Table Decorations', 'Wall Decorations', 'null', 'null', 'null', 'candles', 1500, 12000, 13500),
(440006, 410006, '897685467v', 'Magenta', '20 tables', 'Table Decorations', 'null', 'null', 'Disco Light', 'Entrance Arch', 'candles, baloon', 2500, 17000, 19500),
(440007, 410007, '786547865v', 'Orange', '25 tables', 'Table Decorations', 'null', 'null', 'Disco Light', 'Entrance Arch', 'candles, baloon', 2500, 17000, 19500);

-- --------------------------------------------------------

--
-- Table structure for table `event_food_packages`
--

CREATE TABLE `event_food_packages` (
  `fp_event_id` int(11) NOT NULL,
  `fp_customer_NIC` varchar(10) NOT NULL,
  `no_of_plates` int(11) DEFAULT NULL,
  `fp_regular` varchar(45) DEFAULT NULL,
  `fp_customized` varchar(45) DEFAULT NULL,
  `fp_description` varchar(500) DEFAULT NULL,
  `fp_price` double DEFAULT NULL,
  `fp_total` double DEFAULT NULL,
  `order_status` smallint(1) DEFAULT NULL,
  `fp_menu_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_food_packages`
--

INSERT INTO `event_food_packages` (`fp_event_id`, `fp_customer_NIC`, `no_of_plates`, `fp_regular`, `fp_customized`, `fp_description`, `fp_price`, `fp_total`, `order_status`, `fp_menu_id`) VALUES
(410001, '948602920v', 230, 'Package C', NULL, NULL, 4590, NULL, 0, 550006),
(410002, '937656467v', 290, NULL, 'Customized', 'Welcome Drink ,Chilli Paste ,Fish Stew/Ambulthiyal ,Pineapple Red Curry ,Steam Rice ,', 133400, NULL, NULL, NULL),
(410003, '936758334v', 200, 'Package A', NULL, NULL, 4450, NULL, 0, 550004),
(410004, '897675347v', 350, 'Package C', NULL, NULL, 4590, NULL, 0, 550006),
(410005, '786754876v', 280, NULL, 'Customized', 'Raita Salad ,Chicken Salad ,Fish Stew/Ambulthiyal ,Chicken Black Curry ,Welcome Drink ,', 159600, NULL, NULL, NULL),
(410006, '897685467v', 230, 'Package C', NULL, NULL, 4590, NULL, 0, 550006),
(410007, '786547865v', 230, 'Package A', NULL, NULL, 4450, NULL, 0, 550004);

-- --------------------------------------------------------

--
-- Table structure for table `event_hall`
--

CREATE TABLE `event_hall` (
  `hall_name` varchar(20) NOT NULL,
  `max_no_of_guests` int(11) DEFAULT NULL,
  `hall_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_hall`
--

INSERT INTO `event_hall` (`hall_name`, `max_no_of_guests`, `hall_price`) VALUES
('Ballroom - max 200', 200, 10000),
('Ockroom - max 250', 250, 12000),
('Platinum - max 300', 300, 16000),
('Rooftop - max 350', 350, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `event_order`
--

CREATE TABLE `event_order` (
  `order_event_id` int(11) NOT NULL,
  `order_customer_NIC` varchar(10) DEFAULT NULL,
  `order_menu_id` varchar(45) DEFAULT NULL,
  `order_status` varchar(10) DEFAULT NULL,
  `event_order_id` int(11) NOT NULL,
  `event_order_des` varchar(500) DEFAULT NULL,
  `event_order_cus` varchar(45) DEFAULT NULL,
  `event_order_no_of_plates` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_order`
--

INSERT INTO `event_order` (`order_event_id`, `order_customer_NIC`, `order_menu_id`, `order_status`, `event_order_id`, `event_order_des`, `event_order_cus`, `event_order_no_of_plates`) VALUES
(410001, '948602920v', '550006', '0', 430001, NULL, NULL, 230),
(410002, '937656467v', NULL, '0', 430002, 'Welcome Drink ,Chilli Paste ,Fish Stew/Ambulthiyal ,Pineapple Red Curry ,Steam Rice ,', 'Customized', 290),
(410003, '936758334v', '550004', '0', 430003, NULL, NULL, 200),
(410004, '897675347v', '550006', '0', 430004, NULL, NULL, 350),
(410005, '786754876v', NULL, '0', 430005, 'Raita Salad ,Chicken Salad ,Fish Stew/Ambulthiyal ,Chicken Black Curry ,Welcome Drink ,', 'Customized', 280),
(410006, '897685467v', '550006', '0', 430006, NULL, NULL, 230),
(410007, '786547865v', '550004', '0', 430007, NULL, NULL, 230);

-- --------------------------------------------------------

--
-- Table structure for table `event_payment`
--

CREATE TABLE `event_payment` (
  `event_payment_customer_NIC` varchar(10) NOT NULL,
  `event_payment_event_ID` int(11) DEFAULT NULL,
  `event_payment_method` varchar(10) DEFAULT NULL,
  `event_payment_amount` float DEFAULT NULL,
  `event_Credit/Debit` varchar(10) DEFAULT NULL,
  `event_payment_due_date` date DEFAULT NULL,
  `event_payment_cashflow_ID` int(11) DEFAULT NULL,
  `event_payment_description` varchar(50) DEFAULT NULL,
  `event_payment_total` double DEFAULT NULL,
  `event_payment_balance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fin_assests`
--

CREATE TABLE `fin_assests` (
  `assests_id` int(11) NOT NULL,
  `assests_cashflow_id` int(11) DEFAULT NULL,
  `assests_payment_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fin_assests`
--

INSERT INTO `fin_assests` (`assests_id`, `assests_cashflow_id`, `assests_payment_status`) VALUES
(140015, 110017, 'Credit'),
(140016, 110018, 'Credit'),
(140017, 110019, 'Credit'),
(140018, 110020, 'Credit'),
(140019, 110021, 'Debit'),
(140020, 110044, 'Debit');

-- --------------------------------------------------------

--
-- Table structure for table `fin_budget`
--

CREATE TABLE `fin_budget` (
  `budget_id` int(11) NOT NULL,
  `budget_date` datetime DEFAULT NULL,
  `budget_description` varchar(45) DEFAULT NULL,
  `budget_department` varchar(20) DEFAULT NULL,
  `budget_amount` double DEFAULT NULL,
  `budget_payment_status` varchar(10) DEFAULT NULL,
  `budget_balance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fin_budget`
--

INSERT INTO `fin_budget` (`budget_id`, `budget_date`, `budget_description`, `budget_department`, `budget_amount`, `budget_payment_status`, `budget_balance`) VALUES
(170000, '2016-08-01 00:00:00', 'Transport Budget', 'Transport', 200000, 'Debit', 50000),
(170001, '2016-08-01 00:00:00', 'Stock Monthly budget', 'Stock', 750000, 'Debit', 730000),
(170002, '2016-08-01 00:00:00', 'Room Budget', 'Room', 200000, 'Debit', 190000),
(170003, '2016-08-01 00:00:00', 'Restaurant Budget', 'Restaurant', 300000, 'Debit', 300000),
(170004, '2016-08-01 00:00:00', 'Hr Monthly budget', 'HR', 1000000, 'Debit', 990000),
(170005, '2016-09-01 00:00:00', 'Fin Monthly budget', 'Finance', 200000, 'Debit', 200000),
(170006, '2016-08-01 00:00:00', 'Event Monthly budget', 'Event', 500000, 'Debit', 430000);

-- --------------------------------------------------------

--
-- Table structure for table `fin_budget_request`
--

CREATE TABLE `fin_budget_request` (
  `budget_request_id` int(11) NOT NULL,
  `request_budget_id` int(11) DEFAULT NULL,
  `budget_request_date` datetime DEFAULT NULL,
  `budget_request_department` varchar(20) DEFAULT NULL,
  `budget_request_amount` double DEFAULT NULL,
  `budget_request_status` varchar(10) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fin_budget_request`
--

INSERT INTO `fin_budget_request` (`budget_request_id`, `request_budget_id`, `budget_request_date`, `budget_request_department`, `budget_request_amount`, `budget_request_status`) VALUES
(180001, 170003, '2016-09-20 19:40:20', 'Restaurant', 66666, 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `fin_cashflow`
--

CREATE TABLE `fin_cashflow` (
  `cashflow_id` int(11) NOT NULL,
  `cashflow_date` date DEFAULT NULL,
  `cashflow_description` varchar(50) DEFAULT NULL,
  `cashflow_department` varchar(30) DEFAULT NULL,
  `cashflow_method` varchar(10) DEFAULT NULL,
  `cashflow_amount` double DEFAULT NULL,
  `cashflow_payment_type` varchar(20) DEFAULT NULL,
  `cashflow_payment_status` varchar(10) DEFAULT NULL,
  `cashflow_approval` varchar(20) DEFAULT 'not approved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fin_cashflow`
--

INSERT INTO `fin_cashflow` (`cashflow_id`, `cashflow_date`, `cashflow_description`, `cashflow_department`, `cashflow_method`, `cashflow_amount`, `cashflow_payment_type`, `cashflow_payment_status`, `cashflow_approval`) VALUES
(110001, '2016-08-20', 'Bill Payment', 'Restaurant', 'Money', 440, 'Income', 'Credit', 'approved'),
(110002, '2016-09-22', 'Travel Package Booking', 'Transport', 'Money', 5000, 'Income', 'Credit', 'approved'),
(110003, '2016-09-20', 'Chargers', 'Room', 'Money', 8000, 'Income', 'Credit', 'approved'),
(110004, '2016-09-05', 'Birthday Party', 'Event', 'Money', 60000, 'Income', 'Credit', 'approved'),
(110005, '2016-09-10', 'School Event', 'Event', 'Money', 50000, 'Income', 'Credit', 'approved'),
(110006, '2016-09-04', 'Telephone Bill', 'HR', 'Bank', 10000, 'Expenditure', 'Debit', 'approved'),
(110007, '2016-09-02', 'Decoration Chargers', 'Event', 'Money', 6000, 'Expenditure', 'Debit', 'approved'),
(110008, '2016-09-06', 'Room Services', 'Room', 'Money', 8000, 'Expenditure', 'Debit', 'approved'),
(110009, '2016-09-13', 'Fuel Chargers', 'Transport', 'Bank', 150000, 'Expenditure', 'Debit', 'approved'),
(110010, '2016-09-09', 'Delevery Chargers', 'Stock', 'Money', 6000, 'Expenditure', 'Credit', 'approved'),
(110011, '2016-07-13', 'Stock Services', 'Stock', 'Bank', 7000, 'Expenditure', 'Debit', 'approved'),
(110012, '2016-06-02', 'Initial Capital', '', 'Money', 200000, 'Investment', 'Credit', 'approved'),
(110013, '2016-07-05', 'Share holders', '', 'Bank', 1000000, 'Investment', 'Credit', 'approved'),
(110014, '2016-07-04', 'Share Holdeers', '', 'Bank', 900000, 'Investment', 'Credit', 'approved'),
(110015, '2016-09-04', 'Returns', '', 'Bank', 100000, 'Investment', 'Debit', 'approved'),
(110016, '2016-07-03', 'investments', '', 'Bank', 350000, 'Investment', 'Credi', 'approved'),
(110017, '2016-09-01', 'Office wares', 'HR', 'Bank', 100000, 'Assest', 'Debit', 'approved'),
(110018, '2016-10-03', 'Tables', 'Stock', 'Bank', 50000, 'Assest', 'Debit', 'approved'),
(110019, '2016-08-02', 'Cupboards', 'Finance', 'Money', 50000, 'Assest', 'Debit', 'approved'),
(110020, '2017-07-04', 'Table chargers', 'Finance', 'Money', 100000, 'Assest', 'Debit', 'approved'),
(110021, '2016-06-10', 'Damages for Assets', 'Stock', 'Bank', 30000, 'Assest', 'Credit', 'approved'),
(110022, '2016-06-07', 'Petty Cash', 'Event', 'Money', 15000, 'Expenditure', 'Debit', 'approved'),
(110023, '2016-07-12', 'Electricity Bill', 'Event', 'Bank', 50000, 'Expenditure', 'Debit', 'approved'),
(110024, '2016-07-04', 'Decoration Carges', 'Event', 'Money', 20000, 'Expenditure', 'Debit', 'approved'),
(110025, '2016-07-05', 'Room Reservation', 'Room', 'Bank', 100000, 'Income', 'Credit', 'approved'),
(110026, '2016-07-05', 'Bank Loan', 'Room', 'Bank', 500000, 'Liability', 'Credit', 'approved'),
(110027, '2016-09-03', 'Monthly intrest', 'Room', 'Bank', 2000, 'Liability', 'Credit', 'approved'),
(110028, '2016-09-03', 'monthly installment', 'Room', 'Bank', 40000, 'Liability', 'Debit', 'approved'),
(110029, '2016-09-21', 'Wine', 'Stock', 'Bank', 20000, 'Expenditure', 'Debit', 'approved'),
(110030, '2016-09-21', 'Toaster', 'Stock', 'Bank', 21000, 'Expenditure', 'Debit', 'approved'),
(110031, '2016-09-21', 'Dish towel', 'Stock', 'Bank', 42000, 'Expenditure', 'Debit', 'approved'),
(110032, '2016-09-21', 'Pillow case', 'Stock', 'Bank', 15750, 'Expenditure', 'Debit', 'approved'),
(110033, '2016-09-21', 'Toilet paper', 'Stock', 'Bank', 12000, 'Expenditure', 'Debit', 'approved'),
(110034, '2016-09-21', 'Lemon', 'Stock', 'Bank', 12800, 'Expenditure', 'Debit', 'approved'),
(110035, '2016-09-21', 'Bedsheet', 'Stock', 'Bank', 24000, 'Expenditure', 'Debit', 'approved'),
(110036, '2016-09-21', 'Bath towel', 'Stock', 'Bank', 6500, 'Expenditure', 'Debit', 'approved'),
(110037, '2016-09-21', 'Camping tent', 'Stock', 'Bank', 60000, 'Expenditure', 'Credit', 'approved'),
(110038, '2016-09-21', 'Waste basket', 'Stock', 'Bank', 6300, 'Expenditure', 'Debit', 'approved'),
(110039, '2016-09-21', 'Rope', 'Stock', 'Bank', 9100, 'Expenditure', 'Debit', 'approved'),
(110040, '2016-09-21', 'Hall carpet', 'Stock', 'Bank', 22500, 'Expenditure', 'Debit', 'approved'),
(110041, '2016-07-05', 'cancel Reservation', 'Room', 'Bank', 10000, 'Income', 'Debit', 'approved'),
(110042, '2016-08-06', 'cancel payment', 'Room', 'Money', 10000, 'Expenditure', 'Credit', 'approved'),
(110043, '2016-08-03', 'cancel payment', 'Stock', 'Bank', 20000, 'Expenditure', 'Credit', 'approved'),
(110044, '2016-08-05', 'Damages returning', 'Stock', 'Bank', 19000, 'Assest', 'Credit', 'approved'),
(110045, '2016-09-21', 'Add additional budget', 'Restaurant', 'Bank', 66666, 'Budget', 'Credit', 'Approved'),
(110046, '2016-09-21', 'Update monthly budget', 'Restaurant', 'Bank', 66666, 'Budget', 'Credit', 'Approved'),
(110047, '2016-08-07', 'Event Chargers', 'Event', 'Bank', 500000, 'Income', 'Credit', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `fin_expenditure`
--

CREATE TABLE `fin_expenditure` (
  `expense_id` int(11) NOT NULL,
  `expense_cashflow_id` int(11) DEFAULT NULL,
  `expense_payment_status` varchar(10) DEFAULT NULL,
  `expense_budget_status` varchar(10) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fin_expenditure`
--

INSERT INTO `fin_expenditure` (`expense_id`, `expense_cashflow_id`, `expense_payment_status`, `expense_budget_status`) VALUES
(130001, 110006, 'Credit', 'pending'),
(130002, 110007, 'Credit', 'pending'),
(130003, 110008, 'Credit', 'pending'),
(130004, 110009, 'Credit', 'pending'),
(130005, 110010, 'Debit', 'pending'),
(130006, 110011, 'Credit', 'pending'),
(130007, 110022, 'Credit', 'pending'),
(130008, 110040, 'Credit', 'pending'),
(130009, 110038, 'Credit', 'pending'),
(130010, 110036, 'Credit', 'pending'),
(130011, 110035, 'Credit', 'pending'),
(130012, 110034, 'Credit', 'pending'),
(130013, 110031, 'Credit', 'pending'),
(130014, 110030, 'Credit', 'pending'),
(130015, 110032, 'Credit', 'pending'),
(130016, 110039, 'Credit', 'pending'),
(130017, 110033, 'Credit', 'pending'),
(130018, 110029, 'Credit', 'pending'),
(130019, 110024, 'Credit', 'pending'),
(130020, 110023, 'Credit', 'pending'),
(130021, 110037, 'Debit', 'pending'),
(130022, 110042, 'Debit', 'pending'),
(130023, 110043, 'Debit', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `fin_income`
--

CREATE TABLE `fin_income` (
  `income_id` int(11) NOT NULL,
  `income_cashflow_id` int(11) DEFAULT NULL,
  `income_payment_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fin_income`
--

INSERT INTO `fin_income` (`income_id`, `income_cashflow_id`, `income_payment_status`) VALUES
(120001, 110003, 'Debit'),
(120002, 110001, 'Debit'),
(120003, 110002, 'Debit'),
(120004, 110004, 'Debit'),
(120005, 110005, 'Debit'),
(120006, 110025, 'Debit'),
(120007, 110041, 'Credit'),
(120008, 110047, 'Debit');

-- --------------------------------------------------------

--
-- Table structure for table `fin_investment`
--

CREATE TABLE `fin_investment` (
  `investment_id` int(11) NOT NULL,
  `investment_cashflow_id` int(11) DEFAULT NULL,
  `investment_payment_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fin_investment`
--

INSERT INTO `fin_investment` (`investment_id`, `investment_cashflow_id`, `investment_payment_status`) VALUES
(150001, 110012, 'Debit'),
(150002, 110013, 'Debit'),
(150003, 110014, 'Debit'),
(150004, 110015, 'Credit'),
(150005, 110016, 'Debit');

-- --------------------------------------------------------

--
-- Table structure for table `fin_liability`
--

CREATE TABLE `fin_liability` (
  `liability_id` int(11) NOT NULL,
  `liability_cashflow_id` int(11) DEFAULT NULL,
  `liability_payment_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fin_liability`
--

INSERT INTO `fin_liability` (`liability_id`, `liability_cashflow_id`, `liability_payment_status`) VALUES
(160001, 110026, 'Debit'),
(160002, 110027, 'Debit'),
(160003, 110028, 'Credit');

-- --------------------------------------------------------

--
-- Table structure for table `fin_userlog`
--

CREATE TABLE `fin_userlog` (
  `userlog_id` int(11) NOT NULL,
  `userlog_date` datetime DEFAULT NULL,
  `userlog_username` varchar(45) NOT NULL,
  `userlog_action_type` varchar(45) NOT NULL,
  `userlog_action` varchar(20) DEFAULT NULL,
  `userlog_action_id` int(11) DEFAULT NULL,
  `system_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fin_userlog`
--

INSERT INTO `fin_userlog` (`userlog_id`, `userlog_date`, `userlog_username`, `userlog_action_type`, `userlog_action`, `userlog_action_id`, `system_user_id`) VALUES
(190001, '2016-09-20 11:01:55', 'Sameera', 'System Login', 'Login', 0, 910023),
(190002, '2016-09-20 11:02:29', 'Sameera', 'System Logout', 'Logout', 0, 910023),
(190003, '2016-09-20 11:03:01', 'Sameera', 'System Login', 'Login', 0, 910023),
(190004, '2016-09-20 11:07:38', 'Sameera', 'System Login', 'Login', 0, 910023),
(190005, '2016-09-20 11:38:35', 'null', 'System Login', 'Login', 0, 0),
(190006, '2016-09-20 11:38:46', 'null', 'Report', 'Cashflow Report', 0, 0),
(190007, '2016-09-20 11:51:04', 'null', 'System Login', 'Login', 0, 0),
(190008, '2016-09-20 11:52:11', 'null', 'System Login', 'Login', 0, 0),
(190009, '2016-09-20 11:53:17', 'null', 'System Login', 'Login', 0, 0),
(190010, '2016-09-20 11:54:56', 'null', 'System Login', 'Login', 0, 0),
(190011, '2016-09-20 11:57:29', 'null', 'System Login', 'Login', 0, 0),
(190012, '2016-09-20 11:59:20', 'null', 'System Login', 'Login', 0, 0),
(190013, '2016-09-20 12:01:15', 'null', 'System Login', 'Login', 0, 0),
(190014, '2016-09-20 12:01:37', 'null', 'System Login', 'Login', 0, 0),
(190015, '2016-09-20 12:02:57', 'null', 'System Login', 'Login', 0, 0),
(190016, '2016-09-20 12:33:27', 'Nisal', 'System Login', 'Login', 0, 910019),
(190017, '2016-09-20 12:34:38', 'Nisal', 'System Login', 'Login', 0, 910019),
(190018, '2016-09-20 12:36:50', 'Nisal', 'System Login', 'Login', 0, 910019),
(190019, '2016-09-20 12:40:28', 'Nisal', 'System Login', 'Login', 0, 910019),
(190020, '2016-09-20 12:41:43', 'Nisal', 'System Login', 'Login', 0, 910019),
(190021, '2016-09-20 12:45:19', 'Nisal', 'System Login', 'Login', 0, 910019),
(190022, '2016-09-20 12:49:00', 'null', 'System Login', 'Login', 0, 0),
(190023, '2016-09-20 12:49:24', 'null', 'System Login', 'Login', 0, 0),
(190024, '2016-09-20 12:49:51', 'null', 'System Login', 'Login', 0, 0),
(190025, '2016-09-20 12:50:20', 'Nisal', 'System Login', 'Login', 0, 910019),
(190026, '2016-09-20 12:51:06', 'Nisal', 'System Login', 'Login', 0, 910019),
(190027, '2016-09-20 12:53:25', 'null', 'System Login', 'Login', 0, 0),
(190028, '2016-09-20 12:56:42', 'null', 'System Login', 'Login', 0, 0),
(190029, '2016-09-20 12:58:43', 'null', 'System Login', 'Login', 0, 0),
(190030, '2016-09-20 13:00:52', 'null', 'System Login', 'Login', 0, 0),
(190031, '2016-09-20 13:00:58', 'null', 'System Login', 'Login', 0, 0),
(190032, '2016-09-20 13:07:46', 'null', 'System Login', 'Login', 0, 0),
(190033, '2016-09-20 13:07:55', 'null', 'System Login', 'Login', 0, 0),
(190034, '2016-09-20 13:09:17', 'null', 'System Login', 'Login', 0, 0),
(190035, '2016-09-20 14:41:58', 'null', 'System Login', 'Login', 0, 0),
(190036, '2016-09-20 14:43:00', 'null', 'System Login', 'Login', 0, 0),
(190037, '2016-09-20 14:56:55', 'null', 'System Login', 'Login', 0, 0),
(190038, '2016-09-20 14:57:47', 'null', 'System Login', 'Login', 0, 0),
(190039, '2016-09-20 15:00:05', 'null', 'System Login', 'Login', 0, 0),
(190040, '2016-09-20 15:02:10', 'null', 'System Login', 'Login', 0, 0),
(190041, '2016-09-20 15:02:39', 'null', 'System Login', 'Login', 0, 0),
(190042, '2016-09-20 15:03:13', 'null', 'System Login', 'Login', 0, 0),
(190043, '2016-09-20 15:06:30', 'null', 'System Login', 'Login', 0, 0),
(190044, '2016-09-20 15:09:38', 'null', 'System Login', 'Login', 0, 0),
(190045, '2016-09-20 15:11:22', 'null', 'System Login', 'Login', 0, 0),
(190046, '2016-09-20 15:24:00', 'null', 'System Login', 'Login', 0, 0),
(190047, '2016-09-20 15:24:24', 'Nisal', 'System Login', 'Login', 0, 910019),
(190048, '2016-09-20 15:25:37', 'Nisal', 'System Login', 'Login', 0, 910019),
(190049, '2016-09-20 15:26:45', 'Nisal', 'System Login', 'Login', 0, 910019),
(190050, '2016-09-20 15:27:39', 'Nisal', 'System Login', 'Login', 0, 910019),
(190051, '2016-09-20 15:30:01', 'null', 'System Login', 'Login', 0, 0),
(190052, '2016-09-20 17:51:41', 'Sameera', 'System Login', 'Login', 0, 910023),
(190053, '2016-09-20 17:51:47', 'Sameera', 'System Logout', 'Logout', 0, 910023),
(190054, '2016-09-20 17:51:53', 'Sameera', 'System Login', 'Login', 0, 910023),
(190055, '2016-09-20 17:52:04', 'Sameera', 'Report', 'Cashflow Report', 0, 910023),
(190056, '2016-09-20 17:52:14', 'Sameera', 'Report', 'Cashflow Report', 0, 910023),
(190057, '2016-09-20 17:52:16', 'Sameera', 'Report', 'Cashflow Report', 0, 910023),
(190058, '2016-09-20 17:52:18', 'Sameera', 'Report', 'Cashflow Report', 0, 910023),
(190059, '2016-09-20 17:56:03', 'null', 'System Login', 'Login', 0, 0),
(190060, '2016-09-20 17:56:18', 'null', 'Report', 'Cashflow Report', 0, 0),
(190061, '2016-09-20 17:56:26', 'null', 'Report', 'Bank Statement', 0, 0),
(190062, '2016-09-20 17:56:32', 'null', 'Report', 'Balance Sheet', 0, 0),
(190063, '2016-09-20 17:56:39', 'null', 'Report', 'Profit/Loss', 0, 0),
(190064, '2016-09-20 18:27:41', 'null', 'System Login', 'Login', 0, 0),
(190065, '2016-09-21 04:03:23', 'Nisal', 'System Login', 'Login', 0, 910019),
(190066, '2016-09-21 04:03:53', 'Nisal', 'System Login', 'Login', 0, 910019),
(190067, '2016-09-21 04:03:57', 'Nisal', 'System Login', 'Login', 0, 910019),
(190068, '2016-09-21 04:28:32', 'Nisal', 'System Login', 'Login', 0, 910019),
(190069, '2016-09-21 04:28:48', 'Nisal', 'System Login', 'Login', 0, 910019),
(190070, '2016-09-21 04:29:19', 'Nisal', 'Income', 'Accept', 120001, 910019),
(190071, '2016-09-21 04:29:52', 'Nisal', 'Income', 'Update', 120001, 910019),
(190072, '2016-09-21 04:29:58', 'Nisal', 'Income', 'Accept', 120002, 910019),
(190073, '2016-09-21 04:30:00', 'Nisal', 'Income', 'Accept', 120003, 910019),
(190074, '2016-09-21 04:31:48', 'Nisal', 'Income', 'Add', 120004, 910019),
(190075, '2016-09-21 04:32:45', 'Nisal', 'Income', 'Add', 120005, 910019),
(190076, '2016-09-21 04:34:00', 'Nisal', 'Expenditure', 'Add', 130001, 910019),
(190077, '2016-09-21 04:34:49', 'Nisal', 'Expenditure', 'Add', 130002, 910019),
(190078, '2016-09-21 04:35:32', 'Nisal', 'Expenditure', 'Add', 130003, 910019),
(190079, '2016-09-21 04:36:55', 'Nisal', 'Expenditure', 'Add', 130004, 910019),
(190080, '2016-09-21 04:38:11', 'Nisal', 'Expenditure', 'Add', 130005, 910019),
(190081, '2016-09-21 04:38:59', 'Nisal', 'Expenditure', 'Add', 130006, 910019),
(190082, '2016-09-21 04:40:09', 'Nisal', 'Investment', 'Add', 150001, 910019),
(190083, '2016-09-21 04:40:49', 'Nisal', 'Investment', 'Add', 150002, 910019),
(190084, '2016-09-21 04:42:32', 'Nisal', 'Investment', 'Add', 150003, 910019),
(190085, '2016-09-21 04:43:42', 'Nisal', 'Investment', 'Update', 150003, 910019),
(190086, '2016-09-21 04:43:48', 'Nisal', 'Investment', 'Update', 150003, 910019),
(190087, '2016-09-21 04:43:56', 'Nisal', 'Investment', 'Update', 150002, 910019),
(190088, '2016-09-21 04:44:03', 'Nisal', 'Investment', 'Update', 150001, 910019),
(190089, '2016-09-21 04:44:09', 'Nisal', 'Investment', 'Add', 150004, 910019),
(190090, '2016-09-21 04:44:41', 'Nisal', 'Investment', 'Add', 150005, 910019),
(190091, '2016-09-21 04:45:59', 'Nisal', 'Assests', 'Add', 140015, 910019),
(190092, '2016-09-21 04:46:27', 'Nisal', 'Assests', 'Add', 140016, 910019),
(190093, '2016-09-21 04:47:04', 'Nisal', 'Assests', 'Add', 140017, 910019),
(190094, '2016-09-21 04:47:38', 'Nisal', 'Assests', 'Add', 140018, 910019),
(190095, '2016-09-21 04:48:51', 'Nisal', 'Assests', 'Add', 140019, 910019),
(190096, '2016-09-21 04:50:11', 'Nisal', 'Expenditure', 'Add', 130007, 910019),
(190097, '2016-09-21 04:51:58', 'Nisal', 'Cashflow', 'Add', 110023, 910019),
(190098, '2016-09-21 04:53:56', 'Nisal', 'Cashflow', 'Add', 110024, 910019),
(190099, '2016-09-21 04:55:20', 'Nisal', 'Cashflow', 'Add', 110025, 910019),
(190100, '2016-09-21 04:55:59', 'Nisal', 'Liability', 'Add', 160001, 910019),
(190101, '2016-09-21 04:56:52', 'Nisal', 'Liability', 'Add', 160002, 910019),
(190102, '2016-09-21 04:57:51', 'Nisal', 'Liability', 'Add', 160003, 910019),
(190103, '2016-09-21 07:13:35', 'Sameera', 'System Login', 'Login', 0, 910023),
(190104, '2016-09-21 07:13:49', 'Sameera', 'Income', 'Accept', 120006, 910023),
(190105, '2016-09-21 07:14:21', 'Sameera', 'Income', 'Add', 120007, 910023),
(190106, '2016-09-21 07:14:36', 'Sameera', 'Expenditure', 'Accept', 130008, 910023),
(190107, '2016-09-21 07:14:39', 'Sameera', 'Expenditure', 'Accept', 130009, 910023),
(190108, '2016-09-21 07:14:41', 'Sameera', 'Expenditure', 'Accept', 130010, 910023),
(190109, '2016-09-21 07:14:48', 'Sameera', 'Expenditure', 'Accept', 130011, 910023),
(190110, '2016-09-21 07:14:51', 'Sameera', 'Expenditure', 'Accept', 130012, 910023),
(190111, '2016-09-21 07:14:53', 'Sameera', 'Expenditure', 'Accept', 130013, 910023),
(190112, '2016-09-21 07:14:55', 'Sameera', 'Expenditure', 'Accept', 130014, 910023),
(190113, '2016-09-21 07:14:57', 'Sameera', 'Expenditure', 'Accept', 130015, 910023),
(190114, '2016-09-21 07:14:59', 'Sameera', 'Expenditure', 'Accept', 130016, 910023),
(190115, '2016-09-21 07:15:01', 'Sameera', 'Expenditure', 'Accept', 130016, 910023),
(190116, '2016-09-21 07:15:03', 'Sameera', 'Expenditure', 'Accept', 130017, 910023),
(190117, '2016-09-21 07:15:06', 'Sameera', 'Expenditure', 'Accept', 130018, 910023),
(190118, '2016-09-21 07:15:08', 'Sameera', 'Expenditure', 'Accept', 130019, 910023),
(190119, '2016-09-21 07:15:10', 'Sameera', 'Expenditure', 'Accept', 130020, 910023),
(190120, '2016-09-21 07:15:13', 'Sameera', 'Expenditure', 'Accept', 130021, 910023),
(190121, '2016-09-21 07:15:27', '', 'System Login', 'Login', 0, 0),
(190122, '2016-09-21 07:15:32', '', 'Expenditure', 'Update', 130020, 0),
(190123, '2016-09-21 07:16:30', '', 'Expenditure', 'Update', 130006, 0),
(190124, '2016-09-21 07:16:41', '', 'Expenditure', 'Update', 130006, 0),
(190125, '2016-09-21 07:17:36', '', 'Expenditure', 'Add', 130022, 0),
(190126, '2016-09-21 07:18:25', '', 'Expenditure', 'Add', 130023, 0),
(190127, '2016-09-21 07:19:40', '', 'Assests', 'Add', 140020, 0),
(190128, '2016-09-21 07:20:12', '', 'Budget Request', 'Accept', 180001, 0),
(190129, '2016-09-21 07:20:26', '', 'Budget', 'Update', 170003, 0),
(190130, '2016-09-21 07:20:43', '', 'Report', 'Balance Sheet', 0, 0),
(190131, '2016-09-21 07:21:08', '', 'Report', 'Cashflow Report', 0, 0),
(190132, '2016-09-21 07:21:26', '', 'Report', 'Bank Statement', 0, 0),
(190133, '2016-09-21 07:21:43', '', 'Report', 'Balance Sheet', 0, 0),
(190134, '2016-09-21 07:21:57', '', 'Report', 'Balance Sheet', 0, 0),
(190135, '2016-09-21 07:22:15', '', 'Report', 'Profit/Loss', 0, 0),
(190136, '2016-09-21 07:23:30', '', 'Income', 'Add', 120008, 0),
(190137, '2016-09-21 07:23:39', '', 'Income', 'Update', 120008, 0),
(190138, '2016-09-21 07:23:51', '', 'System Logout', 'Logout', 0, 0),
(190139, '2016-09-21 07:24:21', 'Sameera', 'System Login', 'Login', 0, 910023),
(190140, '2016-09-21 07:28:56', 'null', 'System Login', 'Login', 0, 0),
(190141, '2016-09-21 07:29:09', 'null', 'Expenditure', 'Update', 130016, 0),
(190142, '2016-09-21 07:30:37', 'null', 'System Login', 'Login', 0, 0),
(190143, '2016-09-21 07:30:51', 'null', 'Expenditure', 'Update', 130021, 0),
(190144, '2016-09-21 07:33:33', 'null', 'Expenditure', 'Update', 130005, 0),
(190145, '2016-09-21 07:34:11', 'null', 'System Login', 'Login', 0, 0),
(190146, '2016-09-21 07:34:22', 'null', 'Report', 'Balance Sheet', 0, 0),
(190147, '2016-09-21 07:34:39', 'null', 'Report', 'Balance Sheet', 0, 0),
(190148, '2016-09-21 07:34:56', 'null', 'Report', 'Profit/Loss', 0, 0),
(190149, '2016-09-21 07:35:17', 'null', 'Report', 'Cashflow Report', 0, 0),
(190150, '2016-09-21 07:35:33', 'null', 'Report', 'Bank Statement', 0, 0),
(190151, '2016-09-21 07:35:44', 'null', 'System Logout', 'Logout', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `food_item`
--

CREATE TABLE `food_item` (
  `food_id` int(6) NOT NULL,
  `food_name` varchar(45) DEFAULT NULL,
  `food_price` varchar(45) DEFAULT NULL,
  `food_item_status` smallint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_item`
--

INSERT INTO `food_item` (`food_id`, `food_name`, `food_price`, `food_item_status`) VALUES
(520000, 'Mixed Fried Rice (Basmathi)', 'Full-280.00,Half-180.00', 1),
(520001, 'Pasta with Cheese Sauce', 'Full-220.00,Half-200.00', 1),
(520002, 'Deviled Chicken', 'Full-320.00,Half-200.00', 1),
(520003, 'Pork Black Curry', 'Full-250.00,Half-210.00', 1),
(520004, 'Battered Mushrooms', 'Full-250.00,Half-210.00', 1),
(520005, 'Mix Vegetable Curry', 'Full-150.00,Half-110.00', 1),
(520006, 'Potato Tempered', 'Full-150.00,Half-110.00', 1),
(520007, 'Vegetable Noodles', 'Full-230.00,Half-210.00', 1),
(520008, 'Papadam', 'Full-150.00,Half-110.00', 1),
(520009, 'Fish Ambulthiyal', 'Full-260.00,Half-210.00', 1),
(520010, 'Ice Cream (Vanilla)', 'Full-150.00,Half-110.00', 1),
(520011, 'Ice Cream (Chocolate)', 'Full-170.00,Half-140.00', 1),
(520012, 'Watalappan ', 'Full-150.00,Half-110.00', 1),
(520013, 'White Rice', 'Full-200.00,Half-180.00', 1),
(520014, 'Noodles', 'Full-220.00,Half-190.00', 1),
(520015, 'String Hoppers', 'Full-250.00,Half-210.00', 1),
(520016, 'Sambol', 'Full-150.00,Half-110.00', 1),
(520017, 'Prawns Curry', 'Full-450.00,Half-410.00', 1),
(520018, 'Cashew Greenpeace Curry', 'Full-180.00,Half-120.00', 1),
(520019, 'Maldives Fish Sambol', 'Full-250.00,Half-210.00', 1),
(520020, 'Chutney', 'Full-350.00,Half-310.00', 1),
(520021, 'Fish Cutlets', 'Full-150.00,Half-110.00', 1),
(520022, 'Potatoes White Curry', 'Full-260.00,Half-210.00', 1),
(520023, 'Gotukola Curry', 'Full-250.00,Half-210.00', 0),
(520024, 'Brinjal Tempered', 'Full-150.00,Half-110.00', 1),
(520025, 'Jelly', 'Full-200.00,Half-190.00', 1),
(520026, 'Ice Coffee', 'Full-150.00,Half-110.00', 1),
(520027, 'Dhal Curry', 'Full-280.00,Half-230.00', 1),
(520028, 'Brinjal Moju', 'Full-150.00,Half-110.00', 1),
(520029, 'Egg Salad', 'Full-150.00,Half-110.00', 1),
(520030, 'Malay Pickle', 'Full-150.00,Half-110.00', 1),
(520031, 'Fried Rice (Keeri Samba)', 'Full-240.00,Half-200.00', 1),
(520032, 'Mushrooms with Garlic Sauce', 'Full-260.00,Half-210.00', 1),
(520033, 'Russian Salad', 'Full-150.00,Half-110.00', 1),
(520034, 'Devilled Prawns', 'Full-350.00,Half-310.00', 1),
(520035, 'Welcome Drink', 'Full-80.00', 1),
(520036, 'Fried Rice (Basmathi)', 'Full-200.00', 1),
(520037, 'Steam Rice', 'Full-100.00', 1),
(520038, 'Fish Stew/Fish Sweet Sauce', 'Full-120.00', 1),
(520039, 'Brinjal Pahi', 'Full-110.00', 1),
(520040, 'Pineapple Red Curry', 'Full-90.00', 1),
(520041, 'Chicken Salad', 'Full-120.00', 1),
(520042, 'Raita Salad', 'Full-100.00', 1),
(520043, 'Chilli Paste', 'Full-70.00', 1),
(520044, 'Fruit Trifle', 'Full-80.00', 1),
(520045, 'Chocolate Biscuit Pudding', 'Full-110.00', 1),
(520046, 'Cut Fruits', 'Full-150.00', 1),
(520047, 'Plain Rice (Basmathi)', 'Full-110.00', 1),
(520048, 'Macaroni with Chili Sauce', 'Full-140.00', 1),
(520049, 'Fish Stew/Ambulthiyal', 'Full-120.00', 1),
(520050, 'Chicken Black Curry', 'Full-150.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee`
--

CREATE TABLE `hr_employee` (
  `employee_id` int(11) NOT NULL,
  `employee_fname` varchar(15) DEFAULT NULL,
  `employee_lname` varchar(15) DEFAULT NULL,
  `employee_nic` varchar(15) DEFAULT NULL,
  `employee_telephone` varchar(10) DEFAULT NULL,
  `employee_address` varchar(50) DEFAULT NULL,
  `employee_sex` varchar(10) DEFAULT NULL,
  `employee_DOB` date DEFAULT NULL,
  `employee_designation` varchar(45) DEFAULT NULL,
  `employee_type` varchar(45) DEFAULT NULL,
  `employee_hourly_rate` varchar(45) DEFAULT '00',
  `employee_basic_salary` varchar(45) DEFAULT '00',
  `employee_department` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hr_employee`
--

INSERT INTO `hr_employee` (`employee_id`, `employee_fname`, `employee_lname`, `employee_nic`, `employee_telephone`, `employee_address`, `employee_sex`, `employee_DOB`, `employee_designation`, `employee_type`, `employee_hourly_rate`, `employee_basic_salary`, `employee_department`) VALUES
(210007, 'Nisal', 'Hewagamage', '952221999V', '0723342215', 'Pannipitiya', 'Male', '1992-09-05', 'Managing Dirtector', 'Permanent', '00', '500000', 'All'),
(210008, 'Neomal', 'Kalutota', '931233414V', '0771223123', 'Nawala', 'Male', '1993-10-23', 'Stock Manager', 'Permanent', '00', '100000', 'Stock'),
(210009, 'Nipun', 'Kalutota', '933213414V', '0771223123', 'Nawala', 'Male', '1983-10-23', 'Stock Controller', 'Permanent', '00', '80000', 'Stock'),
(210010, 'Nirodha', 'Kalutota', '833213414V', '0711223123', 'Nawala', 'Male', '1986-10-13', 'Store Keeper', 'Permanent', '00', '60000', 'Stock'),
(210011, 'Hansini', 'Kalutota', '863213414V', '0711228673', 'Rajagiriya', 'Female', '1983-10-17', 'Store Keeper', 'Permanent', '00', '60000', 'Stock'),
(210012, 'Chathura', 'Herath', '783213414V', '0722228673', 'Rajagiriya', 'Male', '1977-10-13', 'Stock Controller', 'Permanent', '00', '80000', 'Stock'),
(210013, 'Sameera', 'Madushan', '930263621V', '0712541256', 'Colombo 03', 'Male', '1993-02-15', 'Finance Manager', 'Permanent', '00', '100000', 'Finance'),
(210014, 'Supun', 'Asanka', '892541254V', '0724154856', 'Maharagama', 'Male', '1989-09-09', 'Accountant', 'Permanent', '00', '75000', 'Finance'),
(210015, 'Samith', 'Dilantha', '921548752V', '0719709950', 'Boralesgamuwa', 'Male', '1993-05-14', 'Accounts Assistant', 'Permanent', '00', '40000', 'Finance'),
(210016, 'Damith', 'Perera', '925142518V', '0715245841', 'Colombo', 'Male', '1994-02-20', 'Accounts Assistant', 'Permanent', '00', '40000', 'Finance'),
(210017, 'Sandun', 'Bandara', '925845217V', '0714521584', 'Nugegoda', 'Male', '1990-11-15', 'Accounts Assistant', 'Permanent', '00', '40000', 'Finance'),
(210018, 'Rangana', 'Perera', '874585652V', '0713524517', 'Malabe', 'Male', '1985-10-25', 'Accounts Assistant', 'Permanent', '00', '40000', 'Finance'),
(210019, 'Hashini', 'Silva', '902548745V', '0725412547', 'Malabe', 'Female', '1990-12-15', 'Accounts Assistant', 'Permanent', '00', '40000', 'Finance'),
(210020, 'Chethana', 'Arunodh', '941254125V', '0725415588', 'Colombo', 'Male', '1994-05-14', 'Transport Manager', 'Permanent', '00', '60000', 'Transport'),
(210021, 'Ashani', 'Dikowita', '942586957V', '0715245863', 'Malabe', 'Female', '1994-11-02', 'Room Manager', 'Permanent', '00', '80000', 'Room'),
(210022, 'Buddhini', 'Dias', '925486521V', '0713524965', 'Nugegoda', 'Female', '1992-02-14', 'Event Manager', 'Permanent', '00', '100000', 'Event'),
(210023, 'Uthpala', 'Liyanage', '932548564V', '0714524562', 'Kottawa', 'Female', '1993-10-15', 'Restaurant Manager', 'Permanent', '00', '80000', 'Restaurant'),
(210024, 'Dinuka', 'Perera', '952541485V', '0722541215', 'Maharagama', 'Male', '1995-09-05', 'HR Manager', 'Permanent', '00', '100000', 'HR'),
(210025, 'Dilshi', 'Jayalath', '963232326V', '0778364372', 'Galle', 'Female', '1994-09-05', 'Cashier', 'Permanent', '00', '20000', 'Restaurant'),
(210026, 'Yomali', 'Sigera', '674537454V', '0725645375', 'Nugegoda', 'Female', '1993-09-03', 'Cashier', 'Permanent', '00', '20000', 'Restaurant'),
(210027, 'Chethana', 'Arunodh', '957524275V', '0715654547', 'Piliyandala', 'Male', '1995-07-23', 'Cashier', 'Permanent', '00', '20000', 'Restaurant'),
(210028, 'Jayani', 'Chathurangi', '836357356V', '0737567454', 'Galle', 'Female', '1993-05-04', 'Cashier', 'Permanent', '00', '18000', 'Restaurant'),
(210029, 'Samantha', 'Liyanage', '526542635V', '0775436547', 'Piliyandala', 'Male', '1992-05-23', 'Cashier', 'Permanent', '00', '23000', 'Restaurant'),
(210030, 'Senith', 'Perera', '785387345V', '0774326778', 'Galle', 'Male', '1992-07-12', 'Cashier', 'Permanent', '00', '24000', 'Restaurant'),
(210031, 'Vimukthi', 'De Silva', '975453576V', '0784566778', 'Colombo', 'Male', '1992-01-12', 'Cashier', 'Permanent', '00', '24000', 'Restaurant'),
(210032, 'Saranga', 'Dissanayake', '988745377V', '0924567889', 'Colombo', 'Male', '1992-09-12', 'Cashier', 'Permanent', '00', '12000', 'Restaurant'),
(210033, 'Nethmie', 'Wijesinghe', '985653427V', '0715664799', 'Galle', 'Female', '1992-07-12', 'Cashier', 'Permanent', '00', '20000', 'Restaurant'),
(210034, 'Sunil', 'Perera', '950702310V', '0752837634', 'Colombo', 'Female', '1992-05-07', 'Finace Manager', 'Permanent', '', '15000', 'Finance Department'),
(210035, 'Ranjith', 'Perera', '950715826V', '0112509577', 'Colombo', 'Male', '1991-05-15', 'Event Manager', 'Permanent', '', '45000', 'Event Management Department'),
(210036, 'Dilanka', 'Thusith', '950712510V', '0112509766', 'Malabe', 'Male', '1990-11-02', 'Room Manager', 'Permanent', '', '85000', 'Room Mangement Department'),
(210037, 'Padmika', 'Malsri', '950071510V', '0773358366', 'Dehiwala', 'Female', '1989-07-11', 'Stock Manager', 'Permanent', '', '80000', 'Stock Mangement Department'),
(210038, 'Ranil', 'Perera', '920701580V', '0785223471', 'Mahargama', 'Male', '1987-03-03', 'HR Manager', 'Permanent', '', '72000', 'HR Department'),
(210039, 'Manuka', 'Perera', '950201510V', '0752837234', 'Colombo ', 'Male', '1980-06-11', 'Stuart', 'Part Time ', '120', '80000', 'Room Mangement Department'),
(210040, 'Yashoda', 'Permachandra', '950706510V', '0112609788', 'Dehiwala', 'Female', '1989-05-11', 'Clark', 'Part Time ', '110', '80000', 'Room Mangement Department'),
(210041, 'Geshani', 'Perera', '950701520V', '0752837631', 'Nikape', 'Female', '1992-04-08', 'Stuart', 'Part Time ', '132', '80000', 'Room Mangement Department'),
(210042, 'Nuwan', 'Peiris', '932845092V', '0773593824', 'Homagama', 'Male', '1993-12-03', 'Store Keeper', 'Permanent', '00', '50000', 'Stock'),
(210043, 'Ranith', 'Dinuka', '950701510V', '0752837611', 'Colombo', 'Male', '2016-09-15', '', 'Permanent', '', '80000', 'HR Department');

-- --------------------------------------------------------

--
-- Table structure for table `hr_leaves`
--

CREATE TABLE `hr_leaves` (
  `leaves_id` int(11) NOT NULL,
  `leaves_from_date` date DEFAULT NULL,
  `leaves_end_date` date DEFAULT NULL,
  `leaves_resson` varchar(45) DEFAULT NULL,
  `leaves_employee_id` int(11) NOT NULL,
  `leave_status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_salary`
--

CREATE TABLE `hr_salary` (
  `salary_id` int(11) NOT NULL,
  `salary_other_pay` varchar(45) DEFAULT NULL,
  `salary_deduction` varchar(45) DEFAULT NULL,
  `salary_emp_id` int(11) NOT NULL,
  `salary_total` varchar(45) DEFAULT NULL,
  `salary_status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_wage`
--

CREATE TABLE `hr_wage` (
  `wage_id` int(11) NOT NULL,
  `wage_hours_worked` varchar(45) DEFAULT NULL,
  `wage_deduction` varchar(45) DEFAULT NULL,
  `wage_total` varchar(45) DEFAULT NULL,
  `wage_employee_id` int(11) NOT NULL,
  `wage_other_pay` varchar(45) DEFAULT NULL,
  `wage_status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hr_wage`
--

INSERT INTO `hr_wage` (`wage_id`, `wage_hours_worked`, `wage_deduction`, `wage_total`, `wage_employee_id`, `wage_other_pay`, `wage_status`) VALUES
(230001, '90', '5000', '14900.0', 210040, '10000', 'calculate');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(45) NOT NULL,
  `item_units` varchar(45) NOT NULL,
  `item_description` varchar(60) DEFAULT NULL,
  `item_category` int(11) DEFAULT NULL,
  `item_reorder_level` int(11) NOT NULL,
  `item_availability` varchar(45) NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_units`, `item_description`, `item_category`, `item_reorder_level`, `item_availability`) VALUES
(320000, 'Rice', 'kilogram', 'Samba', 310000, 500, 'available'),
(320001, 'Curtain', 'metre', 'Silk', 310003, 100, 'available'),
(320002, 'Event Chair', 'piece', 'Damro red ', 310002, 600, 'available'),
(320003, 'Banana', 'kilogram', 'Kolikuttu', 310000, 425, 'available'),
(320004, 'Wine', 'litre', 'Milk Wine', 310001, 100, 'available'),
(320005, 'Spoons', 'piece', 'silver', 310004, 350, 'available'),
(320010, 'Orange', 'kilogram', 'Australian', 310000, 200, 'available'),
(320011, 'Onion', 'kilogram', 'Red Onion', 310000, 400, 'available'),
(320012, 'Kettle', 'piece', 'Electric Kettle', 310008, 100, 'available'),
(320013, 'Pillow case', 'piece', 'Cotton Pillow cases', 310010, 100, 'available'),
(320014, 'Dish towel', 'piece', '5x5 size towel', 310004, 300, 'available'),
(320015, 'Toilet paper', 'piece', 'Simply soft paper', 310010, 100, 'available'),
(320016, 'Sugar', 'kilogram', 'White sugar', 310000, 400, 'available'),
(320017, 'Hand towel', 'piece', 'Ultra soft hand towel', 310010, 250, 'available'),
(320018, 'Camping tent', 'piece', 'Tough armor tent', 310011, 200, 'available'),
(320019, 'Bedsheet', 'piece', 'XL white bedsheet', 310010, 50, 'available'),
(320020, 'Hanger', 'piece', 'black hanger', 310010, 50, 'available'),
(320021, 'Soap dish', 'piece', 'Light soap ', 310010, 300, 'removed'),
(320022, 'Lemon', 'litre', 'Lemon juice', 310001, 100, 'available'),
(320023, 'Espresso', 'litre', 'Dark reddish crema', 310001, 150, 'available'),
(320024, 'Rope', 'meter', 'Rhino ultradurable', 310011, 60, 'available'),
(320025, 'Hot chocolate', 'litre', 'Extra thick', 310001, 100, 'available'),
(320026, 'Bath towel', 'piece', 'XL white cotton', 310010, 60, 'available'),
(320027, 'Fork', 'piece', 'Silver fork', 310004, 400, 'available'),
(320028, 'Butter knife', 'piece', 'Light silver', 310004, 300, 'available'),
(320029, 'Mattress pad', 'piece', 'Cotton extra soft', 310010, 250, 'available'),
(320030, 'Waste basket', 'piece', 'Plastic medium size', 310012, 30, 'available'),
(320031, 'Toaster', 'piece', 'Electric toaster', 310008, 50, 'available'),
(320032, 'Fanta', 'litre', 'Lemon flavored', 310001, 300, 'removed'),
(320033, 'Coca cola', 'litre', 'Diet cola', 310001, 300, 'removed'),
(320034, 'Room Heater', 'piece', '400W heater', 310008, 200, 'available'),
(320035, 'Chandelier bulb', 'piece', 'Golden 5 40W bulb', 310012, 120, 'available'),
(320036, 'Room carpet', 'meter', '50x50m carpet', 310003, 300, 'available'),
(320037, 'Hall carpet', 'piece', '100x70m red ', 310003, 70, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `item_category_id` int(11) NOT NULL,
  `item_category_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`item_category_id`, `item_category_name`) VALUES
(310001, 'Beverages'),
(310003, 'Cloth'),
(310008, 'Electric Items'),
(310012, 'Event essentials'),
(310000, 'Food '),
(310002, 'Furniture'),
(310004, 'Kitchen Items'),
(310010, 'Room items'),
(310011, 'Travel items');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(6) NOT NULL,
  `menu_des` varchar(500) NOT NULL,
  `menu_price` float(7,2) DEFAULT NULL,
  `menu_status` smallint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_des`, `menu_price`, `menu_status`) VALUES
(550000, 'DISHES : , ,Mixed Fried Rice (Basmathi),Pasta with Cheese Sauce,Deviled Chicken,Pork Black Curry,Battered Mushrooms,Mix Vegetable Curry,Potato Tempered,Vegetable Noodles,Papadam,Fish Ambulthiyal, ,DESSERTS : , ,Ice Cream (Vanilla),Ice Cream (Chocolate),Watalappan ', 2390.00, 1),
(550001, 'DISHES : , ,White Rice,Noodles,String Hoppers,Sambol,Prawns Curry,Cashew Greenpeace Curry,Maldives Fish Sambol,Chutney,Fish Cutlets,Potatoes White Curry,Fish Ambulthiyal,Brinjal Tempered, ,DESSERTS : , ,Ice Cream (Vanilla),Ice Cream (Chocolate),Jelly,Watalappan,Ice Coffee', 2960.00, 1),
(550002, 'DISHES : , ,White Rice,Deviled Chicken,Dhal Curry,Hoppers,Sambol,Cashew Greenpeace Curry,Brinjal Moju,Egg Salad,Fish Cutlets,Malay Pickle,Fish Ambulthiyal,Brinjal Tempered, ,DESSERTS : , ,Ice Cream (Vanilla),Ice Cream (Chocolate),Jelly', 3200.00, 1),
(550003, 'DISHES : , ,Fried Rice (Keeri Samba),Deviled Chicken,Mushrooms with Garlic Sauce,Papadam,Sambol,Dhal Curry,Russian Salad,Brinjal Moju,Egg Salad,Fish Cutlets,Devilled Prawns,Fish Ambulthiyal,Potato Tempered, ,DESSERTS : , ,Ice Cream (Vanilla),Ice Cream (Chocolate),Jelly', 2650.00, 1),
(550004, 'Welcome Drink,Fried Rice (Basmathi),Steam Rice,Pasta with Cheese Sauce,Deviled Chicken,Pork Black Curry,Fish Stew/Fish Sweet Sauce,Brinjal Pahi,Pineapple Red Curry,Mix Vegetable Curry,Battered Mushrooms,Chicken Salad,Raita Salad,Egg Salad,Chilli Paste,Fruit Trifle,Chocolate Biscuit Pudding,Cut Fruits,Ice Cream (Vanilla),Jelly', 4450.00, 1),
(550005, 'Welcome Drink,Fried Rice (Basmathi),Plain Rice (Basmathi),Macaroni with Chili Sauce,Chicken Black Curry,Devilled Prawns,Fish Stew/Ambulthiya,Potato Tempered,Cashew Green Peas Curry,Brinjal Moju,Malay Pickle,Mushrooms with Garlic Sauce,Russian Salad,Fish Cutlets,Egg Salad on Mirror,Watalappam,Coffee Caramel/Chocolate Mousse,Cut Fruits\nJelly\nIce Cream (Vanilla)', 3460.00, 1),
(550006, 'Welcome Drink,Fried Rice (Keeri Samba),Plain Rice,Red Rice,Spicy Noodles,Deviled Chicken,Chicken Black Curry,Fish Ambulthiyal,Potato Tempered,Cashew Green Peas Curry,Maldive Fish Salad,Malay Pickle/Sinhala Pickel,Mix Vegetable Salad,Egg Salad,Fish Cutlets,Watalappam or Fruit Salad,Ice Cream (Vanilla),Coffee Caramel,Jelly', 4590.00, 1),
(550007, 'Welcome Drink,Fried Rice (Keeri Samba),Plain Rice,Noodles,Vegetable Noodles,Deviled Chicken,Fish Ambulthiyal,Cashew Green Peas Curry,Potato Tempered,Brinjal Moju,Malay Pickle,Egg Salad,Fish Cutlets,Papadam,Watalappam/Caramel Pudding,Ice Cream (Vanilla),Fruit Salad,Jelly', 4520.00, 1),
(550008, 'Welcome Drink,Fried Rice (Keeri Samba),Plain Rice,Deviled Chicken/Curry,Fish Ambulthiyal,Potato Tempered,Dhal Curry,Brinjal Moju,Malay Pickle,Vegetable Salad,Fish Cutlets,Papadam,Egg Salad,Watalappam,Ice Cream (Vanilla),Jelly', 3670.00, 1),
(550010, 'Deviled Chicken\nBattered Mushrooms\nMix Vegetable Curry\nPotato Tempered\nIce Cream (Chocolate)\nNoodles\nString Hoppers\nCashew Greenpeace Curry\nBattered Mushrooms\nSambol\nCashew Greenpeace Curry\n', 1000.00, 1),
(550011, 'DISHES : \n \nWhite Rice\nNoodles\nString Hoppers\nSambol\nPrawns Curry\nCashew Greenpeace Curry\nMaldives Fish Sambol\nChutney\nFish Cutlets\nPotatoes White Curry\nFish Ambulthiyal\nBrinjal Tempered\n \nDESSERTS : \n \nIce Cream (Vanilla)\nJelly\nWatalappan\nIce Coffee\nIce Cream (Chocolate)\n', 2970.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_cashier`
--

CREATE TABLE `restaurant_cashier` (
  `cashier_id` int(6) NOT NULL,
  `cashier_fname` varchar(45) DEFAULT NULL,
  `cashier_lname` varchar(45) DEFAULT NULL,
  `cashier_shift_start` time DEFAULT NULL,
  `cashier_shift_end` time DEFAULT NULL,
  `cashier_status` smallint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurant_cashier`
--

INSERT INTO `restaurant_cashier` (`cashier_id`, `cashier_fname`, `cashier_lname`, `cashier_shift_start`, `cashier_shift_end`, `cashier_status`) VALUES
(210025, 'Dilshi', 'Jayalath', '08:30:00', '13:30:00', 1),
(210026, 'Yomali', 'Sigera', '13:30:00', '18:30:00', 1),
(210027, 'Chethana', 'Arunodh', '18:30:00', '23:30:00', 1),
(210028, 'Jayani', 'Chathurangi', '08:30:00', '13:30:00', 0),
(210029, 'Samantha', 'De Silva', '08:30:00', '13:30:00', 1),
(210030, 'Senith', 'Samarakoon', '13:30:00', '18:30:00', 0),
(210031, 'Vimukthi', 'Alahakoon', '13:30:00', '18:30:00', 1),
(210032, 'Saranga', 'Liyanage', '18:30:00', '23:30:00', 1),
(210033, 'Nethmie', 'Pathirana', '18:30:00', '23:30:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_customer`
--

CREATE TABLE `restaurant_customer` (
  `restaurant_customer_nic` varchar(10) NOT NULL,
  `restaurant_customer_name` varchar(45) DEFAULT NULL,
  `restaurant_customer_telephone` varchar(15) DEFAULT NULL,
  `restaurant_customer_email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurant_customer`
--

INSERT INTO `restaurant_customer` (`restaurant_customer_nic`, `restaurant_customer_name`, `restaurant_customer_telephone`, `restaurant_customer_email`) VALUES
('672466427V', 'David De Silva', '+61-345-678-911', 'david@hotmail.com'),
('678944547V', 'Saman Jayathunga', '+94-566-889-123', 'saman@yahoo.com'),
('894253177V', 'Asmeth Ismail', '+51-645-778-915', 'asmeth@gamil.com'),
('895627887V', 'Buddhini Liyanage', '+11-233-688-099', 'buddhini@yahoo.com'),
('896723526V', 'Frank Daniel', '+91-311-567-145', 'frank@gmail.com'),
('918944547V', 'Saman Jayathunga', '+94-566-889-123', 'saman@yahoo.com'),
('926531266V', 'Nadeesha Gamage', '+94-778-678-456', 'nadeesha@gmail.com'),
('933954547V', 'Chethana Arunodh', '+94-572-111-789', 'che@yahoo.com'),
('958351518V', 'Saman Kodagoda', '+94-547-073-672', 'samantha@yahoo.com'),
('958353518V', 'Ashani Dickowita', '+91-111-576-689', 'asha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_order`
--

CREATE TABLE `restaurant_order` (
  `restaurant_order_id` int(6) NOT NULL,
  `restaurant_customer_nic` varchar(10) DEFAULT NULL,
  `order_menu_id` int(6) DEFAULT NULL,
  `order_des` varchar(500) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_status` smallint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurant_order`
--

INSERT INTO `restaurant_order` (`restaurant_order_id`, `restaurant_customer_nic`, `order_menu_id`, `order_des`, `order_date`, `order_status`) VALUES
(510000, '672466427V', 550000, 'Mixed Fried Rice (Basmathi)\n-Half-4\nPasta with Cheese Sauce\n-Full-2', '2016-09-02', 1),
(510001, '895627887V', 550001, 'White Rice\n-Half-2\nPrawns Curry\n-Full-1\nMaldives Fish Sambol\n-Full-1\nBrinjal Tempered\n-Full-1', '2016-09-11', 1),
(510002, '894253177V', 550000, 'Mixed Fried Rice (Basmathi)\n-Half-4\nPasta with Cheese Sauce\n-Full-1\nPork Black Curry\n-Half-1\nMix Vegetable Curry\n-Half-1\nPapadam\n-Half-2\nIce Cream (Vanilla)\n-Half-1', '2016-09-11', 1),
(510003, '896723526V', 550002, 'White Rice\n-Half-1\nCashew Greenpeace Curry\n-Full-1\nFish Ambulthiyal\n-Full-1\nIce Cream (Chocolate)\n-Full-1', '2016-09-12', 1),
(510004, '926531266V', 550001, 'String Hoppers\n-Half-7\nPotatoes White Curry\n-Full-2', '2016-09-12', 1),
(510005, '933954547V', 550003, 'Fried Rice (Keeri Samba)\n-Half-1\nMushrooms with Garlic Sauce\n-Full-2\nDhal Curry\n-Full-2\nDevilled Prawns\n-Full-2', '2016-09-12', 1),
(510006, '958351518V', 550003, 'Egg Salad\n-Half-4\nFish Cutlets\n-Full-2\nRussian Salad\n-Full-2\nIce Cream (Vanilla)\n-Full-2\nJelly\n-Full-1', '2016-09-14', 1),
(510007, '958353518V', 550002, 'White Rice\n-Full-2\nFish Ambulthiyal\n-Full-2\nMalay Pickle\n-Full-2', '2016-09-14', 0),
(510010, '918944547V', 550000, 'Mixed Fried Rice (Basmathi)\n-Full-6-\n', '2016-08-20', 1),
(510011, '678944547V', 550000, 'Pasta with Cheese Sauce\n-Full-2-\n', '2016-08-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_payment`
--

CREATE TABLE `restaurant_payment` (
  `restaurant_payment_id` int(6) NOT NULL,
  `restaurant_payment_cashier_id` int(6) NOT NULL,
  `restaurant_payment_customer_nic` varchar(10) NOT NULL,
  `restaurant_payment_order_id` int(6) NOT NULL,
  `restaurant_payment_amount` float(7,2) DEFAULT NULL,
  `restaurant_payment_credit_or_cash` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurant_payment`
--

INSERT INTO `restaurant_payment` (`restaurant_payment_id`, `restaurant_payment_cashier_id`, `restaurant_payment_customer_nic`, `restaurant_payment_order_id`, `restaurant_payment_amount`, `restaurant_payment_credit_or_cash`) VALUES
(530000, 210025, '672466427V', 510000, 2100.00, 'credit'),
(530001, 210027, '895627887V', 510001, 3600.00, 'cash'),
(530002, 210025, '894253177V', 510002, 2400.00, 'credit'),
(530003, 210027, '896723526V', 510003, 4500.00, 'cash'),
(530004, 210026, '926531266V', 510004, 1600.00, 'credit'),
(530005, 210029, '933954547V', 510005, 2490.00, 'credit'),
(530006, 210030, '958351518V', 510006, 3960.00, 'cash'),
(530007, 210029, '958353518V', 510007, 2360.00, 'credit'),
(530011, 210029, '678944547V', 510011, 440.00, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `room_customer`
--

CREATE TABLE `room_customer` (
  `room_customer_id` int(11) NOT NULL,
  `room_customer_name` varchar(45) DEFAULT NULL,
  `room_customer_nic` varchar(10) NOT NULL,
  `room_customer_address` varchar(45) DEFAULT NULL,
  `room_customer_telno` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_customer`
--

INSERT INTO `room_customer` (`room_customer_id`, `room_customer_name`, `room_customer_nic`, `room_customer_address`, `room_customer_telno`) VALUES
(710001, 'Ashan Grero', '948602920V', 'Malabe', 112561282),
(710002, 'Namal Dias', '928602920V', 'Nugegoda', 112511285),
(710003, 'Lasini Liyanage', '930976857V', 'Kottawa', 987545654);

-- --------------------------------------------------------

--
-- Table structure for table `room_package`
--

CREATE TABLE `room_package` (
  `room_package_packageid` int(11) NOT NULL,
  `room_package_description` varchar(45) DEFAULT NULL,
  `room_package_status` varchar(20) DEFAULT 'Available',
  `room_package_amount` double NOT NULL,
  `room_package_NoofAdults` int(11) DEFAULT NULL,
  `room_package_NoofChildren` int(11) DEFAULT NULL,
  `room_package_roomno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_package`
--

INSERT INTO `room_package` (`room_package_packageid`, `room_package_description`, `room_package_status`, `room_package_amount`, `room_package_NoofAdults`, `room_package_NoofChildren`, `room_package_roomno`) VALUES
(720001, '2 double beds', 'Available', 2000, 2, 3, 16);

-- --------------------------------------------------------

--
-- Table structure for table `room_payments`
--

CREATE TABLE `room_payments` (
  `room_paymentspayment_Id` int(11) NOT NULL,
  `room_payments_cusnic` varchar(10) NOT NULL,
  `room_payments_method` varchar(45) DEFAULT NULL,
  `room_payment_amount` float DEFAULT NULL,
  `room_payments_debitorcredit` varchar(10) DEFAULT NULL,
  `room_payments_date` date DEFAULT NULL,
  `room_payments_desc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_payments`
--

INSERT INTO `room_payments` (`room_paymentspayment_Id`, `room_payments_cusnic`, `room_payments_method`, `room_payment_amount`, `room_payments_debitorcredit`, `room_payments_date`, `room_payments_desc`) VALUES
(760001, '948602920V', 'Money', 8000, 'Credit', '2016-09-20', '');

-- --------------------------------------------------------

--
-- Table structure for table `room_reservedroom`
--

CREATE TABLE `room_reservedroom` (
  `room_reservedRoom_ResId` int(11) NOT NULL,
  `room_reservedRoom_RoomNo` int(11) NOT NULL,
  `room_reservedRoom_cusnic` varchar(10) NOT NULL,
  `room_reservedroom_checkIn` date DEFAULT NULL,
  `room_reservedroom_checkOut` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_reservedroom`
--

INSERT INTO `room_reservedroom` (`room_reservedRoom_ResId`, `room_reservedRoom_RoomNo`, `room_reservedRoom_cusnic`, `room_reservedroom_checkIn`, `room_reservedroom_checkOut`) VALUES
(730000, 1, '948602920V', '2016-09-20', '2016-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `room_roomdetails`
--

CREATE TABLE `room_roomdetails` (
  `room_roomdetails_roomno` int(11) NOT NULL,
  `room_roomdetails_status` varchar(20) DEFAULT 'Available',
  `room_roomdetails_amount` double NOT NULL,
  `room_roomdetails_NoofAdults` int(11) DEFAULT NULL,
  `room_roomdetails_NoofChildren` int(11) DEFAULT NULL,
  `room_roomdetails_roomType` varchar(20) DEFAULT NULL,
  `room_roomdetails_headcount` int(11) DEFAULT NULL,
  `room_roomdetails_Description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_roomdetails`
--

INSERT INTO `room_roomdetails` (`room_roomdetails_roomno`, `room_roomdetails_status`, `room_roomdetails_amount`, `room_roomdetails_NoofAdults`, `room_roomdetails_NoofChildren`, `room_roomdetails_roomType`, `room_roomdetails_headcount`, `room_roomdetails_Description`) VALUES
(1, 'Available', 4000, 1, 0, 'Single bed A/C', 1, 'Free wifi,1 bed'),
(2, 'Available', 3000, 1, 0, 'Single bed Non A/C', 1, 'Free wifi,1 bed'),
(3, 'Available', 8000, 2, 0, 'Double bed A/C', 2, 'Free wifi,1 Double bed'),
(4, 'Available', 6000, 2, 0, 'Double bed Non A/C', 2, 'Free wifi,1 Double bed'),
(5, 'Available', 10000, 2, 1, 'Double bed A/C', 3, 'Free wifi,1 Double bed,1 Single bed'),
(6, 'Available', 9000, 2, 1, 'Double bed Non A/C', 3, 'Free wifi,1 Double bed,1 Single bed'),
(7, 'Available', 12000, 2, 2, 'Double bed A/C', 4, 'Free wifi,2 Double beds'),
(8, 'Available', 15000, 2, 3, 'Double bed A/C', 5, 'Free wifi,2 Double beds,1 Single bed'),
(9, 'Available', 20000, 4, 4, 'Double bed A/C', 8, 'Free wifi,4  Double beds'),
(10, 'Available', 12000, 4, 0, 'Double bed A/C', 4, 'Free wifi,2 Double beds'),
(11, 'Available', 11000, 2, 2, 'Double bed Non A/C', 4, 'Free wifi,2 Double beds'),
(12, 'Available', 14000, 2, 3, 'Double bed Non A/C', 5, 'Free wifi,2 Double beds,1 Single bed'),
(13, 'Available', 19000, 4, 4, 'Double bed Non A/C', 8, 'Free wifi,4 Double beds'),
(14, 'Available', 11000, 4, 0, 'Double bed Non A/C', 4, 'Free wifi,2 Double beds'),
(15, 'Available', 14000, 3, 2, 'Double bed Non A/C', 5, 'Free wifi,2 Double beds,1 Single bed');

-- --------------------------------------------------------

--
-- Table structure for table `room_roomlaundary`
--

CREATE TABLE `room_roomlaundary` (
  `room_roomlaundary_lid` int(11) NOT NULL,
  `room_roomlaundary_cusnic` varchar(10) DEFAULT NULL,
  `room_roomlaundary_cusName` varchar(45) DEFAULT NULL,
  `room_roomlaundary_Desc` varchar(45) DEFAULT NULL,
  `room_roomlaundary_amount` double DEFAULT NULL,
  `room_roomlaundary_date` date DEFAULT NULL,
  `room_roomlaundary_status` varchar(45) DEFAULT 'notdone',
  `room_roomlaundary_Weight` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_roomlaundary`
--

INSERT INTO `room_roomlaundary` (`room_roomlaundary_lid`, `room_roomlaundary_cusnic`, `room_roomlaundary_cusName`, `room_roomlaundary_Desc`, `room_roomlaundary_amount`, `room_roomlaundary_date`, `room_roomlaundary_status`, `room_roomlaundary_Weight`) VALUES
(740001, '930976857V', 'Lasini Liyanage', '2 shirts', 200, '2016-09-20', 'notdone', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_roommaintainance`
--

CREATE TABLE `room_roommaintainance` (
  `room_roommaintainance_product` varchar(30) NOT NULL,
  `room_roommaintainance_Quantity` int(2) DEFAULT NULL,
  `room_roommaintainance_Used` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_roommaintainance`
--

INSERT INTO `room_roommaintainance` (`room_roommaintainance_product`, `room_roommaintainance_Quantity`, `room_roommaintainance_Used`) VALUES
('Shampoo', 79, 21),
('Soap', 60, 40);

-- --------------------------------------------------------

--
-- Table structure for table `room_roomreservation`
--

CREATE TABLE `room_roomreservation` (
  `room_roomreservation_resid` int(11) NOT NULL,
  `room_roomreservation_cusnic` varchar(10) DEFAULT NULL,
  `room_roomreservation_cusname` varchar(45) DEFAULT NULL,
  `room_roomreservation_date` date DEFAULT NULL,
  `room_roomreservation_amount` double NOT NULL,
  `room_roomreservation_type` varchar(45) DEFAULT NULL,
  `room_roomreservation_checkin` date DEFAULT NULL,
  `room_roomreservation_checkout` date DEFAULT NULL,
  `room_roomreservation_status` varchar(20) DEFAULT 'notdone',
  `room_roomreservation_RoomCount` int(11) DEFAULT NULL,
  `room_roomreservation_meals` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_roomreservation`
--

INSERT INTO `room_roomreservation` (`room_roomreservation_resid`, `room_roomreservation_cusnic`, `room_roomreservation_cusname`, `room_roomreservation_date`, `room_roomreservation_amount`, `room_roomreservation_type`, `room_roomreservation_checkin`, `room_roomreservation_checkout`, `room_roomreservation_status`, `room_roomreservation_RoomCount`, `room_roomreservation_meals`) VALUES
(730000, '948602920V', 'Ashan Grero', '2016-09-20', 8000, 'Room', '2016-09-20', '2016-09-20', 'done', 1, 'With Meals');

-- --------------------------------------------------------

--
-- Table structure for table `room_roomserviceorders`
--

CREATE TABLE `room_roomserviceorders` (
  `room_roomserviceorders_rsid` int(11) NOT NULL,
  `room_roomserviceorders_cusnic` varchar(10) DEFAULT NULL,
  `room_roomserviceorders_roomno` int(11) DEFAULT NULL,
  `room_roomserviceorders_noofplates` int(11) DEFAULT NULL,
  `room_roomserviceorders_regular` varchar(45) DEFAULT NULL,
  `room_roomserviceorders_customized` varchar(45) DEFAULT NULL,
  `room_roomserviceorders_date` date DEFAULT NULL,
  `room_roomserviceorders_price` double DEFAULT NULL,
  `room_roomserviceorders_package` varchar(45) DEFAULT NULL,
  `room_roomserviceorder_status` varchar(20) DEFAULT 'notdone',
  `room_roomserviceorder_Description` varchar(500) DEFAULT NULL,
  `room_Restaurant_Status` smallint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_roomserviceorders`
--

INSERT INTO `room_roomserviceorders` (`room_roomserviceorders_rsid`, `room_roomserviceorders_cusnic`, `room_roomserviceorders_roomno`, `room_roomserviceorders_noofplates`, `room_roomserviceorders_regular`, `room_roomserviceorders_customized`, `room_roomserviceorders_date`, `room_roomserviceorders_price`, `room_roomserviceorders_package`, `room_roomserviceorder_status`, `room_roomserviceorder_Description`, `room_Restaurant_Status`) VALUES
(750000, '948602920V', 1, 2, NULL, 'Customized', '2016-09-20', 380, NULL, 'notdone', 'Deviled Chicken-Half,Mixed Fried Rice (Basmathi)-Half,', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `stock_qty` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `item_id`, `stock_qty`) VALUES
(330002, 320000, 465),
(330003, 320001, 360),
(330004, 320002, 405),
(330005, 320003, 555),
(330006, 320004, 155),
(330007, 320005, 540),
(330008, 320010, 205),
(330009, 320011, 325),
(330010, 320012, 105),
(330011, 320013, 350),
(330012, 320014, 400),
(330013, 320015, 400),
(330014, 320016, 0),
(330015, 320017, 0),
(330016, 320018, 150),
(330017, 320019, 60),
(330018, 320020, 0),
(330019, 320021, 0),
(330020, 320022, 160),
(330021, 320023, 0),
(330022, 320024, 70),
(330023, 320025, 0),
(330024, 320026, 65),
(330025, 320027, 0),
(330026, 320028, 0),
(330027, 320029, 0),
(330028, 320030, 60),
(330029, 320031, 70),
(330030, 320032, 0),
(330031, 320033, 0),
(330032, 320034, 0),
(330033, 320035, 0),
(330034, 320036, 0),
(330035, 320037, 75);

-- --------------------------------------------------------

--
-- Table structure for table `stock_purchase`
--

CREATE TABLE `stock_purchase` (
  `stock_purchase_id` int(11) NOT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchase_qty` float NOT NULL,
  `unit_price` double NOT NULL,
  `total_amount` double NOT NULL,
  `stock_purchase_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_purchase`
--

INSERT INTO `stock_purchase` (`stock_purchase_id`, `stock_id`, `supplier_id`, `purchase_qty`, `unit_price`, `total_amount`, `stock_purchase_date`) VALUES
(360001, 330006, 350003, 100, 200, 20000, '2016-09-21 06:02:47'),
(360002, 330029, 350002, 70, 300, 21000, '2016-09-21 06:03:52'),
(360003, 330012, 350006, 400, 105, 42000, '2016-09-21 06:05:06'),
(360004, 330011, 350003, 350, 45, 15750, '2016-09-21 06:06:13'),
(360005, 330013, 350003, 400, 30, 12000, '2016-09-21 06:06:58'),
(360006, 330020, 350000, 160, 80, 12800, '2016-09-21 06:11:29'),
(360007, 330017, 350006, 60, 400, 24000, '2016-09-21 06:14:53'),
(360008, 330024, 350005, 65, 100, 6500, '2016-09-21 06:16:08'),
(360009, 330016, 350000, 150, 400, 60000, '2016-09-21 06:18:46'),
(360010, 330028, 350007, 60, 105, 6300, '2016-09-21 06:21:45'),
(360011, 330022, 350006, 70, 130, 9100, '2016-09-21 06:22:37'),
(360012, 330035, 350002, 75, 300, 22500, '2016-09-21 06:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `stock_transfer`
--

CREATE TABLE `stock_transfer` (
  `stock_transfer_id` int(11) NOT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `transfer_department` varchar(45) NOT NULL,
  `transfer_qty` float NOT NULL,
  `transfer_status` varchar(45) NOT NULL DEFAULT 'ordered',
  `order_date` datetime NOT NULL,
  `transfer_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_transfer`
--

INSERT INTO `stock_transfer` (`stock_transfer_id`, `stock_id`, `transfer_department`, `transfer_qty`, `transfer_status`, `order_date`, `transfer_date`) VALUES
(340001, 330003, 'Room', 270, 'ordered', '2016-09-21 06:00:15', NULL),
(340002, 330016, 'Transport', 120, 'ordered', '2016-09-21 06:00:15', NULL),
(340003, 330035, 'Event', 50, 'ordered', '2016-09-21 06:00:15', NULL),
(340004, 330005, 'Restaurant', 250, 'ordered', '2016-09-21 06:00:16', NULL),
(340005, 330009, 'Restaurant', 100, 'transfered', '2016-09-21 06:00:16', '2016-09-21 06:34:00'),
(340006, 330002, 'Restaurant', 800, 'ordered', '2016-09-21 06:00:16', NULL),
(340007, 330006, 'Restaurant', 60, 'ordered', '2016-09-21 06:25:24', NULL),
(340008, 330010, 'Room', 15, 'ordered', '2016-09-21 06:26:25', NULL),
(340009, 330008, 'Restaurant', 20, 'ordered', '2016-09-21 06:27:33', NULL),
(340010, 330007, 'Restaurant', 210, 'ordered', '2016-09-21 06:28:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_userlog`
--

CREATE TABLE `stock_userlog` (
  `stock_userlog_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stock_transaction_type` varchar(45) NOT NULL,
  `stock_transaction_id` int(11) DEFAULT NULL,
  `stock_transaction_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_userlog`
--

INSERT INTO `stock_userlog` (`stock_userlog_id`, `user_id`, `stock_transaction_type`, `stock_transaction_id`, `stock_transaction_date`) VALUES
(370001, 910020, 'Stock Purchase', 360001, '2016-09-21 06:02:47'),
(370002, 910020, 'Stock Purchase', 360002, '2016-09-21 06:03:52'),
(370003, 910020, 'Stock Purchase', 360003, '2016-09-21 06:05:06'),
(370004, 910020, 'Stock Purchase', 360004, '2016-09-21 06:06:13'),
(370005, 910020, 'Stock Purchase', 360005, '2016-09-21 06:06:58'),
(370006, 910020, 'Stock Purchase', 360006, '2016-09-21 06:11:30'),
(370007, 910020, 'Stock Purchase', 360007, '2016-09-21 06:14:53'),
(370008, 910020, 'Stock Purchase', 360008, '2016-09-21 06:16:08'),
(370009, 910020, 'Stock Purchase', 360009, '2016-09-21 06:18:46'),
(370010, 910020, 'Stock Purchase', 360010, '2016-09-21 06:21:45'),
(370011, 910020, 'Stock Purchase', 360011, '2016-09-21 06:22:38'),
(370012, 910020, 'Stock Purchase', 360012, '2016-09-21 06:24:13'),
(370013, 910020, 'Stock Transfer', 340005, '2016-09-21 06:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(45) NOT NULL,
  `supplier_address` varchar(60) DEFAULT NULL,
  `supplier_contact` int(11) DEFAULT NULL,
  `supplier_email` varchar(45) DEFAULT NULL,
  `supplier_description` varchar(60) DEFAULT NULL,
  `supplier_reg_date` datetime NOT NULL,
  `supplier_availability` varchar(45) NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_contact`, `supplier_email`, `supplier_description`, `supplier_reg_date`, `supplier_availability`) VALUES
(350000, 'Nimal Diaz', 'Malabe', 771213422, 'nimaldiaz@yahoo.com', 'Fast delivery', '2016-08-23 10:14:54', 'available'),
(350002, 'Damith Perera', 'Kandy', 771213644, 'damithperera43@gmail.com', 'Reliable products', '2016-08-23 10:32:01', 'available'),
(350003, 'Saman Fernando', 'Kalutara', 782312342, 'samanfernando@yahoo.com', 'Cheap prices', '2016-08-23 11:56:43', 'available'),
(350004, 'Sunil Perera', 'Malabe', 721213521, 'sunilperera@gmail.lk', 'Fast delivery', '2016-08-23 22:08:16', 'removed'),
(350005, 'Sumal Perera', 'Homagama', 771234652, 'sumalperera@gmail.com', 'Highest Offer', '2016-08-23 22:27:23', 'available'),
(350006, 'Sapumal Perera', 'Pannipitiya', 771213411, 'sapumalperera@gmail.com', 'Fast delivery', '2016-08-24 10:44:43', 'available'),
(350007, 'Amal Perera', 'Kandy', 772123948, 'amalperera@gmail.com', 'Reliable goods', '2016-09-17 02:02:27', 'available'),
(350008, 'Nishantha Pieris', 'Kottawa', 773234598, 'nishanthap34@gmail.com', 'Reliable products', '2016-09-21 06:30:51', 'removed');

-- --------------------------------------------------------

--
-- Table structure for table `system_user`
--

CREATE TABLE `system_user` (
  `system_user_id` int(11) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `access_level` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `last_updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employee_id` int(11) DEFAULT NULL,
  `user_availability` varchar(45) NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_user`
--

INSERT INTO `system_user` (`system_user_id`, `full_name`, `username`, `password`, `access_level`, `department`, `last_updated_date`, `employee_id`, `user_availability`) VALUES
(910019, 'Nisal Hewagamage', 'Nisal', '321', 'System Admin', 'All', '2016-09-20 12:18:11', 210007, 'available'),
(910020, 'Anjalika Jayathilaka', 'Anjalika', '321', 'Admin', 'Stock', '2016-09-16 14:00:23', 210008, 'available'),
(910021, 'Nipun Kalutota', 'Nipun', '321', 'User', 'Stock', '2016-09-16 14:01:54', 210009, 'available'),
(910022, 'Nirodha Kalutota', 'Nirodha', '321', 'User', 'Stock', '2016-09-16 14:04:35', 210010, 'available'),
(910023, 'Sameeha Saleem', 'Sameeha', '321', 'Admin', 'Finance', '2016-09-16 23:27:11', 210013, 'available'),
(910024, 'Supun Asanka', 'Supun', '321', 'Accountant', 'Finance', '2016-09-16 23:27:11', 210014, 'available'),
(910025, 'Samith Dilantha', 'Samith', '321', 'Assistant', 'Finance', '2016-09-16 23:27:11', 210015, 'removed'),
(910026, 'Damith Perera', 'Damith', '321', 'Assistant', 'Finance', '2016-09-17 22:01:06', 210016, 'available'),
(910030, 'Sandun Bandara', 'Sandun', '321', 'Accountant', 'Finance', '2016-09-17 22:19:20', 210017, 'available'),
(910031, 'Arunodh Bandara', 'Arunodh', '321', 'Admin', 'Transport', '2016-09-19 17:43:35', 210020, 'available'),
(910044, 'Sachini Palliyaguru', 'Sachini', '321', 'Admin', 'Room', '2016-09-19 18:04:43', 210021, 'available'),
(910045, 'Tehani Navoda', 'Tehani', '321', 'Admin', 'Event', '2016-09-19 18:04:43', 210022, 'available'),
(910046, 'Lasini Liyanage', 'Lasini', '321', 'Admin', 'Restaurant', '2016-09-19 18:04:43', 210023, 'available'),
(910047, 'Chathu Arunasiri', 'Chathu', '321', 'Admin', 'HR', '2016-09-19 18:04:43', 210024, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `trans_book`
--

CREATE TABLE `trans_book` (
  `idbook` int(11) NOT NULL,
  `pac_name` varchar(45) DEFAULT NULL,
  `No_of_pass` int(3) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trans_book`
--

INSERT INTO `trans_book` (`idbook`, `pac_name`, `No_of_pass`, `status`, `date`, `cusid`) VALUES
(700000, 'Kalutara Adventure ', 5, 'none', 'Wed Sep 21 21:06:54 IST 2016', 24),
(700001, 'package 1', 15, 'none', 'Thu Sep 22 00:00:00 IST 2016', 720000),
(700002, ' Package 2', 12, ' Not Sure ', 'Wed Sep 28 21:38:53 IST 2016', 720001);

-- --------------------------------------------------------

--
-- Table structure for table `trans_customer`
--

CREATE TABLE `trans_customer` (
  `idcustomer` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `nic` varchar(45) NOT NULL,
  `telephone` varchar(13) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trans_customer`
--

INSERT INTO `trans_customer` (`idcustomer`, `name`, `address`, `nic`, `telephone`, `email`) VALUES
(720000, 'Chethana', 'col07, Srilanka ', '952341561V', '0123456789', 'chethana@gmail.com'),
(720001, 'Arunodh', 'Moratuwa', '952341531V', '0716416351', 'Aruno@gmail.com'),
(720002, ' Ashan', ' Makandana,Piliyandala', '922341561X', '0776416351', 'ashan@gmail.com'),
(720003, 'Uthpala', 'col07, Srilanka ', '952341561V', '0770464500', 'uthpala@gmail.com'),
(720004, 'Chamal', 'col07, Srilanka ', '952341561V', '0770646411', 'chamal@gmail.com'),
(720005, 'Dinuka', 'Nugegoda', '992341561V', '0123456789', 'dinuka@gmail.com'),
(720006, 'Janith', 'col07, Srilanka ', '998441561V', '0776416351', 'janioth@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `trans_customize`
--

CREATE TABLE `trans_customize` (
  `idcustom` int(11) NOT NULL,
  `customized_description` varchar(45) NOT NULL,
  `fee_custom` int(11) NOT NULL,
  `place1` varchar(45) NOT NULL,
  `place2` varchar(45) NOT NULL,
  `place3` varchar(45) NOT NULL,
  `days_custom` varchar(45) NOT NULL,
  `date_custom` varchar(45) NOT NULL,
  `vehicleno_custom` varchar(45) NOT NULL,
  `driver_custom` varchar(45) NOT NULL,
  `guide_custom` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trans_customize`
--

INSERT INTO `trans_customize` (`idcustom`, `customized_description`, `fee_custom`, `place1`, `place2`, `place3`, `days_custom`, `date_custom`, `vehicleno_custom`, `driver_custom`, `guide_custom`) VALUES
(730000, 'BBQ', 20000, 'Anuradhapura, Mathara ', '8', '26 ', '8', 'Thu Sep 29 21:07:13 IST 2016', 'own', '003', 'none'),
(730001, 'BBQ', 20000, 'Anuradhapura, Mathara ', '8', '720002', '8', 'Wed Sep 28 21:39:25 IST 2016', 'own', '003', 'none'),
(730002, 'none', 10000, ', Mathara ', '4', '720004', '5', 'Fri Sep 30 21:40:06 IST 2016', 'GE4671', 'own', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `trans_driver`
--

CREATE TABLE `trans_driver` (
  `iddriver` int(11) NOT NULL,
  `driver_nic` varchar(10) NOT NULL,
  `driver_address` varchar(45) NOT NULL,
  `driver_experience` varchar(45) NOT NULL,
  `driver_name` varchar(45) NOT NULL,
  `driver_license` varchar(45) NOT NULL,
  `allocate_vehicle_no` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trans_driver`
--

INSERT INTO `trans_driver` (`iddriver`, `driver_nic`, `driver_address`, `driver_experience`, `driver_name`, `driver_license`, `allocate_vehicle_no`) VALUES
(740000, '012345678V', '45,Piliyandala ', '0123456789', 'Malinga Anuradha ', '012345as ', 'BBJ6237');

-- --------------------------------------------------------

--
-- Table structure for table `trans_expenditures`
--

CREATE TABLE `trans_expenditures` (
  `idexpenditures` int(11) NOT NULL,
  `payid_date` date DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `payment_method` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trans_guide`
--

CREATE TABLE `trans_guide` (
  `idguide` int(11) NOT NULL,
  `guide_name` varchar(45) NOT NULL,
  `guide_address` varchar(45) NOT NULL,
  `guide_nic` varchar(10) NOT NULL,
  `guide_experience` varchar(45) DEFAULT NULL,
  `guide_tel` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trans_item`
--

CREATE TABLE `trans_item` (
  `iditem` int(11) NOT NULL,
  `item_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trans_offers`
--

CREATE TABLE `trans_offers` (
  `idoffers` int(11) NOT NULL,
  `name_of` varchar(45) DEFAULT NULL,
  `date_of` varchar(45) DEFAULT NULL,
  `duration_of` varchar(45) DEFAULT NULL,
  `discount_of` varchar(45) DEFAULT NULL,
  `discrip_of` varchar(45) DEFAULT NULL,
  `id_package` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trans_offers`
--

INSERT INTO `trans_offers` (`idoffers`, `name_of`, `date_of`, `duration_of`, `discount_of`, `discrip_of`, `id_package`) VALUES
(770000, 'Maxa offer', '2016/9/18', '1 month', '20%', 'least two packages ', '20'),
(770001, 'Maxa offer', '2016/9/18', '1 month', '20%', 'Book 3 packagers', '720005'),
(770002, 'Maxa offer', '2016/9/18', '1 month', '20%', 'least two packages ', '720004');

-- --------------------------------------------------------

--
-- Table structure for table `trans_package`
--

CREATE TABLE `trans_package` (
  `idpackage` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `destination` varchar(45) NOT NULL,
  `activity` varchar(45) NOT NULL,
  `fee` int(11) NOT NULL,
  `days` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trans_package`
--

INSERT INTO `trans_package` (`idpackage`, `name`, `destination`, `activity`, `fee`, `days`) VALUES
(780000, 'kalutara Adventure ', 'Kalutara', 'Camping', 5000, 3),
(780001, 'Jaffna fun', 'jaffna ', 'none', 25000, 5),
(780002, ' Package 1', ' Anuradapura', ' none', 9000, 3),
(780003, ' Package 2', ' Hikkaduwa', ' Surffing', 52000, 5),
(780004, ' Package 3', ' Badulla', ' none', 14000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `trans_payment`
--

CREATE TABLE `trans_payment` (
  `idpayment` int(11) NOT NULL,
  `paymentdate` varchar(45) NOT NULL,
  `cusidp` int(11) NOT NULL,
  `paymentmethod` varchar(45) NOT NULL,
  `total` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `paid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trans_payment`
--

INSERT INTO `trans_payment` (`idpayment`, `paymentdate`, `cusidp`, `paymentmethod`, `total`, `balance`, `paid`) VALUES
(710000, 'Thu Sep 22 21:19:45 IST 2016', 25, 'Cash', 5000, 4000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `trans_vehicle`
--

CREATE TABLE `trans_vehicle` (
  `idvehicle` int(10) NOT NULL,
  `type` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `licence` varchar(45) NOT NULL,
  `driverid` int(10) NOT NULL,
  `driveri` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_booking`
--
ALTER TABLE `event_booking`
  ADD PRIMARY KEY (`booking_event_id`,`booking_customer_NIC`),
  ADD KEY `fk_booking_customer_NIC_idx` (`booking_customer_NIC`);

--
-- Indexes for table `event_customer_info`
--
ALTER TABLE `event_customer_info`
  ADD PRIMARY KEY (`customer_NIC`),
  ADD KEY `fk_cus_event_id_idx` (`cus_event_id`);

--
-- Indexes for table `event_decoration`
--
ALTER TABLE `event_decoration`
  ADD PRIMARY KEY (`decor_id`,`decor_event_id`),
  ADD KEY `fk_decor_event_id_idx` (`decor_event_id`);

--
-- Indexes for table `event_food_packages`
--
ALTER TABLE `event_food_packages`
  ADD PRIMARY KEY (`fp_event_id`,`fp_customer_NIC`),
  ADD KEY `fk_fp_cus_nic_idx` (`fp_customer_NIC`);

--
-- Indexes for table `event_hall`
--
ALTER TABLE `event_hall`
  ADD PRIMARY KEY (`hall_name`);

--
-- Indexes for table `event_order`
--
ALTER TABLE `event_order`
  ADD PRIMARY KEY (`event_order_id`);

--
-- Indexes for table `event_payment`
--
ALTER TABLE `event_payment`
  ADD PRIMARY KEY (`event_payment_customer_NIC`);

--
-- Indexes for table `fin_assests`
--
ALTER TABLE `fin_assests`
  ADD PRIMARY KEY (`assests_id`),
  ADD KEY `assests_cashflow_id_idx` (`assests_cashflow_id`);

--
-- Indexes for table `fin_budget`
--
ALTER TABLE `fin_budget`
  ADD PRIMARY KEY (`budget_id`);

--
-- Indexes for table `fin_budget_request`
--
ALTER TABLE `fin_budget_request`
  ADD PRIMARY KEY (`budget_request_id`),
  ADD KEY `request_budget_id_idx` (`request_budget_id`);

--
-- Indexes for table `fin_cashflow`
--
ALTER TABLE `fin_cashflow`
  ADD PRIMARY KEY (`cashflow_id`);

--
-- Indexes for table `fin_expenditure`
--
ALTER TABLE `fin_expenditure`
  ADD PRIMARY KEY (`expense_id`),
  ADD KEY `expense_cashflow_id_idx` (`expense_cashflow_id`);

--
-- Indexes for table `fin_income`
--
ALTER TABLE `fin_income`
  ADD PRIMARY KEY (`income_id`),
  ADD KEY `income_cashflow_id_idx` (`income_cashflow_id`);

--
-- Indexes for table `fin_investment`
--
ALTER TABLE `fin_investment`
  ADD PRIMARY KEY (`investment_id`),
  ADD KEY `investment_cashflow_id_idx` (`investment_cashflow_id`);

--
-- Indexes for table `fin_liability`
--
ALTER TABLE `fin_liability`
  ADD PRIMARY KEY (`liability_id`),
  ADD KEY `liability_cashflow_id_idx` (`liability_cashflow_id`);

--
-- Indexes for table `fin_userlog`
--
ALTER TABLE `fin_userlog`
  ADD PRIMARY KEY (`userlog_id`);

--
-- Indexes for table `food_item`
--
ALTER TABLE `food_item`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `hr_employee`
--
ALTER TABLE `hr_employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `hr_leaves`
--
ALTER TABLE `hr_leaves`
  ADD PRIMARY KEY (`leaves_id`),
  ADD KEY `leaves_employee_id_idx` (`leaves_employee_id`);

--
-- Indexes for table `hr_salary`
--
ALTER TABLE `hr_salary`
  ADD PRIMARY KEY (`salary_id`),
  ADD UNIQUE KEY `salary_emp_id_UNIQUE` (`salary_emp_id`);

--
-- Indexes for table `hr_wage`
--
ALTER TABLE `hr_wage`
  ADD PRIMARY KEY (`wage_id`),
  ADD UNIQUE KEY `wage_employee_id_UNIQUE` (`wage_employee_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_name_UNIQUE` (`item_name`),
  ADD KEY `item_category_idx` (`item_category`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`item_category_id`),
  ADD UNIQUE KEY `item_category_name_UNIQUE` (`item_category_name`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `restaurant_cashier`
--
ALTER TABLE `restaurant_cashier`
  ADD PRIMARY KEY (`cashier_id`);

--
-- Indexes for table `restaurant_customer`
--
ALTER TABLE `restaurant_customer`
  ADD PRIMARY KEY (`restaurant_customer_nic`);

--
-- Indexes for table `restaurant_order`
--
ALTER TABLE `restaurant_order`
  ADD PRIMARY KEY (`restaurant_order_id`),
  ADD KEY `fk7_restaurant_order_menu_id_idx` (`order_menu_id`),
  ADD KEY `fk2_restaurant_order_customer_nic` (`restaurant_customer_nic`);

--
-- Indexes for table `restaurant_payment`
--
ALTER TABLE `restaurant_payment`
  ADD PRIMARY KEY (`restaurant_payment_id`),
  ADD KEY `fk6_payment_cashier_id_idx` (`restaurant_payment_cashier_id`),
  ADD KEY `fk9_payment_order_id_idx` (`restaurant_payment_order_id`),
  ADD KEY `fk5_payment_customer_nic` (`restaurant_payment_customer_nic`);

--
-- Indexes for table `room_customer`
--
ALTER TABLE `room_customer`
  ADD PRIMARY KEY (`room_customer_id`),
  ADD UNIQUE KEY `room_customer_id_UNIQUE` (`room_customer_id`),
  ADD UNIQUE KEY `room_customer_nic_UNIQUE` (`room_customer_nic`);

--
-- Indexes for table `room_package`
--
ALTER TABLE `room_package`
  ADD PRIMARY KEY (`room_package_packageid`),
  ADD UNIQUE KEY `room_package_packageid_UNIQUE` (`room_package_packageid`);

--
-- Indexes for table `room_payments`
--
ALTER TABLE `room_payments`
  ADD PRIMARY KEY (`room_paymentspayment_Id`,`room_payments_cusnic`);

--
-- Indexes for table `room_reservedroom`
--
ALTER TABLE `room_reservedroom`
  ADD PRIMARY KEY (`room_reservedRoom_ResId`,`room_reservedRoom_RoomNo`,`room_reservedRoom_cusnic`);

--
-- Indexes for table `room_roomdetails`
--
ALTER TABLE `room_roomdetails`
  ADD PRIMARY KEY (`room_roomdetails_roomno`),
  ADD UNIQUE KEY `room_roomdetails_roomno_UNIQUE` (`room_roomdetails_roomno`);

--
-- Indexes for table `room_roomlaundary`
--
ALTER TABLE `room_roomlaundary`
  ADD PRIMARY KEY (`room_roomlaundary_lid`);

--
-- Indexes for table `room_roommaintainance`
--
ALTER TABLE `room_roommaintainance`
  ADD PRIMARY KEY (`room_roommaintainance_product`);

--
-- Indexes for table `room_roomreservation`
--
ALTER TABLE `room_roomreservation`
  ADD PRIMARY KEY (`room_roomreservation_resid`);

--
-- Indexes for table `room_roomserviceorders`
--
ALTER TABLE `room_roomserviceorders`
  ADD PRIMARY KEY (`room_roomserviceorders_rsid`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `item_id_idx` (`item_id`);

--
-- Indexes for table `stock_purchase`
--
ALTER TABLE `stock_purchase`
  ADD PRIMARY KEY (`stock_purchase_id`),
  ADD KEY `stock_id_idx` (`stock_id`),
  ADD KEY `stock_purchase_supplier_id_idx` (`supplier_id`);

--
-- Indexes for table `stock_transfer`
--
ALTER TABLE `stock_transfer`
  ADD PRIMARY KEY (`stock_transfer_id`),
  ADD KEY `stock_id_idx` (`stock_id`);

--
-- Indexes for table `stock_userlog`
--
ALTER TABLE `stock_userlog`
  ADD PRIMARY KEY (`stock_userlog_id`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_name_UNIQUE` (`supplier_name`);

--
-- Indexes for table `system_user`
--
ALTER TABLE `system_user`
  ADD PRIMARY KEY (`system_user_id`),
  ADD UNIQUE KEY `user_name_UNIQUE` (`username`),
  ADD KEY `employee_id_idx` (`employee_id`);

--
-- Indexes for table `trans_book`
--
ALTER TABLE `trans_book`
  ADD PRIMARY KEY (`idbook`);

--
-- Indexes for table `trans_customer`
--
ALTER TABLE `trans_customer`
  ADD PRIMARY KEY (`idcustomer`);

--
-- Indexes for table `trans_customize`
--
ALTER TABLE `trans_customize`
  ADD PRIMARY KEY (`idcustom`);

--
-- Indexes for table `trans_driver`
--
ALTER TABLE `trans_driver`
  ADD PRIMARY KEY (`iddriver`);

--
-- Indexes for table `trans_expenditures`
--
ALTER TABLE `trans_expenditures`
  ADD PRIMARY KEY (`idexpenditures`);

--
-- Indexes for table `trans_guide`
--
ALTER TABLE `trans_guide`
  ADD PRIMARY KEY (`idguide`),
  ADD UNIQUE KEY `guide_nic_UNIQUE` (`guide_nic`);

--
-- Indexes for table `trans_item`
--
ALTER TABLE `trans_item`
  ADD PRIMARY KEY (`iditem`);

--
-- Indexes for table `trans_offers`
--
ALTER TABLE `trans_offers`
  ADD PRIMARY KEY (`idoffers`);

--
-- Indexes for table `trans_package`
--
ALTER TABLE `trans_package`
  ADD PRIMARY KEY (`idpackage`);

--
-- Indexes for table `trans_payment`
--
ALTER TABLE `trans_payment`
  ADD PRIMARY KEY (`idpayment`);

--
-- Indexes for table `trans_vehicle`
--
ALTER TABLE `trans_vehicle`
  ADD PRIMARY KEY (`idvehicle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410009;
--
-- AUTO_INCREMENT for table `event_decoration`
--
ALTER TABLE `event_decoration`
  MODIFY `decor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440008;
--
-- AUTO_INCREMENT for table `event_order`
--
ALTER TABLE `event_order`
  MODIFY `event_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=430008;
--
-- AUTO_INCREMENT for table `fin_assests`
--
ALTER TABLE `fin_assests`
  MODIFY `assests_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140021;
--
-- AUTO_INCREMENT for table `fin_budget`
--
ALTER TABLE `fin_budget`
  MODIFY `budget_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170007;
--
-- AUTO_INCREMENT for table `fin_budget_request`
--
ALTER TABLE `fin_budget_request`
  MODIFY `budget_request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180002;
--
-- AUTO_INCREMENT for table `fin_cashflow`
--
ALTER TABLE `fin_cashflow`
  MODIFY `cashflow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110048;
--
-- AUTO_INCREMENT for table `fin_expenditure`
--
ALTER TABLE `fin_expenditure`
  MODIFY `expense_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130024;
--
-- AUTO_INCREMENT for table `fin_income`
--
ALTER TABLE `fin_income`
  MODIFY `income_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120009;
--
-- AUTO_INCREMENT for table `fin_investment`
--
ALTER TABLE `fin_investment`
  MODIFY `investment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150006;
--
-- AUTO_INCREMENT for table `fin_liability`
--
ALTER TABLE `fin_liability`
  MODIFY `liability_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160004;
--
-- AUTO_INCREMENT for table `fin_userlog`
--
ALTER TABLE `fin_userlog`
  MODIFY `userlog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190152;
--
-- AUTO_INCREMENT for table `food_item`
--
ALTER TABLE `food_item`
  MODIFY `food_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=520051;
--
-- AUTO_INCREMENT for table `hr_employee`
--
ALTER TABLE `hr_employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210044;
--
-- AUTO_INCREMENT for table `hr_leaves`
--
ALTER TABLE `hr_leaves`
  MODIFY `leaves_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hr_salary`
--
ALTER TABLE `hr_salary`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hr_wage`
--
ALTER TABLE `hr_wage`
  MODIFY `wage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230002;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320038;
--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `item_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310013;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550012;
--
-- AUTO_INCREMENT for table `restaurant_order`
--
ALTER TABLE `restaurant_order`
  MODIFY `restaurant_order_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510012;
--
-- AUTO_INCREMENT for table `restaurant_payment`
--
ALTER TABLE `restaurant_payment`
  MODIFY `restaurant_payment_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530012;
--
-- AUTO_INCREMENT for table `room_customer`
--
ALTER TABLE `room_customer`
  MODIFY `room_customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=710004;
--
-- AUTO_INCREMENT for table `room_package`
--
ALTER TABLE `room_package`
  MODIFY `room_package_packageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720002;
--
-- AUTO_INCREMENT for table `room_payments`
--
ALTER TABLE `room_payments`
  MODIFY `room_paymentspayment_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=760002;
--
-- AUTO_INCREMENT for table `room_roomdetails`
--
ALTER TABLE `room_roomdetails`
  MODIFY `room_roomdetails_roomno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `room_roomlaundary`
--
ALTER TABLE `room_roomlaundary`
  MODIFY `room_roomlaundary_lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=740002;
--
-- AUTO_INCREMENT for table `room_roomreservation`
--
ALTER TABLE `room_roomreservation`
  MODIFY `room_roomreservation_resid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=730001;
--
-- AUTO_INCREMENT for table `room_roomserviceorders`
--
ALTER TABLE `room_roomserviceorders`
  MODIFY `room_roomserviceorders_rsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750001;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330036;
--
-- AUTO_INCREMENT for table `stock_purchase`
--
ALTER TABLE `stock_purchase`
  MODIFY `stock_purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360013;
--
-- AUTO_INCREMENT for table `stock_transfer`
--
ALTER TABLE `stock_transfer`
  MODIFY `stock_transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340011;
--
-- AUTO_INCREMENT for table `stock_userlog`
--
ALTER TABLE `stock_userlog`
  MODIFY `stock_userlog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370014;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350009;
--
-- AUTO_INCREMENT for table `system_user`
--
ALTER TABLE `system_user`
  MODIFY `system_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=910048;
--
-- AUTO_INCREMENT for table `trans_book`
--
ALTER TABLE `trans_book`
  MODIFY `idbook` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700003;
--
-- AUTO_INCREMENT for table `trans_customer`
--
ALTER TABLE `trans_customer`
  MODIFY `idcustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720007;
--
-- AUTO_INCREMENT for table `trans_customize`
--
ALTER TABLE `trans_customize`
  MODIFY `idcustom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=730003;
--
-- AUTO_INCREMENT for table `trans_driver`
--
ALTER TABLE `trans_driver`
  MODIFY `iddriver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=740001;
--
-- AUTO_INCREMENT for table `trans_expenditures`
--
ALTER TABLE `trans_expenditures`
  MODIFY `idexpenditures` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trans_guide`
--
ALTER TABLE `trans_guide`
  MODIFY `idguide` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trans_offers`
--
ALTER TABLE `trans_offers`
  MODIFY `idoffers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=770003;
--
-- AUTO_INCREMENT for table `trans_package`
--
ALTER TABLE `trans_package`
  MODIFY `idpackage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=780005;
--
-- AUTO_INCREMENT for table `trans_payment`
--
ALTER TABLE `trans_payment`
  MODIFY `idpayment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=710001;
--
-- AUTO_INCREMENT for table `trans_vehicle`
--
ALTER TABLE `trans_vehicle`
  MODIFY `idvehicle` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_booking`
--
ALTER TABLE `event_booking`
  ADD CONSTRAINT `fk2_cus_nic` FOREIGN KEY (`booking_customer_NIC`) REFERENCES `event_customer_info` (`customer_NIC`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_booking_event_id` FOREIGN KEY (`booking_event_id`) REFERENCES `event` (`event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `event_decoration`
--
ALTER TABLE `event_decoration`
  ADD CONSTRAINT `fk_decor_event_id` FOREIGN KEY (`decor_event_id`) REFERENCES `event` (`event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `event_food_packages`
--
ALTER TABLE `event_food_packages`
  ADD CONSTRAINT `fk_fp_cus_nic` FOREIGN KEY (`fp_customer_NIC`) REFERENCES `event_customer_info` (`customer_NIC`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fp_event_id` FOREIGN KEY (`fp_event_id`) REFERENCES `event` (`event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `fin_assests`
--
ALTER TABLE `fin_assests`
  ADD CONSTRAINT `assests_cashflow_id` FOREIGN KEY (`assests_cashflow_id`) REFERENCES `fin_cashflow` (`cashflow_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fin_budget_request`
--
ALTER TABLE `fin_budget_request`
  ADD CONSTRAINT `request_budget_id` FOREIGN KEY (`request_budget_id`) REFERENCES `fin_budget` (`budget_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `fin_expenditure`
--
ALTER TABLE `fin_expenditure`
  ADD CONSTRAINT `expense_cashflow_id` FOREIGN KEY (`expense_cashflow_id`) REFERENCES `fin_cashflow` (`cashflow_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fin_income`
--
ALTER TABLE `fin_income`
  ADD CONSTRAINT `income_cashflow_id` FOREIGN KEY (`income_cashflow_id`) REFERENCES `fin_cashflow` (`cashflow_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fin_investment`
--
ALTER TABLE `fin_investment`
  ADD CONSTRAINT `investment_cashflow_id` FOREIGN KEY (`investment_cashflow_id`) REFERENCES `fin_cashflow` (`cashflow_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fin_liability`
--
ALTER TABLE `fin_liability`
  ADD CONSTRAINT `liability_cashflow_id` FOREIGN KEY (`liability_cashflow_id`) REFERENCES `fin_cashflow` (`cashflow_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_leaves`
--
ALTER TABLE `hr_leaves`
  ADD CONSTRAINT `leaves_employee_id` FOREIGN KEY (`leaves_employee_id`) REFERENCES `hr_employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_salary`
--
ALTER TABLE `hr_salary`
  ADD CONSTRAINT `salary_employee_id` FOREIGN KEY (`salary_emp_id`) REFERENCES `hr_employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hr_wage`
--
ALTER TABLE `hr_wage`
  ADD CONSTRAINT `wage_emp_id` FOREIGN KEY (`wage_employee_id`) REFERENCES `hr_employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_category` FOREIGN KEY (`item_category`) REFERENCES `item_category` (`item_category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurant_order`
--
ALTER TABLE `restaurant_order`
  ADD CONSTRAINT `fk2_restaurant_order_customer_nic` FOREIGN KEY (`restaurant_customer_nic`) REFERENCES `restaurant_customer` (`restaurant_customer_nic`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk3_restaurant_order_menu_id` FOREIGN KEY (`order_menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `restaurant_payment`
--
ALTER TABLE `restaurant_payment`
  ADD CONSTRAINT `fk4_payment_cashier_id` FOREIGN KEY (`restaurant_payment_cashier_id`) REFERENCES `restaurant_cashier` (`cashier_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk5_payment_customer_nic` FOREIGN KEY (`restaurant_payment_customer_nic`) REFERENCES `restaurant_customer` (`restaurant_customer_nic`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk6_payment_order_id` FOREIGN KEY (`restaurant_payment_order_id`) REFERENCES `restaurant_order` (`restaurant_order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `item_id` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock_purchase`
--
ALTER TABLE `stock_purchase`
  ADD CONSTRAINT `stock_purchase_stock_id` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_purchase_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock_transfer`
--
ALTER TABLE `stock_transfer`
  ADD CONSTRAINT `stock_transfer_stock_id` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock_userlog`
--
ALTER TABLE `stock_userlog`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`system_user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `system_user`
--
ALTER TABLE `system_user`
  ADD CONSTRAINT `employee_id` FOREIGN KEY (`employee_id`) REFERENCES `hr_employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
