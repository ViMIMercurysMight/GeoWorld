-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 10 2020 г., 12:37
-- Версия сервера: 5.6.37
-- Версия PHP: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii_world_demo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `continent`
--

CREATE TABLE `continent` (
  `continent_id` int(11) NOT NULL,
  `code` char(2) NOT NULL COMMENT 'Continent code',
  `name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `continent`
--

INSERT INTO `continent` (`continent_id`, `code`, `name`, `description`) VALUES
(1, 'AF', 'Africa', 'The world\'s second largest and second most-populous continent (the first being Asia in both categories)'),
(2, 'AN', 'Antarctica', 'Earth\'s southernmost continent. It contains the geographic South Pole and is situated in the Antarctic region of the Southern Hemisphere'),
(3, 'AS', 'Asia', 'Earth\'s largest and most populous continent, located primarily in the Eastern and Northern Hemispheres'),
(4, 'EU', 'Europe', 'A continent located entirely in the Northern Hemisphere and mostly in the Eastern Hemisphere'),
(5, 'NA', 'North America', 'A continent entirely within the Northern Hemisphere and almost all within the Western Hemisphere'),
(6, 'OC', 'Oceania', 'A continent comprising mainland Australia, Tasmania, New Guinea, Seram, possibly Timor, and neighbouring islands'),
(7, 'SA', 'South America', 'A continent located in the western hemisphere, mostly in the southern hemisphere, with a relatively small portion in the northern hemisphere');

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `code` char(2) NOT NULL COMMENT 'Two-letter country code (ISO 3166-1 alpha-2)',
  `name` varchar(64) NOT NULL COMMENT 'English country name',
  `official_name` varchar(128) NOT NULL COMMENT 'Official English country name',
  `iso3` char(3) NOT NULL COMMENT 'Three-letter country code (ISO 3166-1 alpha-3)',
  `number` smallint(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'Three-digit country number (ISO 3166-1 numeric)',
  `currency` varchar(128) NOT NULL,
  `capital` varchar(128) NOT NULL,
  `area` int(11) NOT NULL,
  `continent_id` int(11) NOT NULL,
  `coords` varchar(255) NOT NULL,
  `display_order` int(3) NOT NULL DEFAULT '900'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`country_id`, `code`, `name`, `official_name`, `iso3`, `number`, `currency`, `capital`, `area`, `continent_id`, `coords`, `display_order`) VALUES
(1, 'AD', 'Andorra', 'Principality of Andorra', 'AND', 020, '[\"EUR\"]', 'Andorra la Vella', 468, 4, '[42.5,1.5]', 7),
(2, 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', 784, '[\"AED\"]', 'Abu Dhabi', 83600, 3, '[24,54]', 232),
(3, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', 004, '[\"AFN\"]', 'Kabul', 652230, 3, '[33,65]', 3),
(4, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', 028, '[\"XCD\"]', 'Saint John\'s', 442, 5, '[17.05,-61.8]', 11),
(5, 'AI', 'Anguilla', 'Anguilla', 'AIA', 660, '[\"XCD\"]', 'The Valley', 91, 5, '[18.25,-63.16666666]', 9),
(6, 'AL', 'Albania', 'Republic of Albania', 'ALB', 008, '[\"ALL\"]', 'Tirana', 28748, 4, '[41,20]', 4),
(7, 'AM', 'Armenia', 'Republic of Armenia', 'ARM', 051, '[\"AMD\"]', 'Yerevan', 29743, 3, '[40,45]', 13),
(8, 'AN', 'Netherlands Antilles', 'Netherlands Antilles', 'ANT', 530, '', '', 0, 5, '', 157),
(9, 'AO', 'Angola', 'Republic of Angola', 'AGO', 024, '[\"AOA\"]', 'Luanda', 1246700, 1, '[-12.5,18.5]', 8),
(10, 'AQ', 'Antarctica', 'Antarctica (the territory South of 60 deg S)', 'ATA', 010, '[]', '', 14000000, 2, '[-90,0]', 10),
(11, 'AR', 'Argentina', 'Argentine Republic', 'ARG', 032, '[\"ARS\"]', 'Buenos Aires', 2780400, 7, '[-34,-64]', 12),
(12, 'AS', 'American Samoa', 'American Samoa', 'ASM', 016, '[\"USD\"]', 'Pago Pago', 199, 6, '[-14.33333333,-170]', 6),
(13, 'AT', 'Austria', 'Republic of Austria', 'AUT', 040, '[\"EUR\"]', 'Vienna', 83871, 4, '[47.33333333,13.33333333]', 16),
(14, 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', 036, '[\"AUD\"]', 'Canberra', 7692024, 6, '[-27,133]', 15),
(15, 'AW', 'Aruba', 'Aruba', 'ABW', 533, '[\"AWG\"]', 'Oranjestad', 180, 5, '[12.5,-69.96666666]', 14),
(16, 'AX', 'Åland', 'Åland Islands', 'ALA', 248, '[\"EUR\"]', 'Mariehamn', 1580, 4, '[60.116667,19.9]', 246),
(17, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', 031, '[\"AZN\"]', 'Baku', 86600, 3, '[40.5,47.5]', 17),
(18, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', 070, '[\"BAM\"]', 'Sarajevo', 51209, 4, '[44,18]', 29),
(19, 'BB', 'Barbados', 'Barbados', 'BRB', 052, '[\"BBD\"]', 'Bridgetown', 430, 5, '[13.16666666,-59.53333333]', 21),
(20, 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', 050, '[\"BDT\"]', 'Dhaka', 147570, 3, '[24,90]', 20),
(21, 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', 056, '[\"EUR\"]', 'Brussels', 30528, 4, '[50.83333333,4]', 23),
(22, 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', 854, '[\"XOF\"]', 'Ouagadougou', 272967, 1, '[13,-2]', 37),
(23, 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', 100, '[\"BGN\"]', 'Sofia', 110879, 4, '[43,25]', 36),
(24, 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', 048, '[\"BHD\"]', 'Manama', 765, 3, '[26,50.55]', 19),
(25, 'BI', 'Burundi', 'Republic of Burundi', 'BDI', 108, '[\"BIF\"]', 'Bujumbura', 27834, 1, '[-3.5,30]', 38),
(26, 'BJ', 'Benin', 'Republic of Benin', 'BEN', 204, '[\"XOF\"]', 'Porto-Novo', 112622, 1, '[9.5,2.25]', 25),
(27, 'BL', 'Saint Barthélemy', 'Saint Barthelemy', 'BLM', 652, '[\"EUR\"]', 'Gustavia', 21, 5, '[18.5,-63.41666666]', 185),
(28, 'BM', 'Bermuda', 'Bermuda', 'BMU', 060, '[\"BMD\"]', 'Hamilton', 54, 5, '[32.33333333,-64.75]', 26),
(29, 'BN', 'Brunei Darussalam', 'Brunei Darussalam', 'BRN', 096, '[\"BND\"]', 'Bandar Seri Begawan', 5765, 3, '[4.5,114.66666666]', 35),
(30, 'BO', 'Bolivia', 'Republic of Bolivia', 'BOL', 068, '[\"BOB\",\"BOV\"]', 'Sucre', 1098581, 7, '[-17,-65]', 28),
(31, 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', 076, '[\"BRL\"]', 'Brasília', 8515767, 7, '[-10,-55]', 32),
(32, 'BS', 'Bahamas', 'Commonwealth of the Bahamas', 'BHS', 044, '[\"BSD\"]', 'Nassau', 13943, 5, '[24.25,-76]', 18),
(33, 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', 064, '[\"BTN\",\"INR\"]', 'Thimphu', 38394, 3, '[27.5,90.5]', 27),
(34, 'BV', 'Bouvet Island', 'Bouvet Island (Bouvetoya)', 'BVT', 074, '[\"NOK\"]', '', 49, 2, '[-54.43333333,3.4]', 31),
(35, 'BW', 'Botswana', 'Republic of Botswana', 'BWA', 072, '[\"BWP\"]', 'Gaborone', 582000, 1, '[-22,24]', 30),
(36, 'BY', 'Belarus', 'Republic of Belarus', 'BLR', 112, '[\"BYN\"]', 'Minsk', 207600, 4, '[53,28]', 22),
(37, 'BZ', 'Belize', 'Belize', 'BLZ', 084, '[\"BZD\"]', 'Belmopan', 22966, 5, '[17.25,-88.75]', 24),
(38, 'CA', 'Canada', 'Canada', 'CAN', 124, '[\"CAD\"]', 'Ottawa', 9984670, 5, '[60,-95]', 2),
(39, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', 166, '[\"AUD\"]', 'West Island', 14, 3, '[-12.5,96.83333333]', 48),
(40, 'CD', 'Congo (Kinshasa)', 'Democratic Republic of the Congo', 'COD', 180, '[\"CDF\"]', 'Kinshasa', 2344858, 1, '[0,25]', 51),
(41, 'CF', 'Central African Republic', 'Central African Republic', 'CAF', 140, '[\"XAF\"]', 'Bangui', 622984, 1, '[7,21]', 43),
(42, 'CG', 'Congo (Brazzaville)', 'Republic of the Congo', 'COG', 178, '[\"XAF\"]', 'Brazzaville', 342000, 1, '[-1,15]', 52),
(43, 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', 756, '[\"CHE\",\"CHF\",\"CHW\"]', 'Bern', 41284, 4, '[47,8]', 214),
(44, 'CI', 'Côte d\'Ivoire', 'Republic of Cote d\'Ivoire', 'CIV', 384, '[\"XOF\"]', 'Yamoussoukro', 322463, 1, '[8,-5]', 55),
(45, 'CK', 'Cook Islands', 'Cook Islands', 'COK', 184, '[\"NZD\",\"CKD\"]', 'Avarua', 236, 6, '[-21.23333333,-159.76666666]', 53),
(46, 'CL', 'Chile', 'Republic of Chile', 'CHL', 152, '[\"CLF\",\"CLP\"]', 'Santiago', 756102, 7, '[-30,-71]', 45),
(47, 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', 120, '[\"XAF\"]', 'Yaoundé', 475442, 1, '[6,12]', 40),
(48, 'CN', 'China', 'People\'s Republic of China', 'CHN', 156, '[\"CNY\"]', 'Beijing', 9706961, 3, '[35,105]', 46),
(49, 'CO', 'Colombia', 'Republic of Colombia', 'COL', 170, '[\"COP\"]', 'Bogotá', 1141748, 7, '[4,-72]', 49),
(50, 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', 188, '[\"CRC\"]', 'San José', 51100, 5, '[10,-84]', 54),
(51, 'CU', 'Cuba', 'Republic of Cuba', 'CUB', 192, '[\"CUC\",\"CUP\"]', 'Havana', 109884, 5, '[21.5,-80]', 57),
(52, 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', 132, '[\"CVE\"]', 'Praia', 4033, 1, '[16,-24]', 41),
(53, 'CX', 'Christmas Island', 'Christmas Island', 'CXR', 162, '[\"AUD\"]', 'Flying Fish Cove', 135, 3, '[-10.5,105.66666666]', 47),
(54, 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', 196, '[\"EUR\"]', 'Nicosia', 9251, 3, '[35,33]', 58),
(55, 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', 203, '[\"CZK\"]', 'Prague', 78865, 4, '[49.75,15.5]', 59),
(56, 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', 276, '[\"EUR\"]', 'Berlin', 357114, 4, '[51,9]', 82),
(57, 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', 262, '[\"DJF\"]', 'Djibouti', 23200, 1, '[11.5,43]', 61),
(58, 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', 208, '[\"DKK\"]', 'Copenhagen', 43094, 4, '[56,10]', 60),
(59, 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', 212, '[\"XCD\"]', 'Roseau', 751, 5, '[15.41666666,-61.33333333]', 62),
(60, 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', 214, '[\"DOP\"]', 'Santo Domingo', 48671, 5, '[19,-70.66666666]', 63),
(61, 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', 012, '[\"DZD\"]', 'Algiers', 2381741, 1, '[28,3]', 5),
(62, 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', 218, '[\"USD\"]', 'Quito', 276841, 7, '[-2,-77.5]', 64),
(63, 'EE', 'Estonia', 'Republic of Estonia', 'EST', 233, '[\"EUR\"]', 'Tallinn', 45227, 4, '[59,26]', 69),
(64, 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', 818, '[\"EGP\"]', 'Cairo', 1002450, 1, '[27,30]', 65),
(65, 'EH', 'Western Sahara', 'Western Sahara', 'ESH', 732, '[\"MAD\",\"DZD\",\"MRO\"]', 'El Aaiún', 266000, 1, '[24.5,-13]', 242),
(66, 'ER', 'Eritrea', 'State of Eritrea', 'ERI', 232, '[\"ERN\"]', 'Asmara', 117600, 1, '[15,39]', 68),
(67, 'ES', 'Spain', 'Kingdom of Spain', 'ESP', 724, '[\"EUR\"]', 'Madrid', 505992, 4, '[40,-4]', 207),
(68, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', 231, '[\"ETB\"]', 'Addis Ababa', 1104300, 1, '[8,38]', 70),
(69, 'FI', 'Finland', 'Republic of Finland', 'FIN', 246, '[\"EUR\"]', 'Helsinki', 338424, 4, '[64,26]', 74),
(70, 'FJ', 'Fiji', 'Republic of the Fiji Islands', 'FJI', 242, '[\"FJD\"]', 'Suva', 18272, 6, '[-18,175]', 73),
(71, 'FK', 'Falkland Islands', 'Falkland Islands (Malvinas)', 'FLK', 238, '[\"FKP\"]', 'Stanley', 12173, 7, '[-51.75,-59]', 71),
(72, 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', 583, '[\"USD\"]', 'Palikir', 702, 6, '[6.91666666,158.25]', 144),
(73, 'FO', 'Faroe Islands', 'Faroe Islands', 'FRO', 234, '[\"DKK\"]', 'Tórshavn', 1393, 4, '[62,-7]', 72),
(74, 'FR', 'France', 'French Republic', 'FRA', 250, '[\"EUR\"]', 'Paris', 551695, 4, '[46,2]', 75),
(75, 'GA', 'Gabon', 'Gabonese Republic', 'GAB', 266, '[\"XAF\"]', 'Libreville', 267668, 1, '[-1,11.75]', 79),
(76, 'GB', 'United Kingdom', 'United Kingdom of Great Britain & Northern Ireland', 'GBR', 826, '[\"GBP\"]', 'London', 242900, 4, '[54,-2]', 233),
(77, 'GD', 'Grenada', 'Grenada', 'GRD', 308, '[\"XCD\"]', 'St. George\'s', 344, 5, '[12.11666666,-61.66666666]', 87),
(78, 'GE', 'Georgia', 'Georgia', 'GEO', 268, '[\"GEL\"]', 'Tbilisi', 69700, 3, '[42,43.5]', 81),
(79, 'GF', 'French Guiana', 'French Guiana', 'GUF', 254, '[\"EUR\"]', 'Cayenne', 83534, 7, '[4,-53]', 76),
(80, 'GG', 'Guernsey', 'Bailiwick of Guernsey', 'GGY', 831, '[\"GBP\"]', 'St. Peter Port', 78, 4, '[49.46666666,-2.58333333]', 91),
(81, 'GH', 'Ghana', 'Republic of Ghana', 'GHA', 288, '[\"GHS\"]', 'Accra', 238533, 1, '[8,-2]', 83),
(82, 'GI', 'Gibraltar', 'Gibraltar', 'GIB', 292, '[\"GIP\"]', 'Gibraltar', 6, 4, '[36.13333333,-5.35]', 84),
(83, 'GL', 'Greenland', 'Greenland', 'GRL', 304, '[\"DKK\"]', 'Nuuk', 2166086, 5, '[72,-40]', 86),
(84, 'GM', 'Gambia', 'Republic of the Gambia', 'GMB', 270, '[\"GMD\"]', 'Banjul', 10689, 1, '[13.46666666,-16.56666666]', 80),
(85, 'GN', 'Guinea', 'Republic of Guinea', 'GIN', 324, '[\"GNF\"]', 'Conakry', 245857, 1, '[11,-10]', 92),
(86, 'GP', 'Guadeloupe', 'Guadeloupe', 'GLP', 312, '[\"EUR\"]', 'Basse-Terre', 1628, 5, '[16.25,-61.583333]', 88),
(87, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', 226, '[\"XAF\"]', 'Malabo', 28051, 1, '[2,10]', 67),
(88, 'GR', 'Greece', 'Hellenic Republic Greece', 'GRC', 300, '[\"EUR\"]', 'Athens', 131990, 4, '[39,22]', 85),
(89, 'GS', 'South Georgia and South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', 239, '[\"GBP\"]', 'King Edward Point', 3903, 2, '[-54.5,-37]', 206),
(90, 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', 320, '[\"GTQ\"]', 'Guatemala City', 108889, 5, '[15.5,-90.25]', 90),
(91, 'GU', 'Guam', 'Guam', 'GUM', 316, '[\"USD\"]', 'Hagåtña', 549, 6, '[13.46666666,144.78333333]', 89),
(92, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', 624, '[\"XOF\"]', 'Bissau', 36125, 1, '[12,-15]', 93),
(93, 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', 328, '[\"GYD\"]', 'Georgetown', 214969, 7, '[5,-59]', 94),
(94, 'HK', 'Hong Kong', 'Hong Kong Special Administrative Region of China', 'HKG', 344, '[\"HKD\"]', 'City of Victoria', 1104, 3, '[22.267,114.188]', 99),
(95, 'HM', 'Heard and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', 334, '[\"AUD\"]', '', 412, 2, '[-53.1,72.51666666]', 96),
(96, 'HN', 'Honduras', 'Republic of Honduras', 'HND', 340, '[\"HNL\"]', 'Tegucigalpa', 112492, 5, '[15,-86.5]', 98),
(97, 'HR', 'Croatia', 'Republic of Croatia', 'HRV', 191, '[\"HRK\"]', 'Zagreb', 56594, 4, '[45.16666666,15.5]', 56),
(98, 'HT', 'Haiti', 'Republic of Haiti', 'HTI', 332, '[\"HTG\",\"USD\"]', 'Port-au-Prince', 27750, 5, '[19,-72.41666666]', 95),
(99, 'HU', 'Hungary', 'Republic of Hungary', 'HUN', 348, '[\"HUF\"]', 'Budapest', 93028, 4, '[47,20]', 100),
(100, 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', 360, '[\"IDR\"]', 'Jakarta', 1904569, 3, '[-5,120]', 103),
(101, 'IE', 'Ireland', 'Ireland', 'IRL', 372, '[\"EUR\"]', 'Dublin', 70273, 4, '[53,-8]', 106),
(102, 'IL', 'Israel', 'State of Israel', 'ISR', 376, '[\"ILS\"]', 'Jerusalem', 20770, 3, '[31.47,35.13]', 108),
(103, 'IM', 'Isle of Man', 'Isle of Man', 'IMN', 833, '[\"GBP\"]', 'Douglas', 572, 4, '[54.25,-4.5]', 107),
(104, 'IN', 'India', 'Republic of India', 'IND', 356, '[\"INR\"]', 'New Delhi', 3287590, 3, '[20,77]', 102),
(105, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory (Chagos Archipelago)', 'IOT', 086, '[\"USD\"]', 'Diego Garcia', 60, 3, '[-6,71.5]', 33),
(106, 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', 368, '[\"IQD\"]', 'Baghdad', 438317, 3, '[33,44]', 105),
(107, 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', 364, '[\"IRR\"]', 'Tehran', 1648195, 3, '[32,53]', 104),
(108, 'IS', 'Iceland', 'Republic of Iceland', 'ISL', 352, '[\"ISK\"]', 'Reykjavik', 103000, 4, '[65,-18]', 101),
(109, 'IT', 'Italy', 'Italian Republic', 'ITA', 380, '[\"EUR\"]', 'Rome', 301336, 4, '[42.83333333,12.83333333]', 109),
(110, 'JE', 'Jersey', 'Bailiwick of Jersey', 'JEY', 832, '[\"GBP\"]', 'Saint Helier', 116, 4, '[49.25,-2.16666666]', 112),
(111, 'JM', 'Jamaica', 'Jamaica', 'JAM', 388, '[\"JMD\"]', 'Kingston', 10991, 5, '[18.25,-77.5]', 110),
(112, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', 400, '[\"JOD\"]', 'Amman', 89342, 3, '[31,36]', 113),
(113, 'JP', 'Japan', 'Japan', 'JPN', 392, '[\"JPY\"]', 'Tokyo', 377930, 3, '[36,138]', 111),
(114, 'KE', 'Kenya', 'Republic of Kenya', 'KEN', 404, '[\"KES\"]', 'Nairobi', 580367, 1, '[1,38]', 115),
(115, 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', 417, '[\"KGS\"]', 'Bishkek', 199951, 3, '[41,75]', 120),
(116, 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', 116, '[\"KHR\"]', 'Phnom Penh', 181035, 3, '[13,105]', 39),
(117, 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', 296, '[\"AUD\"]', 'South Tarawa', 811, 6, '[1.41666666,173]', 116),
(118, 'KM', 'Comoros', 'Union of the Comoros', 'COM', 174, '[\"KMF\"]', 'Moroni', 1862, 1, '[-12.16666666,44.25]', 50),
(119, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Kitts and Nevis', 'KNA', 659, '[\"XCD\"]', 'Basseterre', 261, 5, '[17.33333333,-62.75]', 187),
(120, 'KP', 'Korea, North', 'Democratic People\'s Republic of Korea', 'PRK', 408, '[\"KPW\"]', 'Pyongyang', 120538, 3, '[40,127]', 117),
(121, 'KR', 'Korea, South', 'Republic of Korea', 'KOR', 410, '[\"KRW\"]', 'Seoul', 100210, 3, '[37,127.5]', 118),
(122, 'KW', 'Kuwait', 'State of Kuwait', 'KWT', 414, '[\"KWD\"]', 'Kuwait City', 17818, 3, '[29.5,45.75]', 119),
(123, 'KY', 'Cayman Islands', 'Cayman Islands', 'CYM', 136, '[\"KYD\"]', 'George Town', 264, 5, '[19.5,-80.5]', 42),
(124, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', 398, '[\"KZT\"]', 'Astana', 2724900, 3, '[48,68]', 114),
(125, 'LA', 'Laos', 'Lao People\'s Democratic Republic', 'LAO', 418, '[\"LAK\"]', 'Vientiane', 236800, 3, '[18,105]', 121),
(126, 'LB', 'Lebanon', 'Lebanese Republic', 'LBN', 422, '[\"LBP\"]', 'Beirut', 10452, 3, '[33.83333333,35.83333333]', 123),
(127, 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', 662, '[\"XCD\"]', 'Castries', 616, 5, '[13.88333333,-60.96666666]', 188),
(128, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', 438, '[\"CHF\"]', 'Vaduz', 160, 4, '[47.26666666,9.53333333]', 127),
(129, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', 144, '[\"LKR\"]', 'Colombo', 65610, 3, '[7,81]', 208),
(130, 'LR', 'Liberia', 'Republic of Liberia', 'LBR', 430, '[\"LRD\"]', 'Monrovia', 111369, 1, '[6.5,-9.5]', 125),
(131, 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', 426, '[\"LSL\",\"ZAR\"]', 'Maseru', 30355, 1, '[-29.5,28.5]', 124),
(132, 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', 440, '[\"EUR\"]', 'Vilnius', 65300, 4, '[56,24]', 128),
(133, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', 442, '[\"EUR\"]', 'Luxembourg', 2586, 4, '[49.75,6.16666666]', 129),
(134, 'LV', 'Latvia', 'Republic of Latvia', 'LVA', 428, '[\"EUR\"]', 'Riga', 64559, 4, '[57,25]', 122),
(135, 'LY', 'Libya', 'Libyan Arab Jamahiriya', 'LBY', 434, '[\"LYD\"]', 'Tripoli', 1759540, 1, '[25,17]', 126),
(136, 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', 504, '[\"MAD\"]', 'Rabat', 446550, 1, '[32,-5]', 150),
(137, 'MC', 'Monaco', 'Principality of Monaco', 'MCO', 492, '[\"EUR\"]', 'Monaco', 2, 4, '[43.73333333,7.4]', 146),
(138, 'MD', 'Moldova', 'Republic of Moldova', 'MDA', 498, '[\"MDL\"]', 'Chișinău', 33846, 4, '[47,29]', 145),
(139, 'ME', 'Montenegro', 'Republic of Montenegro', 'MNE', 499, '[\"EUR\"]', 'Podgorica', 13812, 4, '[42.5,19.3]', 148),
(140, 'MF', 'Saint Martin (French part)', 'Saint Martin', 'MAF', 663, '[\"EUR\"]', 'Marigot', 53, 5, '[18.08333333,-63.95]', 189),
(141, 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', 450, '[\"MGA\"]', 'Antananarivo', 587041, 1, '[-20,47]', 132),
(142, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', 584, '[\"USD\"]', 'Majuro', 181, 6, '[9,168]', 138),
(143, 'MK', 'Macedonia', 'Republic of Macedonia', 'MKD', 807, '[\"MKD\"]', 'Skopje', 25713, 4, '[41.83333333,22]', 131),
(144, 'ML', 'Mali', 'Republic of Mali', 'MLI', 466, '[\"XOF\"]', 'Bamako', 1240192, 1, '[17,-4]', 136),
(145, 'MM', 'Myanmar', 'Union of Myanmar', 'MMR', 104, '[\"MMK\"]', 'Naypyidaw', 676578, 3, '[22,98]', 152),
(146, 'MN', 'Mongolia', 'Mongolia', 'MNG', 496, '[\"MNT\"]', 'Ulan Bator', 1564110, 3, '[46,105]', 147),
(147, 'MO', 'Macau', 'Macao Special Administrative Region of China', 'MAC', 446, '[\"MOP\"]', '', 30, 3, '[22.16666666,113.55]', 130),
(148, 'MP', 'Northern Mariana Islands', 'Commonwealth of the Northern Mariana Islands', 'MNP', 580, '[\"USD\"]', 'Saipan', 464, 6, '[15.2,145.75]', 165),
(149, 'MQ', 'Martinique', 'Martinique', 'MTQ', 474, '[\"EUR\"]', 'Fort-de-France', 1128, 5, '[14.666667,-61]', 139),
(150, 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', 478, '[\"MRO\"]', 'Nouakchott', 1030700, 1, '[20,-12]', 140),
(151, 'MS', 'Montserrat', 'Montserrat', 'MSR', 500, '[\"XCD\"]', 'Plymouth', 102, 5, '[16.75,-62.2]', 149),
(152, 'MT', 'Malta', 'Republic of Malta', 'MLT', 470, '[\"EUR\"]', 'Valletta', 316, 4, '[35.83333333,14.58333333]', 137),
(153, 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', 480, '[\"MUR\"]', 'Port Louis', 2040, 1, '[-20.28333333,57.55]', 141),
(154, 'MV', 'Maldives', 'Republic of Maldives', 'MDV', 462, '[\"MVR\"]', 'Malé', 300, 3, '[3.25,73]', 135),
(155, 'MW', 'Malawi', 'Republic of Malawi', 'MWI', 454, '[\"MWK\"]', 'Lilongwe', 118484, 1, '[-13.5,34]', 133),
(156, 'MX', 'Mexico', 'United Mexican States', 'MEX', 484, '[\"MXN\"]', 'Mexico City', 1964375, 5, '[23,-102]', 143),
(157, 'MY', 'Malaysia', 'Malaysia', 'MYS', 458, '[\"MYR\"]', 'Kuala Lumpur', 330803, 3, '[2.5,112.5]', 134),
(158, 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', 508, '[\"MZN\"]', 'Maputo', 801590, 1, '[-18.25,35]', 151),
(159, 'NA', 'Namibia', 'Republic of Namibia', 'NAM', 516, '[\"NAD\",\"ZAR\"]', 'Windhoek', 825615, 1, '[-22,17]', 153),
(160, 'NC', 'New Caledonia', 'New Caledonia', 'NCL', 540, '[\"XPF\"]', 'Nouméa', 18575, 6, '[-21.5,165.5]', 158),
(161, 'NE', 'Niger', 'Republic of Niger', 'NER', 562, '[\"XOF\"]', 'Niamey', 1267000, 1, '[16,8]', 161),
(162, 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', 574, '[\"AUD\"]', 'Kingston', 36, 6, '[-29.03333333,167.95]', 164),
(163, 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', 566, '[\"NGN\"]', 'Abuja', 923768, 1, '[10,8]', 162),
(164, 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', 558, '[\"NIO\"]', 'Managua', 130373, 5, '[13,-85]', 160),
(165, 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', 528, '[\"EUR\"]', 'Amsterdam', 41850, 4, '[52.5,5.75]', 156),
(166, 'NO', 'Norway', 'Kingdom of Norway', 'NOR', 578, '[\"NOK\"]', 'Oslo', 323802, 4, '[62,10]', 166),
(167, 'NP', 'Nepal', 'State of Nepal', 'NPL', 524, '[\"NPR\"]', 'Kathmandu', 147181, 3, '[28,84]', 155),
(168, 'NR', 'Nauru', 'Republic of Nauru', 'NRU', 520, '[\"AUD\"]', 'Yaren', 21, 6, '[-0.53333333,166.91666666]', 154),
(169, 'NU', 'Niue', 'Niue', 'NIU', 570, '[\"NZD\"]', 'Alofi', 260, 6, '[-19.03333333,-169.86666666]', 163),
(170, 'NZ', 'New Zealand', 'New Zealand', 'NZL', 554, '[\"NZD\"]', 'Wellington', 270467, 6, '[-41,174]', 159),
(171, 'OM', 'Oman', 'Sultanate of Oman', 'OMN', 512, '[\"OMR\"]', 'Muscat', 309500, 3, '[21,57]', 167),
(172, 'PA', 'Panama', 'Republic of Panama', 'PAN', 591, '[\"PAB\",\"USD\"]', 'Panama City', 75417, 5, '[9,-80]', 171),
(173, 'PE', 'Peru', 'Republic of Peru', 'PER', 604, '[\"PEN\"]', 'Lima', 1285216, 7, '[-10,-76]', 174),
(174, 'PF', 'French Polynesia', 'French Polynesia', 'PYF', 258, '[\"XPF\"]', 'Papeetē', 4167, 6, '[-15,-140]', 77),
(175, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', 598, '[\"PGK\"]', 'Port Moresby', 462840, 6, '[-6,147]', 172),
(176, 'PH', 'Philippines', 'Republic of the Philippines', 'PHL', 608, '[\"PHP\"]', 'Manila', 342353, 3, '[13,122]', 175),
(177, 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', 586, '[\"PKR\"]', 'Islamabad', 881912, 3, '[30,70]', 168),
(178, 'PL', 'Poland', 'Republic of Poland', 'POL', 616, '[\"PLN\"]', 'Warsaw', 312679, 4, '[52,20]', 177),
(179, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', 666, '[\"EUR\"]', 'Saint-Pierre', 242, 5, '[46.83333333,-56.33333333]', 190),
(180, 'PN', 'Pitcairn', 'Pitcairn Islands', 'PCN', 612, '[\"NZD\"]', 'Adamstown', 47, 6, '[-25.06666666,-130.1]', 176),
(181, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', 630, '[\"USD\"]', 'San Juan', 8870, 5, '[18.25,-66.5]', 179),
(182, 'PS', 'Palestine', 'Occupied Palestinian Territory', 'PSE', 275, '[\"ILS\"]', 'Ramallah', 6220, 3, '[31.9,35.2]', 170),
(183, 'PT', 'Portugal', 'Portuguese Republic', 'PRT', 620, '[\"EUR\"]', 'Lisbon', 92090, 4, '[39.5,-8]', 178),
(184, 'PW', 'Palau', 'Republic of Palau', 'PLW', 585, '[\"USD\"]', 'Ngerulmud', 459, 6, '[7.5,134.5]', 169),
(185, 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', 600, '[\"PYG\"]', 'Asunción', 406752, 7, '[-23,-58]', 173),
(186, 'QA', 'Qatar', 'State of Qatar', 'QAT', 634, '[\"QAR\"]', 'Doha', 11586, 3, '[25.5,51.25]', 180),
(187, 'RE', 'Reunion', 'Reunion', 'REU', 638, '[\"EUR\"]', 'Saint-Denis', 2511, 1, '[-21.15,55.5]', 181),
(188, 'RO', 'Romania', 'Romania', 'ROU', 642, '[\"RON\"]', 'Bucharest', 238391, 4, '[46,25]', 182),
(189, 'RS', 'Serbia', 'Republic of Serbia', 'SRB', 688, '[\"RSD\"]', 'Belgrade', 88361, 4, '[44,21]', 197),
(191, 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', 646, '[\"RWF\"]', 'Kigali', 26338, 1, '[-2,30]', 184),
(192, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', 682, '[\"SAR\"]', 'Riyadh', 2149690, 3, '[25,45]', 195),
(193, 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', 090, '[\"SBD\"]', 'Honiara', 28896, 6, '[-8,159]', 203),
(194, 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', 690, '[\"SCR\"]', 'Victoria', 452, 1, '[-4.58333333,55.66666666]', 198),
(195, 'SD', 'Sudan', 'Republic of Sudan', 'SDN', 736, '[\"SDG\"]', 'Khartoum', 1886068, 1, '[15,30]', 209),
(196, 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', 752, '[\"SEK\"]', 'Stockholm', 450295, 4, '[62,15]', 213),
(197, 'SG', 'Singapore', 'Republic of Singapore', 'SGP', 702, '[\"SGD\"]', 'Singapore', 710, 3, '[1.36666666,103.8]', 200),
(198, 'SH', 'Saint Helena', 'Saint Helena', 'SHN', 654, '', '', 0, 1, '', 186),
(199, 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', 705, '[\"EUR\"]', 'Ljubljana', 20273, 4, '[46.11666666,14.81666666]', 202),
(200, 'SJ', 'Svalbard and Jan Mayen Islands', 'Svalbard & Jan Mayen Islands', 'SJM', 744, '[\"NOK\"]', 'Longyearbyen', -1, 4, '[78,20]', 211),
(201, 'SK', 'Slovakia', 'Slovakia (Slovak Republic)', 'SVK', 703, '[\"EUR\"]', 'Bratislava', 49037, 4, '[48.66666666,19.5]', 201),
(202, 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', 694, '[\"SLL\"]', 'Freetown', 71740, 1, '[8.5,-11.5]', 199),
(203, 'SM', 'San Marino', 'Republic of San Marino', 'SMR', 674, '[\"EUR\"]', 'City of San Marino', 61, 4, '[43.76666666,12.41666666]', 193),
(204, 'SN', 'Senegal', 'Republic of Senegal', 'SEN', 686, '[\"XOF\"]', 'Dakar', 196722, 1, '[14,-14]', 196),
(205, 'SO', 'Somalia', 'Somali Republic', 'SOM', 706, '[\"SOS\"]', 'Mogadishu', 637657, 1, '[10,49]', 204),
(206, 'SR', 'Suriname', 'Republic of Suriname', 'SUR', 740, '[\"SRD\"]', 'Paramaribo', 163820, 7, '[4,-56]', 210),
(207, 'ST', 'Sao Tome and Principe', 'Democratic Republic of Sao Tome and Principe', 'STP', 678, '[\"STD\"]', 'São Tomé', 964, 1, '[1,7]', 194),
(208, 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', 222, '[\"SVC\",\"USD\"]', 'San Salvador', 21041, 5, '[13.83333333,-88.91666666]', 66),
(209, 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', 760, '[\"SYP\"]', 'Damascus', 185180, 3, '[35,38]', 215),
(210, 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', 748, '[\"SZL\"]', 'Lobamba', 17364, 1, '[-26.5,31.5]', 212),
(211, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', 796, '[\"USD\"]', 'Cockburn Town', 948, 5, '[21.75,-71.58333333]', 228),
(212, 'TD', 'Chad', 'Republic of Chad', 'TCD', 148, '[\"XAF\"]', 'N\'Djamena', 1284000, 1, '[15,19]', 44),
(213, 'TF', 'French Southern Lands', 'French Southern Territories', 'ATF', 260, '[\"EUR\"]', 'Port-aux-Français', 7747, 2, '[-49.25,69.167]', 78),
(214, 'TG', 'Togo', 'Togolese Republic', 'TGO', 768, '[\"XOF\"]', 'Lomé', 56785, 1, '[8,1.16666666]', 221),
(215, 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', 764, '[\"THB\"]', 'Bangkok', 513120, 3, '[15,100]', 219),
(216, 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', 762, '[\"TJS\"]', 'Dushanbe', 143100, 3, '[39,71]', 217),
(217, 'TK', 'Tokelau', 'Tokelau', 'TKL', 772, '[\"NZD\"]', 'Fakaofo', 12, 6, '[-9,-172]', 222),
(218, 'TL', 'Timor-Leste', 'Democratic Republic of Timor-Leste', 'TLS', 626, '[\"USD\"]', 'Dili', 14874, 3, '[-8.83333333,125.91666666]', 220),
(219, 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', 795, '[\"TMT\"]', 'Ashgabat', 488100, 3, '[40,60]', 227),
(220, 'TN', 'Tunisia', 'Tunisian Republic', 'TUN', 788, '[\"TND\"]', 'Tunis', 163610, 1, '[34,9]', 225),
(221, 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', 776, '[\"TOP\"]', 'Nuku\'alofa', 747, 6, '[-20,-175]', 223),
(222, 'TR', 'Turkey', 'Republic of Turkey', 'TUR', 792, '[\"TRY\"]', 'Ankara', 783562, 3, '[39,35]', 226),
(223, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', 780, '[\"TTD\"]', 'Port of Spain', 5130, 5, '[11,-61]', 224),
(224, 'TV', 'Tuvalu', 'Tuvalu', 'TUV', 798, '[\"AUD\"]', 'Funafuti', 26, 6, '[-8,178]', 229),
(225, 'TW', 'Taiwan', 'Taiwan', 'TWN', 158, '[\"TWD\"]', 'Taipei', 36193, 3, '[23.5,121]', 216),
(226, 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', 834, '[\"TZS\"]', 'Dodoma', 945087, 1, '[-6,35]', 218),
(227, 'UA', 'Ukraine', 'Ukraine', 'UKR', 804, '[\"UAH\"]', 'Kyiv', 603500, 4, '[49,32]', 231),
(228, 'UG', 'Uganda', 'Republic of Uganda', 'UGA', 800, '[\"UGX\"]', 'Kampala', 241550, 1, '[1,32]', 230),
(229, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', 581, '[\"USD\"]', '', 34, 6, '[19.3,166.633333]', 234),
(230, 'US', 'United States of America', 'United States of America', 'USA', 840, '[\"USD\",\"USN\",\"USS\"]', 'Washington D.C.', 9372610, 5, '[38,-97]', 1),
(231, 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', 858, '[\"UYI\",\"UYU\"]', 'Montevideo', 181034, 7, '[-33,-56]', 236),
(232, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', 860, '[\"UZS\"]', 'Tashkent', 447400, 3, '[41,64]', 237),
(233, 'VA', 'Vatican City', 'Holy See (Vatican City State)', 'VAT', 336, '[\"EUR\"]', 'Vatican City', 0, 4, '[41.9,12.45]', 97),
(234, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', 670, '[\"XCD\"]', 'Kingstown', 389, 5, '[13.25,-61.2]', 191),
(235, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', 862, '[\"VEF\"]', 'Caracas', 916445, 7, '[8,-66]', 239),
(236, 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', 092, '[\"USD\"]', 'Road Town', 151, 5, '[18.431383,-64.62305]', 34),
(237, 'VI', 'Virgin Islands, U.S.', 'United States Virgin Islands', 'VIR', 850, '[\"USD\"]', 'Charlotte Amalie', 347, 5, '[18.35,-64.933333]', 235),
(238, 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', 704, '[\"VND\"]', 'Hanoi', 331212, 3, '[16.16666666,107.83333333]', 240),
(239, 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', 548, '[\"VUV\"]', 'Port Vila', 12189, 6, '[-16,167]', 238),
(240, 'WF', 'Wallis and Futuna Islands', 'Wallis and Futuna', 'WLF', 876, '[\"XPF\"]', 'Mata-Utu', 142, 6, '[-13.3,-176.2]', 241),
(241, 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', 882, '[\"WST\"]', 'Apia', 2842, 6, '[-13.58333333,-172.33333333]', 192),
(242, 'YE', 'Yemen', 'Yemen', 'YEM', 887, '[\"YER\"]', 'Sana\'a', 527968, 3, '[15,48]', 243),
(243, 'YT', 'Mayotte', 'Mayotte', 'MYT', 175, '[\"EUR\"]', 'Mamoudzou', 374, 1, '[-12.83333333,45.16666666]', 142),
(244, 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', 710, '[\"ZAR\"]', 'Pretoria', 1221037, 1, '[-29,24]', 205),
(245, 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', 894, '[\"ZMW\"]', 'Lusaka', 752612, 1, '[-15,30]', 244),
(246, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', 716, '[\"ZWL\"]', 'Harare', 390757, 1, '[-20,30]', 245);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `continent`
--
ALTER TABLE `continent`
  ADD PRIMARY KEY (`continent_id`);

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `idx_code` (`code`) USING BTREE,
  ADD KEY `continent_id` (`continent_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `continent`
--
ALTER TABLE `continent`
  MODIFY `continent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `country_ibfk_1` FOREIGN KEY (`continent_id`) REFERENCES `continent` (`continent_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
