-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2023 at 10:01 PM
-- Server version: 10.6.12-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ua820988_lasagna`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_LCs`
-- (See below for the actual view)
--
CREATE TABLE `all_LCs` (
`id` int(11)
,`name` varchar(400)
,`cb_address` text
,`cb_city` text
,`cb_state` text
,`cb_zip` text
,`county` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_new_requests`
-- (See below for the actual view)
--
CREATE TABLE `all_new_requests` (
`id` int(11)
,`status` text
,`entrydate` datetime
,`requestdate` datetime
,`matchdate` date
,`rdapprovedate` date
,`approvedate` date
,`scheduledate` datetime
,`deliverydate` datetime
,`firstname` varchar(255)
,`lastname` varchar(255)
,`mobile` text
,`email` varchar(255)
,`address` varchar(255)
,`address1` varchar(255)
,`address2` text
,`city` text
,`state` text
,`zip` text
,`lat` varchar(255)
,`lon` varchar(255)
,`timezone` text
,`adults` int(11)
,`kids` int(11)
,`familysize` int(11)
,`about` text
,`restrictions` text
,`vegetarian` text
,`vegan` text
,`glutenfree` text
,`dairyfree` text
,`nutallergy` text
,`otherallergy` text
,`allergyinfo` text
,`goodness` text
,`matchmama` text
,`mamanotes` text
,`priority` int(11)
,`latlonkey` varchar(255)
,`distance` decimal(13,2)
,`vetted` int(11)
,`source` varchar(255)
,`othersource` varchar(255)
,`county` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_requests`
-- (See below for the actual view)
--
CREATE TABLE `all_requests` (
`id` int(11)
,`status` mediumtext
,`entrydate` datetime /* mariadb-5.3 */
,`requestdate` datetime /* mariadb-5.3 */
,`matchdate` datetime /* mariadb-5.3 */
,`rdapprovedate` date
,`approvedate` datetime /* mariadb-5.3 */
,`scheduledate` datetime /* mariadb-5.3 */
,`deliverydate` datetime /* mariadb-5.3 */
,`firstname` mediumtext
,`lastname` mediumtext
,`mobile` mediumtext
,`email` varchar(255)
,`address` varchar(255)
,`address1` mediumtext
,`address2` mediumtext
,`city` mediumtext
,`state` mediumtext
,`zip` mediumtext
,`co` mediumtext
,`lat` varchar(255)
,`lon` varchar(255)
,`timezone` mediumtext
,`adults` int(11)
,`kids` int(11)
,`familysize` int(11)
,`about` mediumtext
,`restrictions` mediumtext
,`vegetarian` mediumtext
,`vegan` mediumtext
,`glutenfree` mediumtext
,`dairyfree` mediumtext
,`nutallergy` mediumtext
,`otherallergy` mediumtext
,`allergyinfo` mediumtext
,`goodness` mediumtext
,`matchmama` mediumtext
,`mamanotes` mediumtext
,`priority` int(11)
,`latlonkey` varchar(255)
,`distance` decimal(13,2)
,`vetted` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_requests_source`
-- (See below for the actual view)
--
CREATE TABLE `all_requests_source` (
`id` int(11)
,`status` mediumtext
,`entrydate` datetime /* mariadb-5.3 */
,`requestdate` datetime /* mariadb-5.3 */
,`matchdate` datetime /* mariadb-5.3 */
,`rdapprovedate` date
,`approvedate` datetime /* mariadb-5.3 */
,`scheduledate` datetime /* mariadb-5.3 */
,`deliverydate` datetime /* mariadb-5.3 */
,`firstname` mediumtext
,`lastname` mediumtext
,`mobile` mediumtext
,`email` varchar(255)
,`address` varchar(255)
,`address1` mediumtext
,`address2` mediumtext
,`city` mediumtext
,`state` mediumtext
,`zip` mediumtext
,`CO` mediumtext
,`lat` varchar(255)
,`lon` varchar(255)
,`timezone` mediumtext
,`adults` int(11)
,`kids` int(11)
,`familysize` int(11)
,`about` mediumtext
,`restrictions` mediumtext
,`vegetarian` mediumtext
,`vegan` mediumtext
,`glutenfree` mediumtext
,`dairyfree` mediumtext
,`nutallergy` mediumtext
,`otherallergy` mediumtext
,`allergyinfo` mediumtext
,`goodness` mediumtext
,`matchmama` mediumtext
,`mamanotes` mediumtext
,`priority` int(11)
,`latlonkey` varchar(255)
,`distance` decimal(13,2)
,`vetted` int(11)
,`source` varchar(255)
,`othersource` varchar(255)
,`matchregion` mediumtext
,`matched_with` varchar(255)
,`latloncheck` mediumtext
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `avgwaittime_tableau`
-- (See below for the actual view)
--
CREATE TABLE `avgwaittime_tableau` (
`avgwaittimeindays` decimal(10,4)
,`zip` mediumtext
,`country` mediumtext
,`state` mediumtext
,`districtname` varchar(255)
,`districtid` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `delivery_tableau`
-- (See below for the actual view)
--
CREATE TABLE `delivery_tableau` (
`deliverydate` datetime /* mariadb-5.3 */
,`requestid` int(11)
,`chef` mediumtext
,`requestdate` datetime /* mariadb-5.3 */
,`state` mediumtext
,`status` mediumtext
,`zip` mediumtext
,`adults` int(11)
,`kids` int(11)
,`familysize` int(11)
,`districtname` varchar(255)
,`districtid` int(11)
,`country` mediumtext
,`priority` int(11)
,`source` varchar(255)
,`othersource` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `InactiveUsers`
--

CREATE TABLE `InactiveUsers` (
  `id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `firstname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `middlename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `lastname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT 0,
  `message_last_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message_number_sent` int(11) NOT NULL DEFAULT 0,
  `avatar` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `avatarapproved` tinyint(4) NOT NULL DEFAULT 1,
  `canvas` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `canvasapproved` tinyint(4) NOT NULL DEFAULT 1,
  `canvasposition` tinyint(4) NOT NULL DEFAULT 50,
  `approved` tinyint(4) NOT NULL DEFAULT 1,
  `cb_dateapproved` date DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT 1,
  `cb_dateconfirmed` date DEFAULT NULL,
  `lastupdatedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `registeripaddr` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `cbactivation` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `banned` tinyint(4) NOT NULL DEFAULT 0,
  `banneddate` datetime DEFAULT NULL,
  `unbanneddate` datetime DEFAULT NULL,
  `bannedby` int(11) DEFAULT NULL,
  `unbannedby` int(11) DEFAULT NULL,
  `bannedreason` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `acceptedterms` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `acceptedtermsconsent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cb_mamaavail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamastart` date DEFAULT NULL,
  `cb_pausedate` date DEFAULT NULL,
  `cb_mamapausenotes` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamafreq` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamacap` int(11) DEFAULT NULL,
  `cb_mamafillin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamaradius` int(11) DEFAULT NULL,
  `cb_mamacooks` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cb_mobile` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_phone` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamasmsok` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_roles` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_streetaddress` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_city` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_state` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_zip` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_goodness` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_mamamisc` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamasocial` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_fbreglink` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamaleader` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamalat` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamalon` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamatzone` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_map` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_facebookid` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_source` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_othersource` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamalmnotes` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_hidedelivered` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_newmatches` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_weeksmatches` int(11) DEFAULT NULL,
  `cb_mamamatches` int(11) DEFAULT NULL,
  `cb_mamadeliveries` int(11) DEFAULT NULL,
  `cb_8weekheader` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_week1cap` int(11) DEFAULT NULL,
  `cb_week2cap` int(11) DEFAULT NULL,
  `cb_week3cap` int(11) DEFAULT NULL,
  `cb_week4cap` int(11) DEFAULT NULL,
  `cb_week5cap` int(11) DEFAULT NULL,
  `cb_week6cap` int(11) DEFAULT NULL,
  `cb_week7cap` int(11) DEFAULT NULL,
  `cb_week8cap` int(11) DEFAULT NULL,
  `cb_week1avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_week2avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_week3avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_week4avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_week5avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_week6avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_week8avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_week7avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_leaderlmlate` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_leaderlmmissed` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_leaderlmmoved` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_leaderlmpaused` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotepausedate` date DEFAULT NULL,
  `cb_lmremotestart` date DEFAULT NULL,
  `cb_leaderreqcanceled` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremoteselect` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremoteavail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotefreq` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotecap` int(11) DEFAULT NULL,
  `cb_lmremoteradius` int(11) DEFAULT NULL,
  `cb_lmremoteweek1cap` int(11) DEFAULT NULL,
  `cb_lmremoteweek2cap` int(11) DEFAULT NULL,
  `cb_lmremoteweek3cap` int(11) DEFAULT NULL,
  `cb_lmremoteweek4cap` int(11) DEFAULT NULL,
  `cb_lmremoteweek5cap` int(11) DEFAULT NULL,
  `cb_lmremoteweek6cap` int(11) DEFAULT NULL,
  `cb_lmremoteweek7cap` int(11) DEFAULT NULL,
  `cb_lmremoteweek8cap` int(11) DEFAULT NULL,
  `cb_lmremoteconfirm` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotemama` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotemama2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotemamanotes` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotemamaid` int(11) DEFAULT NULL,
  `cb_lmremoteblockmama` tinyint(3) UNSIGNED DEFAULT NULL,
  `template_profile` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_cookieacceptdate` date DEFAULT NULL,
  `cb_mama1stmatch` date DEFAULT NULL,
  `cb_watchedvideo1` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_watchedvideo2` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_watchedvideo3` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_questions` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_acceptedterms` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremoteweek1avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteweek2avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteweek3avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteweek4avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteweek5avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteweek6avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteweek7avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteweek8avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_assignleader` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_assigndirector` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremotenewmatches` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotedistrict` text DEFAULT NULL,
  `cb_lmremoteconfirmnotes` text DEFAULT NULL,
  `cb_goodness2` tinyint(3) NOT NULL,
  `cb_userid` text NOT NULL,
  `cb_fullname` text NOT NULL,
  `cb_acceptedemails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_activevolunteers`
-- (See below for the actual view)
--
CREATE TABLE `love_activevolunteers` (
`firstname` varchar(100)
,`lastname` varchar(100)
,`email` varchar(100)
,`cb_mamastart` date
,`cb_mamaavail` text
,`cb_mamacap` int(11)
,`cb_mamafreq` text
,`cb_mama1stmatch` date
,`cb_zip` text
,`cb_state` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_Active_RD_RL_LC`
-- (See below for the actual view)
--
CREATE TABLE `love_Active_RD_RL_LC` (
`RD_ID` int(11)
,`RD` varchar(400)
,`RL_ID` int(11)
,`RL` varchar(400)
,`RLemail` varchar(100)
,`LC_ID` int(11)
,`LCfirstname` varchar(100)
,`LClastname` varchar(100)
,`LCemail` varchar(100)
,`LC_zip` text
,`LC_state` text
,`LC_startdate` date
,`primary_city` varchar(255)
,`districtname` varchar(255)
,`districtid` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_ALL_RD_RL_LC`
-- (See below for the actual view)
--
CREATE TABLE `love_ALL_RD_RL_LC` (
`RD_ID` int(11)
,`RD` varchar(400)
,`RL_ID` int(11)
,`RL` varchar(400)
,`RLemail` varchar(100)
,`LC_ID` int(11)
,`LCfirstname` varchar(100)
,`LClastname` varchar(100)
,`LCemail` varchar(100)
,`LC_zip` text
,`LC_state` text
,`primary_city` varchar(255)
,`districtname` varchar(255)
,`districtid` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `love_comprofiler`
--

CREATE TABLE `love_comprofiler` (
  `id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `firstname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `middlename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `lastname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT 0,
  `message_last_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message_number_sent` int(11) NOT NULL DEFAULT 0,
  `avatar` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `avatarapproved` tinyint(4) NOT NULL DEFAULT 1,
  `canvas` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `canvasapproved` tinyint(4) NOT NULL DEFAULT 1,
  `canvasposition` tinyint(4) NOT NULL DEFAULT 50,
  `approved` tinyint(4) NOT NULL DEFAULT 1,
  `cb_dateapproved` date DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT 1,
  `cb_dateconfirmed` date DEFAULT NULL,
  `lastupdatedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `registeripaddr` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `cbactivation` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `banned` tinyint(4) NOT NULL DEFAULT 0,
  `banneddate` datetime DEFAULT NULL,
  `unbanneddate` datetime DEFAULT NULL,
  `bannedby` int(11) DEFAULT NULL,
  `unbannedby` int(11) DEFAULT NULL,
  `bannedreason` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `acceptedterms` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `acceptedtermsconsent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cb_mamaavail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamastart` date DEFAULT NULL,
  `cb_pausedate` date DEFAULT NULL,
  `cb_mamapausenotes` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamafreq` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamacap` int(11) DEFAULT NULL,
  `cb_mamafillin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamaradius` int(11) DEFAULT NULL,
  `cb_mamacooks` mediumtext DEFAULT NULL,
  `cb_mobile` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_phone` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamasmsok` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_roles` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_streetaddress` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_city` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_state` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_zip` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_country` text DEFAULT NULL,
  `cb_goodness` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_mamamisc` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamasocial` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_fbreglink` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamaleader` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamalat` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamalon` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamatzone` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_map` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_facebookid` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_source` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_othersource` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_mamalmnotes` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_hidedelivered` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_newmatches` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_weeksmatches` int(11) DEFAULT NULL,
  `cb_mamamatches` int(11) DEFAULT NULL,
  `cb_mamadeliveries` int(11) DEFAULT NULL,
  `cb_schedule` text DEFAULT NULL,
  `cb_week1cap` int(11) DEFAULT NULL,
  `cb_week2cap` int(11) DEFAULT NULL,
  `cb_week3cap` int(11) DEFAULT NULL,
  `cb_week4cap` int(11) DEFAULT NULL,
  `cb_week5cap` int(11) DEFAULT NULL,
  `cb_week6cap` int(11) DEFAULT NULL,
  `cb_week7cap` int(11) DEFAULT NULL,
  `cb_week8cap` int(11) DEFAULT NULL,
  `cb_week1avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_week2avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_week3avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_week4avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_week5avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_week6avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_week8avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_week7avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_leaderlmlate` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_leaderlmmissed` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_leaderlmmoved` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_leaderlmpaused` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotepausedate` date DEFAULT NULL,
  `cb_lmremotestart` date DEFAULT NULL,
  `cb_leaderreqcanceled` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremoteselect` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremoteavail` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotefreq` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotecap` int(11) DEFAULT NULL,
  `cb_lmremoteradius` int(11) DEFAULT NULL,
  `cb_lmremoteweek1cap` int(11) DEFAULT NULL,
  `cb_lmremoteweek2cap` int(11) DEFAULT NULL,
  `cb_lmremoteweek3cap` int(11) DEFAULT NULL,
  `cb_lmremoteweek4cap` int(11) DEFAULT NULL,
  `cb_lmremoteweek5cap` int(11) DEFAULT NULL,
  `cb_lmremoteweek6cap` int(11) DEFAULT NULL,
  `cb_lmremoteweek7cap` int(11) DEFAULT NULL,
  `cb_lmremoteweek8cap` int(11) DEFAULT NULL,
  `cb_lmremoteconfirm` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotemama` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotemama2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotemamanotes` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotemamaid` int(11) DEFAULT NULL,
  `cb_lmremoteblockmama` tinyint(3) UNSIGNED DEFAULT NULL,
  `template_profile` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_cookieacceptdate` date DEFAULT NULL,
  `cb_mama1stmatch` date DEFAULT NULL,
  `cb_watchedvideo1` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_watchedvideo2` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_watchedvideo3` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_watchedvideolg` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_questions` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_acceptedterms` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremoteweek1avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteweek2avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteweek3avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteweek4avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteweek5avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteweek6avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteweek7avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteweek8avail` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_assignleader` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_assigndirector` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremotenewmatches` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cb_lmremotedistrict` text DEFAULT NULL,
  `cb_lmremoteconfirmnotes` text DEFAULT NULL,
  `cb_ll_newsletter` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_userid` text DEFAULT NULL,
  `cb_fullname` text DEFAULT NULL,
  `cb_acceptedemails` text DEFAULT NULL,
  `cb_lmremotepausenotes` mediumtext DEFAULT NULL,
  `cb_leadermatchingcomplete` int(11) DEFAULT NULL,
  `cb_leadersentnomatch` int(11) DEFAULT NULL,
  `cb_leadernoresponse` text DEFAULT NULL,
  `cb_over18` text DEFAULT NULL,
  `cb_birthdate` date DEFAULT NULL,
  `cb_scheduledmatches` mediumtext DEFAULT NULL,
  `cb_removeuser` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lmremoteconfirmremove` text DEFAULT NULL,
  `cb_organization` text DEFAULT NULL,
  `cb_watchedvideo4` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_watchedvideofood` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_lastvisitdate` date DEFAULT NULL,
  `cb_employer` text DEFAULT NULL,
  `cb_rladded` date DEFAULT NULL,
  `cb_rlremoved` date DEFAULT NULL,
  `cb_rdadded` date DEFAULT NULL,
  `cb_rdremoved` date DEFAULT NULL,
  `cb_15deliveries` text DEFAULT NULL,
  `cb_5deliveries` text DEFAULT NULL,
  `cb_doubledonation` text DEFAULT NULL,
  `cb_carrabba` tinyint(3) UNSIGNED DEFAULT NULL,
  `cb_gender` text DEFAULT NULL,
  `cb_10deliveries` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_country`
--

CREATE TABLE `love_country` (
  `Country` varchar(255) DEFAULT NULL,
  `CO` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ordering` text NOT NULL DEFAULT '999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_coupons`
--

CREATE TABLE `love_coupons` (
  `id` int(11) NOT NULL,
  `date_added` date DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_message` varchar(255) DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `coupon_amount` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `max_discount_amt` int(11) DEFAULT NULL,
  `matchmama` int(11) DEFAULT NULL,
  `emailed_coupon` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_deliveryoptions`
--

CREATE TABLE `love_deliveryoptions` (
  `optionid` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `use_in_widget` text DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_district_names`
--

CREATE TABLE `love_district_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lead` text DEFAULT NULL,
  `prev_lead` varchar(255) DEFAULT NULL,
  `until` date DEFAULT NULL,
  `date_time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_emails_for_recipients`
-- (See below for the actual view)
--
CREATE TABLE `love_emails_for_recipients` (
`firstname` mediumtext
,`lastname` mediumtext
,`email` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_goodness`
-- (See below for the actual view)
--
CREATE TABLE `love_goodness` (
`lastname` varchar(100)
,`firstname` varchar(100)
,`email` varchar(100)
,`country` text
,`cb_mamasocial` text
,`cb_facebookid` text
,`Goodness` varchar(3)
,`LLNewsletter` varchar(3)
,`registerDate` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `love_leader_matching`
--

CREATE TABLE `love_leader_matching` (
  `batch_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `distance` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_ll_matching_report`
-- (See below for the actual view)
--
CREATE TABLE `love_ll_matching_report` (
`name` mediumtext
,`user_id` int(11)
,`firstname` varchar(100)
,`lastname` varchar(100)
,`cb_leadermatchingcomplete` varchar(3)
,`cb_leadersentnomatch` varchar(3)
,`director` text
);

-- --------------------------------------------------------

--
-- Table structure for table `love_opt_control`
--

CREATE TABLE `love_opt_control` (
  `run_id` int(11) NOT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `region_name` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `total_demand` int(11) NOT NULL,
  `total_supply` int(11) NOT NULL,
  `supply_matched` int(11) NOT NULL,
  `demand_matched` int(11) NOT NULL,
  `percent_demand_met` decimal(13,2) DEFAULT NULL,
  `percent_supply_used` decimal(13,2) DEFAULT NULL,
  `matches_made` int(11) NOT NULL,
  `optimizer_message` text DEFAULT NULL,
  `process_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_opt_regions`
--

CREATE TABLE `love_opt_regions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `real_distance` text DEFAULT NULL,
  `match_by_zip` text DEFAULT NULL,
  `enabled` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_opt_region_zips`
-- (See below for the actual view)
--
CREATE TABLE `love_opt_region_zips` (
`id` int(11)
,`name` varchar(255)
,`state` varchar(255)
,`zip` varchar(11)
,`country` varchar(255)
,`zip_string` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_opt_requestor`
-- (See below for the actual view)
--
CREATE TABLE `love_opt_requestor` (
`id` int(11)
,`name` varchar(511)
,`email` varchar(255)
,`phone` text
,`adults` int(11)
,`kids` int(11)
,`family_size` int(11)
,`address1` varchar(255)
,`address2` text
,`city` text
,`state` text
,`raw_country` text
,`raw_zip_code` text
,`zip_code` text
,`super_region` varchar(255)
,`matched_mama` text
,`region_name` varchar(255)
,`regional_leader_id` mediumtext
,`regional_leader` varchar(201)
,`lat` varchar(255)
,`long` varchar(255)
,`special_veg` int(1)
,`special_vgn` int(1)
,`special_dairy` int(1)
,`special_gluten` int(1)
,`special_nut` int(1)
,`special_other` int(1)
,`quantity` int(1)
,`status` text
,`priority` int(11)
,`request_date` date
,`delivery_date` date
,`ready_geolocate` int(1)
,`ready_quantity` int(1)
,`ready_new` int(1)
,`ready_unmatched` int(1)
,`ready_priority` int(1)
,`ready_request_date` int(1)
,`ready` int(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `love_opt_requests`
--

CREATE TABLE `love_opt_requests` (
  `run_id` int(11) NOT NULL,
  `date_time` datetime DEFAULT current_timestamp(),
  `participant_id` int(11) DEFAULT NULL,
  `is_supplier` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_opt_results`
--

CREATE TABLE `love_opt_results` (
  `run_id` int(11) NOT NULL,
  `date_time` datetime DEFAULT current_timestamp(),
  `approvedate` datetime DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `requester_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `match_type` varchar(255) DEFAULT NULL,
  `match_score` varchar(255) DEFAULT NULL,
  `match_distance` decimal(13,2) DEFAULT NULL,
  `match_cluster_distance` decimal(13,2) DEFAULT NULL,
  `nearest_mama_id` int(11) DEFAULT NULL,
  `nearby_mama_count` int(11) DEFAULT NULL,
  `nearest_mama_distance` decimal(13,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_opt_results_archive`
--

CREATE TABLE `love_opt_results_archive` (
  `run_id` int(11) NOT NULL,
  `date_time` datetime DEFAULT current_timestamp(),
  `approvedate` datetime DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `requester_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `match_type` varchar(255) DEFAULT NULL,
  `match_score` varchar(255) DEFAULT NULL,
  `match_distance` decimal(13,2) DEFAULT NULL,
  `match_cluster_distance` decimal(13,2) DEFAULT NULL,
  `nearest_mama_id` int(11) DEFAULT NULL,
  `nearby_mama_count` int(11) DEFAULT NULL,
  `nearest_mama_distance` decimal(13,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_opt_supplier`
-- (See below for the actual view)
--
CREATE TABLE `love_opt_supplier` (
`id` int(11)
,`name` varchar(201)
,`email` varchar(100)
,`phone` text
,`address` text
,`city` text
,`url` varchar(11)
,`state` text
,`raw_country` text
,`raw_zip_code` text
,`zip_code` text
,`super_region` varchar(255)
,`region_name` varchar(255)
,`regional_leader_id` mediumtext
,`regional_leader` varchar(201)
,`lat` text
,`long` text
,`miles_raw` int(11)
,`miles` decimal(17,6)
,`frequency` text
,`special_veg` int(1)
,`special_vgn` int(1)
,`special_dairy` int(1)
,`special_gluten` int(1)
,`special_nut` int(1)
,`special_other` int(1)
,`quantity` int(11)
,`fill_need` int(1)
,`join_date` varchar(10)
,`deliveries_made` int(11)
,`week_active` tinyint(3) unsigned
,`active` text
,`blocked` tinyint(4)
,`confirmed` tinyint(4)
,`start_date` date
,`ready_geolocate` int(1)
,`ready_quantity` int(1)
,`ready_active` int(1)
,`ready_week_active` int(1)
,`ready_not_blocked` int(1)
,`ready_confirmed` int(1)
,`ready_started` int(1)
,`ready` int(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `love_parameters`
--

CREATE TABLE `love_parameters` (
  `id` int(11) NOT NULL,
  `date_time` datetime DEFAULT current_timestamp(),
  `re_request_days` int(11) DEFAULT NULL,
  `reminder_days` int(11) DEFAULT NULL,
  `re_match_days` int(11) DEFAULT NULL,
  `leeway` int(11) DEFAULT NULL,
  `emergency_email` varchar(255) DEFAULT NULL,
  `nudge_days` int(11) DEFAULT NULL,
  `pause_days` int(11) DEFAULT NULL,
  `retire_days` int(11) DEFAULT NULL,
  `inactive_days` int(11) DEFAULT NULL,
  `archive_days` int(11) DEFAULT NULL,
  `match_cutoff` varchar(255) DEFAULT NULL,
  `match_cutoff_prev` date DEFAULT NULL,
  `no_response_days` int(11) DEFAULT NULL,
  `one_week_notice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_pausedvolunteers`
-- (See below for the actual view)
--
CREATE TABLE `love_pausedvolunteers` (
`firstname` varchar(100)
,`lastname` varchar(100)
,`email` varchar(100)
,`cb_mamastart` date
,`cb_mamaavail` text
,`cb_mamacap` int(11)
,`cb_mamafreq` text
,`cb_mama1stmatch` date
,`cb_zip` text
,`cb_state` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_RD_RL_RC`
-- (See below for the actual view)
--
CREATE TABLE `love_RD_RL_RC` (
`RD_ID` int(11)
,`RD` varchar(400)
,`RL_ID` int(11)
,`RL` varchar(400)
,`RLemail` varchar(100)
,`LC_ID` int(11)
,`LCfirstname` varchar(100)
,`LClastname` varchar(100)
,`LCemail` varchar(100)
,`LC_zip` text
,`LC_state` text
,`primary_city` varchar(255)
,`districtname` varchar(255)
,`districtid` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `love_region_names`
--

CREATE TABLE `love_region_names` (
  `zip` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_requests`
--

CREATE TABLE `love_requests` (
  `id` int(11) NOT NULL,
  `status` text NOT NULL DEFAULT 'new',
  `entrydate` datetime NOT NULL DEFAULT current_timestamp(),
  `requestdate` datetime DEFAULT current_timestamp(),
  `matchdate` date DEFAULT NULL,
  `rdapprovedate` date DEFAULT NULL,
  `approvedate` date DEFAULT NULL,
  `scheduledate` datetime DEFAULT NULL,
  `deliverydate` datetime DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` text DEFAULT NULL,
  `CO` text DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lon` varchar(255) DEFAULT NULL,
  `timezone` text DEFAULT NULL,
  `adults` int(11) DEFAULT NULL,
  `kids` int(11) DEFAULT NULL,
  `familysize` int(11) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `restrictions` text DEFAULT NULL,
  `vegetarian` text DEFAULT NULL,
  `vegan` text DEFAULT NULL,
  `glutenfree` text DEFAULT NULL,
  `dairyfree` text DEFAULT NULL,
  `nutallergy` text DEFAULT NULL,
  `otherallergy` text DEFAULT NULL,
  `allergyinfo` text DEFAULT NULL,
  `goodness` text DEFAULT NULL,
  `matchmama` text DEFAULT NULL,
  `mamanotes` text DEFAULT NULL,
  `priority` int(11) DEFAULT 1,
  `latlonkey` varchar(255) DEFAULT NULL,
  `distance` decimal(13,2) DEFAULT NULL,
  `vetted` int(11) NOT NULL DEFAULT 0,
  `source` varchar(255) DEFAULT NULL,
  `othersource` varchar(255) DEFAULT NULL,
  `matchregion` text DEFAULT NULL,
  `matched_with` varchar(255) DEFAULT NULL,
  `latloncheck` text NOT NULL,
  `sendEmail` int(4) DEFAULT NULL,
  `emailprefs` text DEFAULT NULL,
  `goodness_carrabba` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_requests_archive`
--

CREATE TABLE `love_requests_archive` (
  `id` int(11) NOT NULL,
  `status` text DEFAULT NULL,
  `entrydate` datetime DEFAULT NULL,
  `requestdate` datetime DEFAULT NULL,
  `matchdate` datetime DEFAULT NULL,
  `rdapprovedate` date DEFAULT NULL,
  `approvedate` datetime DEFAULT NULL,
  `scheduledate` datetime DEFAULT NULL,
  `deliverydate` datetime DEFAULT NULL,
  `firstname` text DEFAULT NULL,
  `lastname` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address1` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` text DEFAULT NULL,
  `CO` text DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lon` varchar(255) DEFAULT NULL,
  `timezone` text DEFAULT NULL,
  `adults` int(11) DEFAULT NULL,
  `kids` int(11) DEFAULT NULL,
  `familysize` int(11) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `restrictions` text DEFAULT NULL,
  `vegetarian` text DEFAULT NULL,
  `vegan` text DEFAULT NULL,
  `glutenfree` text DEFAULT NULL,
  `dairyfree` text DEFAULT NULL,
  `nutallergy` text DEFAULT NULL,
  `otherallergy` text DEFAULT NULL,
  `allergyinfo` text DEFAULT NULL,
  `goodness` text DEFAULT NULL,
  `matchmama` text DEFAULT NULL,
  `mamanotes` text DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `latlonkey` varchar(255) DEFAULT NULL,
  `distance` decimal(13,2) DEFAULT NULL,
  `vetted` int(11) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `othersource` varchar(255) DEFAULT NULL,
  `matchregion` text DEFAULT NULL,
  `matched_with` varchar(255) DEFAULT NULL,
  `latloncheck` text NOT NULL,
  `sendEmail` int(4) DEFAULT NULL,
  `emailprefs` text DEFAULT NULL,
  `goodness_carrabba` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_request_statistics`
--

CREATE TABLE `love_request_statistics` (
  `id` int(11) NOT NULL,
  `requests` int(11) NOT NULL DEFAULT 0,
  `matches` int(11) NOT NULL DEFAULT 0,
  `deliveries` int(11) NOT NULL DEFAULT 0,
  `elevated` int(11) NOT NULL DEFAULT 0,
  `archived` int(11) NOT NULL DEFAULT 0,
  `aborted` int(11) NOT NULL DEFAULT 0,
  `blocked` int(11) NOT NULL DEFAULT 0,
  `notmatched` int(11) NOT NULL DEFAULT 0,
  `notscheduled` int(11) NOT NULL DEFAULT 0,
  `notdelivered_remind` int(11) NOT NULL DEFAULT 0,
  `notdelivered_warn` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_RL_emails`
-- (See below for the actual view)
--
CREATE TABLE `love_RL_emails` (
`name` varchar(400)
,`email` varchar(100)
,`title` varchar(100)
,`cb_dateconfirmed` date
,`cb_state` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_rl_matching_report`
-- (See below for the actual view)
--
CREATE TABLE `love_rl_matching_report` (
`name` mediumtext
,`user_id` int(11)
,`firstname` varchar(100)
,`lastname` varchar(100)
,`cb_leadermatchingcomplete` int(11)
,`cb_leadersentnomatch` int(11)
,`director` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_rl_matching_report_orig`
-- (See below for the actual view)
--
CREATE TABLE `love_rl_matching_report_orig` (
`name` varchar(255)
,`firstname` varchar(100)
,`lastname` varchar(100)
,`cb_leadermatchingcomplete` int(11)
,`cb_leadersentnomatch` int(11)
,`director` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `love_RL_Zips`
-- (See below for the actual view)
--
CREATE TABLE `love_RL_Zips` (
`id` int(11)
,`name` varchar(400)
,`username` varchar(150)
,`email` varchar(100)
,`password` varchar(100)
,`block` tinyint(4)
,`sendEmail` tinyint(4)
,`registerDate` datetime
,`lastvisitDate` datetime
,`activation` varchar(100)
,`params` text
,`lastResetTime` datetime
,`resetCount` int(11)
,`otpKey` varchar(1000)
,`otep` varchar(1000)
,`requireReset` tinyint(4)
,`District_id` int(11)
,`District_name` varchar(255)
,`lead` text
,`prev_lead` varchar(255)
,`until` date
,`date_time` date
,`zip` varchar(11)
,`st` varchar(255)
,`type` varchar(255)
,`primary_city` varchar(255)
,`county` varchar(255)
,`timezone` varchar(255)
,`area_codes` text
,`latitude` decimal(13,2)
,`longitude` decimal(13,2)
,`pop_2015` int(11)
,`region` int(11)
,`district` int(11)
,`decommissioned` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `love_usergroups`
--

CREATE TABLE `love_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_users`
--

CREATE TABLE `love_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_user_usergroup_map`
--

CREATE TABLE `love_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_usstates`
--

CREATE TABLE `love_usstates` (
  `StateID` int(11) NOT NULL,
  `CO` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `ST` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `director` text DEFAULT NULL,
  `Ordering` int(11) NOT NULL,
  `optimize` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_utilization`
--

CREATE TABLE `love_utilization` (
  `util_id` int(11) NOT NULL,
  `chef_id` int(11) NOT NULL,
  `cb_week1date` date NOT NULL,
  `cb_mamafreq` int(11) NOT NULL,
  `cb_mamaavail` varchar(100) NOT NULL,
  `cb_mamacap` int(11) NOT NULL,
  `cb_mamaradius` int(11) NOT NULL,
  `cb_newmatches` int(11) NOT NULL,
  `cb_weekavail` int(11) NOT NULL,
  `cb_weekcap` int(11) NOT NULL,
  `cb_weekmatches` int(11) NOT NULL,
  `optimizer` varchar(3) NOT NULL,
  `ran_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `love_zipcodes`
--

CREATE TABLE `love_zipcodes` (
  `zip` varchar(11) NOT NULL,
  `st` varchar(255) NOT NULL,
  `CO` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `primary_city` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `area_codes` text DEFAULT NULL,
  `latitude` decimal(13,2) DEFAULT NULL,
  `longitude` decimal(13,2) DEFAULT NULL,
  `pop_2015` int(11) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `decommissioned` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `map_requests`
-- (See below for the actual view)
--
CREATE TABLE `map_requests` (
`RD` varchar(400)
,`LL` varchar(400)
,`Request Date` varchar(10)
,`Name` varchar(511)
,`Address` mediumtext
,`State` text
,`Country` text
,`Phone` text
,`Allergy` text
,`Number of ppl` varchar(36)
,`Story` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `map_volunteers`
-- (See below for the actual view)
--
CREATE TABLE `map_volunteers` (
`RD` varchar(400)
,`LL` varchar(400)
,`Active` varchar(8)
,`Matched yet` varchar(1)
,`Google Maps Label` varchar(412)
,`Phone` text
,`Email` varchar(100)
,`Address` mediumtext
,`state` text
,`Country` text
,`Fill in / make extra?` text
,`Miles` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `newsletter_requests`
-- (See below for the actual view)
--
CREATE TABLE `newsletter_requests` (
`firstname` mediumtext
,`lastname` mediumtext
,`email` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `newsletter_volunteers`
-- (See below for the actual view)
--
CREATE TABLE `newsletter_volunteers` (
`firstname` varchar(100)
,`lastname` varchar(100)
,`email` varchar(100)
,`state` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `utilization_tableau`
-- (See below for the actual view)
--
CREATE TABLE `utilization_tableau` (
`util_id` int(11)
,`chef_id` int(11)
,`cb_week1date` date
,`cb_mamafreq` int(11)
,`cb_mamaavail` varchar(100)
,`cb_mamacap` int(11)
,`cb_mamaradius` int(11)
,`chef_state` text
,`cb_newmatches` int(11)
,`cb_weekavail` int(11)
,`cb_weekcap` int(11)
,`cb_zip` text
,`name` varchar(255)
,`id` int(11)
,`country` text
,`optimizer` varchar(3)
,`ran_date` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `volunteer_tableau`
-- (See below for the actual view)
--
CREATE TABLE `volunteer_tableau` (
`dateconfirmed` date
,`mamastart` date
,`state` text
,`zip` text
,`userid` int(11)
,`districtname` varchar(255)
,`districtid` int(11)
,`chefavailable` tinyint(3) unsigned
,`chefcapacity` int(11)
,`country` text
,`mamaavail` text
,`pausenotes` mediumtext
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `zipcode_tableau`
-- (See below for the actual view)
--
CREATE TABLE `zipcode_tableau` (
`dateconfirmed` date
,`mamastart` date
,`state` text
,`zip` text
,`userid` int(11)
,`districtname` varchar(255)
,`districtid` int(11)
,`chefavailable` tinyint(3) unsigned
,`chefcapacity` int(11)
,`country` text
,`mamaavail` text
,`pausenotes` mediumtext
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `zip_states_view`
-- (See below for the actual view)
--
CREATE TABLE `zip_states_view` (
`zip` varchar(11)
,`st` varchar(255)
,`CO` varchar(255)
,`type` varchar(255)
,`primary_city` varchar(255)
,`county` varchar(255)
,`timezone` varchar(255)
,`area_codes` text
,`latitude` decimal(13,2)
,`longitude` decimal(13,2)
,`pop_2015` int(11)
,`region` int(11)
,`district` int(11)
,`decommissioned` int(11)
,`StateID` int(11)
,`state_CO` varchar(255)
,`State` varchar(255)
,`state_ST` varchar(255)
,`director` text
,`Ordering` int(11)
,`optimize` text
);

-- --------------------------------------------------------

--
-- Structure for view `all_LCs` exported as a table
--
DROP TABLE IF EXISTS `all_LCs`;
CREATE TABLE`all_LCs`(
    `id` int(11) NOT NULL DEFAULT '0',
    `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `cb_address` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `cb_city` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `cb_state` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `cb_zip` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `all_new_requests` exported as a table
--
DROP TABLE IF EXISTS `all_new_requests`;
CREATE TABLE`all_new_requests`(
    `id` int(11) NOT NULL DEFAULT '0',
    `status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '\'new\'',
    `entrydate` datetime NOT NULL DEFAULT 'current_timestamp()',
    `requestdate` datetime DEFAULT 'current_timestamp()',
    `matchdate` date DEFAULT NULL,
    `rdapprovedate` date DEFAULT NULL,
    `approvedate` date DEFAULT NULL,
    `scheduledate` datetime DEFAULT NULL,
    `deliverydate` datetime DEFAULT NULL,
    `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `mobile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `address2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `zip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `lon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `timezone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `adults` int(11) DEFAULT NULL,
    `kids` int(11) DEFAULT NULL,
    `familysize` int(11) DEFAULT NULL,
    `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `restrictions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `vegetarian` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `vegan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `glutenfree` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `dairyfree` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `nutallergy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `otherallergy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `allergyinfo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `goodness` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `matchmama` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `mamanotes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `priority` int(11) DEFAULT '1',
    `latlonkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `distance` decimal(13,2) DEFAULT NULL,
    `vetted` int(11) NOT NULL DEFAULT '0',
    `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `othersource` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `all_requests` exported as a table
--
DROP TABLE IF EXISTS `all_requests`;
CREATE TABLE`all_requests`(
    `id` int(11) NOT NULL DEFAULT '0',
    `status` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `entrydate` datetime /* mariadb-5.3 */ DEFAULT NULL,
    `requestdate` datetime /* mariadb-5.3 */ DEFAULT NULL,
    `matchdate` datetime /* mariadb-5.3 */ DEFAULT NULL,
    `rdapprovedate` date DEFAULT NULL,
    `approvedate` datetime /* mariadb-5.3 */ DEFAULT NULL,
    `scheduledate` datetime /* mariadb-5.3 */ DEFAULT NULL,
    `deliverydate` datetime /* mariadb-5.3 */ DEFAULT NULL,
    `firstname` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `lastname` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `mobile` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `address1` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `address2` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `city` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `state` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `zip` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `co` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `lon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `timezone` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `adults` int(11) DEFAULT NULL,
    `kids` int(11) DEFAULT NULL,
    `familysize` int(11) DEFAULT NULL,
    `about` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `restrictions` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `vegetarian` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `vegan` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `glutenfree` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `dairyfree` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `nutallergy` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `otherallergy` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `allergyinfo` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `goodness` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `matchmama` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `mamanotes` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `priority` int(11) DEFAULT NULL,
    `latlonkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `distance` decimal(13,2) DEFAULT NULL,
    `vetted` int(11) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `all_requests_source` exported as a table
--
DROP TABLE IF EXISTS `all_requests_source`;
CREATE TABLE`all_requests_source`(
    `id` int(11) NOT NULL DEFAULT '0',
    `status` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `entrydate` datetime /* mariadb-5.3 */ DEFAULT NULL,
    `requestdate` datetime /* mariadb-5.3 */ DEFAULT NULL,
    `matchdate` datetime /* mariadb-5.3 */ DEFAULT NULL,
    `rdapprovedate` date DEFAULT NULL,
    `approvedate` datetime /* mariadb-5.3 */ DEFAULT NULL,
    `scheduledate` datetime /* mariadb-5.3 */ DEFAULT NULL,
    `deliverydate` datetime /* mariadb-5.3 */ DEFAULT NULL,
    `firstname` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `lastname` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `mobile` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `address1` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `address2` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `city` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `state` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `zip` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `CO` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `lon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `timezone` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `adults` int(11) DEFAULT NULL,
    `kids` int(11) DEFAULT NULL,
    `familysize` int(11) DEFAULT NULL,
    `about` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `restrictions` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `vegetarian` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `vegan` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `glutenfree` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `dairyfree` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `nutallergy` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `otherallergy` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `allergyinfo` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `goodness` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `matchmama` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `mamanotes` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `priority` int(11) DEFAULT NULL,
    `latlonkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `distance` decimal(13,2) DEFAULT NULL,
    `vetted` int(11) DEFAULT NULL,
    `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `othersource` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `matchregion` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `matched_with` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `latloncheck` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
);

-- --------------------------------------------------------

--
-- Structure for view `avgwaittime_tableau` exported as a table
--
DROP TABLE IF EXISTS `avgwaittime_tableau`;
CREATE TABLE`avgwaittime_tableau`(
    `avgwaittimeindays` decimal(10,4) DEFAULT NULL,
    `zip` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `country` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `state` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `districtname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `districtid` int(11) NOT NULL DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Structure for view `delivery_tableau` exported as a table
--
DROP TABLE IF EXISTS `delivery_tableau`;
CREATE TABLE`delivery_tableau`(
    `deliverydate` datetime /* mariadb-5.3 */ DEFAULT NULL,
    `requestid` int(11) NOT NULL DEFAULT '0',
    `chef` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `requestdate` datetime /* mariadb-5.3 */ DEFAULT NULL,
    `state` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `status` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `zip` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `adults` int(11) DEFAULT NULL,
    `kids` int(11) DEFAULT NULL,
    `familysize` int(11) DEFAULT NULL,
    `districtname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `districtid` int(11) DEFAULT NULL,
    `country` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `priority` int(11) DEFAULT NULL,
    `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `othersource` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `love_activevolunteers` exported as a table
--
DROP TABLE IF EXISTS `love_activevolunteers`;
CREATE TABLE`love_activevolunteers`(
    `firstname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `lastname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `cb_mamastart` date DEFAULT NULL,
    `cb_mamaavail` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `cb_mamacap` int(11) DEFAULT NULL,
    `cb_mamafreq` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `cb_mama1stmatch` date DEFAULT NULL,
    `cb_zip` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `cb_state` text COLLATE utf8mb3_general_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `love_Active_RD_RL_LC` exported as a table
--
DROP TABLE IF EXISTS `love_Active_RD_RL_LC`;
CREATE TABLE`love_Active_RD_RL_LC`(
    `RD_ID` int(11) DEFAULT '0',
    `RD` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `RL_ID` int(11) DEFAULT '0',
    `RL` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `RLemail` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `LC_ID` int(11) NOT NULL DEFAULT '0',
    `LCfirstname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `LClastname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `LCemail` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `LC_zip` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `LC_state` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `LC_startdate` date DEFAULT NULL,
    `primary_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `districtname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `districtid` int(11) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `love_ALL_RD_RL_LC` exported as a table
--
DROP TABLE IF EXISTS `love_ALL_RD_RL_LC`;
CREATE TABLE`love_ALL_RD_RL_LC`(
    `RD_ID` int(11) DEFAULT '0',
    `RD` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `RL_ID` int(11) DEFAULT '0',
    `RL` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `RLemail` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `LC_ID` int(11) NOT NULL DEFAULT '0',
    `LCfirstname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `LClastname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `LCemail` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `LC_zip` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `LC_state` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `primary_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `districtname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `districtid` int(11) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `love_emails_for_recipients` exported as a table
--
DROP TABLE IF EXISTS `love_emails_for_recipients`;
CREATE TABLE`love_emails_for_recipients`(
    `firstname` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `lastname` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `love_goodness` exported as a table
--
DROP TABLE IF EXISTS `love_goodness`;
CREATE TABLE`love_goodness`(
    `lastname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `firstname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `cb_mamasocial` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `cb_facebookid` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `Goodness` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `LLNewsletter` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
);

-- --------------------------------------------------------

--
-- Structure for view `love_ll_matching_report` exported as a table
--
DROP TABLE IF EXISTS `love_ll_matching_report`;
CREATE TABLE`love_ll_matching_report`(
    `name` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `user_id` int(11) NOT NULL DEFAULT '0',
    `firstname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `lastname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `cb_leadermatchingcomplete` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `cb_leadersentnomatch` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `director` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `love_opt_region_zips` exported as a table
--
DROP TABLE IF EXISTS `love_opt_region_zips`;
CREATE TABLE`love_opt_region_zips`(
    `id` int(11) NOT NULL DEFAULT '0',
    `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `zip` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
    `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `zip_string` varchar(11) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
);

-- --------------------------------------------------------

--
-- Structure for view `love_opt_requestor` exported as a table
--
DROP TABLE IF EXISTS `love_opt_requestor`;
CREATE TABLE`love_opt_requestor`(
    `id` int(11) NOT NULL DEFAULT '0',
    `name` varchar(511) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `adults` int(11) DEFAULT NULL,
    `kids` int(11) DEFAULT NULL,
    `family_size` int(11) DEFAULT NULL,
    `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `address2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `raw_country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `raw_zip_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `zip_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `super_region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `matched_mama` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `region_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `regional_leader_id` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `regional_leader` varchar(201) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `special_veg` int(1) DEFAULT NULL,
    `special_vgn` int(1) DEFAULT NULL,
    `special_dairy` int(1) DEFAULT NULL,
    `special_gluten` int(1) DEFAULT NULL,
    `special_nut` int(1) DEFAULT NULL,
    `special_other` int(1) DEFAULT NULL,
    `quantity` int(1) DEFAULT NULL,
    `status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '\'new\'',
    `priority` int(11) DEFAULT '1',
    `request_date` date DEFAULT NULL,
    `delivery_date` date DEFAULT NULL,
    `ready_geolocate` int(1) DEFAULT NULL,
    `ready_quantity` int(1) DEFAULT NULL,
    `ready_new` int(1) NOT NULL DEFAULT '0',
    `ready_unmatched` int(1) DEFAULT NULL,
    `ready_priority` int(1) DEFAULT NULL,
    `ready_request_date` int(1) DEFAULT NULL,
    `ready` int(1) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `love_opt_supplier` exported as a table
--
DROP TABLE IF EXISTS `love_opt_supplier`;
CREATE TABLE`love_opt_supplier`(
    `id` int(11) NOT NULL DEFAULT '0',
    `name` varchar(201) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `phone` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `address` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `city` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `url` varchar(11) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
    `state` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `raw_country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `raw_zip_code` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `zip_code` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `super_region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `region_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `regional_leader_id` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `regional_leader` varchar(201) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `lat` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `long` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `miles_raw` int(11) DEFAULT NULL,
    `miles` decimal(17,6) DEFAULT NULL,
    `frequency` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `special_veg` int(1) DEFAULT NULL,
    `special_vgn` int(1) DEFAULT NULL,
    `special_dairy` int(1) DEFAULT NULL,
    `special_gluten` int(1) DEFAULT NULL,
    `special_nut` int(1) DEFAULT NULL,
    `special_other` int(1) DEFAULT NULL,
    `quantity` int(11) DEFAULT NULL,
    `fill_need` int(1) DEFAULT NULL,
    `join_date` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
    `deliveries_made` int(11) DEFAULT NULL,
    `week_active` tinyint(3) unsigned DEFAULT NULL,
    `active` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `blocked` tinyint(4) DEFAULT '0',
    `confirmed` tinyint(4) NOT NULL DEFAULT '1',
    `start_date` date DEFAULT NULL,
    `ready_geolocate` int(1) DEFAULT NULL,
    `ready_quantity` int(1) DEFAULT NULL,
    `ready_active` int(1) DEFAULT NULL,
    `ready_week_active` int(1) DEFAULT NULL,
    `ready_not_blocked` int(1) DEFAULT NULL,
    `ready_confirmed` int(1) NOT NULL DEFAULT '0',
    `ready_started` int(1) DEFAULT NULL,
    `ready` int(1) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `love_pausedvolunteers` exported as a table
--
DROP TABLE IF EXISTS `love_pausedvolunteers`;
CREATE TABLE`love_pausedvolunteers`(
    `firstname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `lastname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `cb_mamastart` date DEFAULT NULL,
    `cb_mamaavail` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `cb_mamacap` int(11) DEFAULT NULL,
    `cb_mamafreq` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `cb_mama1stmatch` date DEFAULT NULL,
    `cb_zip` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `cb_state` text COLLATE utf8mb3_general_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `love_RD_RL_RC` exported as a table
--
DROP TABLE IF EXISTS `love_RD_RL_RC`;
CREATE TABLE`love_RD_RL_RC`(
    `RD_ID` int(11) DEFAULT '0',
    `RD` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `RL_ID` int(11) DEFAULT '0',
    `RL` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `RLemail` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `LC_ID` int(11) NOT NULL DEFAULT '0',
    `LCfirstname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `LClastname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `LCemail` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `LC_zip` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `LC_state` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `primary_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `districtname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `districtid` int(11) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `love_RL_emails` exported as a table
--
DROP TABLE IF EXISTS `love_RL_emails`;
CREATE TABLE`love_RL_emails`(
    `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `cb_dateconfirmed` date DEFAULT NULL,
    `cb_state` text COLLATE utf8mb3_general_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `love_rl_matching_report` exported as a table
--
DROP TABLE IF EXISTS `love_rl_matching_report`;
CREATE TABLE`love_rl_matching_report`(
    `name` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `user_id` int(11) DEFAULT '0',
    `firstname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `lastname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `cb_leadermatchingcomplete` int(11) DEFAULT NULL,
    `cb_leadersentnomatch` int(11) DEFAULT NULL,
    `director` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `love_rl_matching_report_orig` exported as a table
--
DROP TABLE IF EXISTS `love_rl_matching_report_orig`;
CREATE TABLE`love_rl_matching_report_orig`(
    `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `firstname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `lastname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `cb_leadermatchingcomplete` int(11) DEFAULT NULL,
    `cb_leadersentnomatch` int(11) DEFAULT NULL,
    `director` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `love_RL_Zips` exported as a table
--
DROP TABLE IF EXISTS `love_RL_Zips`;
CREATE TABLE`love_RL_Zips`(
    `id` int(11) NOT NULL DEFAULT '0',
    `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `block` tinyint(4) NOT NULL DEFAULT '0',
    `sendEmail` tinyint(4) DEFAULT '0',
    `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
    `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
    `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
    `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
    `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
    `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
    `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
    `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
    `District_id` int(11) NOT NULL DEFAULT '0',
    `District_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `lead` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `prev_lead` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `until` date DEFAULT NULL,
    `date_time` date DEFAULT NULL,
    `zip` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
    `st` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `primary_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `area_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `latitude` decimal(13,2) DEFAULT NULL,
    `longitude` decimal(13,2) DEFAULT NULL,
    `pop_2015` int(11) DEFAULT NULL,
    `region` int(11) DEFAULT NULL,
    `district` int(11) DEFAULT NULL,
    `decommissioned` int(11) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `map_requests` exported as a table
--
DROP TABLE IF EXISTS `map_requests`;
CREATE TABLE`map_requests`(
    `RD` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `LL` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `Request Date` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `Name` varchar(511) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `Address` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `State` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `Country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `Phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `Allergy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `Number of ppl` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `Story` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `map_volunteers` exported as a table
--
DROP TABLE IF EXISTS `map_volunteers`;
CREATE TABLE`map_volunteers`(
    `RD` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `LL` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `Active` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `Matched yet` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `Google Maps Label` varchar(412) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `Phone` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `Email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `Address` mediumtext COLLATE utf8mb3_general_ci DEFAULT NULL,
    `state` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `Country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `Fill in / make extra?` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `Miles` int(11) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `newsletter_requests` exported as a table
--
DROP TABLE IF EXISTS `newsletter_requests`;
CREATE TABLE`newsletter_requests`(
    `firstname` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `lastname` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `newsletter_volunteers` exported as a table
--
DROP TABLE IF EXISTS `newsletter_volunteers`;
CREATE TABLE`newsletter_volunteers`(
    `firstname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `lastname` varchar(100) COLLATE utf8mb3_general_ci DEFAULT NULL,
    `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `state` text COLLATE utf8mb3_general_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `utilization_tableau` exported as a table
--
DROP TABLE IF EXISTS `utilization_tableau`;
CREATE TABLE`utilization_tableau`(
    `util_id` int(11) NOT NULL DEFAULT '0',
    `chef_id` int(11) NOT NULL,
    `cb_week1date` date NOT NULL,
    `cb_mamafreq` int(11) NOT NULL,
    `cb_mamaavail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `cb_mamacap` int(11) NOT NULL,
    `cb_mamaradius` int(11) NOT NULL,
    `chef_state` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `cb_newmatches` int(11) NOT NULL,
    `cb_weekavail` int(11) NOT NULL,
    `cb_weekcap` int(11) NOT NULL,
    `cb_zip` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `id` int(11) NOT NULL DEFAULT '0',
    `country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `optimizer` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
    `ran_date` date NOT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `volunteer_tableau` exported as a table
--
DROP TABLE IF EXISTS `volunteer_tableau`;
CREATE TABLE`volunteer_tableau`(
    `dateconfirmed` date DEFAULT NULL,
    `mamastart` date DEFAULT NULL,
    `state` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `zip` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `userid` int(11) NOT NULL DEFAULT '0',
    `districtname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `districtid` int(11) DEFAULT NULL,
    `chefavailable` tinyint(3) unsigned DEFAULT NULL,
    `chefcapacity` int(11) DEFAULT NULL,
    `country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `mamaavail` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `pausenotes` mediumtext COLLATE utf8mb3_general_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `zipcode_tableau` exported as a table
--
DROP TABLE IF EXISTS `zipcode_tableau`;
CREATE TABLE`zipcode_tableau`(
    `dateconfirmed` date DEFAULT NULL,
    `mamastart` date DEFAULT NULL,
    `state` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `zip` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `userid` int(11) NOT NULL DEFAULT '0',
    `districtname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `districtid` int(11) DEFAULT NULL,
    `chefavailable` tinyint(3) unsigned DEFAULT NULL,
    `chefcapacity` int(11) DEFAULT NULL,
    `country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `mamaavail` text COLLATE utf8mb3_general_ci DEFAULT NULL,
    `pausenotes` mediumtext COLLATE utf8mb3_general_ci DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `zip_states_view` exported as a table
--
DROP TABLE IF EXISTS `zip_states_view`;
CREATE TABLE`zip_states_view`(
    `zip` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
    `st` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `CO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `primary_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `area_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `latitude` decimal(13,2) DEFAULT NULL,
    `longitude` decimal(13,2) DEFAULT NULL,
    `pop_2015` int(11) DEFAULT NULL,
    `region` int(11) DEFAULT NULL,
    `district` int(11) DEFAULT NULL,
    `decommissioned` int(11) DEFAULT NULL,
    `StateID` int(11) NOT NULL,
    `state_CO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `State` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `state_ST` varchar(255) COLLATE utf8mb3_general_ci NOT NULL,
    `director` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `Ordering` int(11) NOT NULL,
    `optimize` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `InactiveUsers`
--
ALTER TABLE `InactiveUsers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `apprconfbanid` (`approved`,`confirmed`,`banned`,`id`),
  ADD KEY `avatappr_apr_conf_ban_avatar` (`avatarapproved`,`approved`,`confirmed`,`banned`,`avatar`(48)),
  ADD KEY `lastupdatedate` (`lastupdatedate`),
  ADD KEY `avatar` (`avatar`(48),`avatarapproved`),
  ADD KEY `canvas` (`canvas`(48),`canvasapproved`,`canvasposition`),
  ADD KEY `fb_prefilter_cb_mamaleader_INDEX` (`cb_mamaleader`(10)),
  ADD KEY `fb_prefilter_cb_mamaavail_INDEX` (`cb_mamaavail`(10)),
  ADD KEY `fb_prefilter_cb_pausedate_INDEX` (`cb_pausedate`),
  ADD KEY `fb_prefilter_cb_mamastart_INDEX` (`cb_mamastart`),
  ADD KEY `fb_order_lastname_INDEX` (`lastname`(10)),
  ADD KEY `fb_order_firstname_INDEX` (`firstname`(10)),
  ADD KEY `fb_order_cb_mamasocial_INDEX` (`cb_mamasocial`(10));

--
-- Indexes for table `love_comprofiler`
--
ALTER TABLE `love_comprofiler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `apprconfbanid` (`approved`,`confirmed`,`banned`,`id`),
  ADD KEY `avatappr_apr_conf_ban_avatar` (`avatarapproved`,`approved`,`confirmed`,`banned`,`avatar`(48)),
  ADD KEY `lastupdatedate` (`lastupdatedate`),
  ADD KEY `avatar` (`avatar`(48),`avatarapproved`),
  ADD KEY `canvas` (`canvas`(48),`canvasapproved`,`canvasposition`),
  ADD KEY `fb_prefilter_cb_mamaleader_INDEX` (`cb_mamaleader`(10)),
  ADD KEY `fb_prefilter_cb_mamaavail_INDEX` (`cb_mamaavail`(10)),
  ADD KEY `fb_prefilter_cb_pausedate_INDEX` (`cb_pausedate`),
  ADD KEY `fb_prefilter_cb_mamastart_INDEX` (`cb_mamastart`),
  ADD KEY `fb_order_lastname_INDEX` (`lastname`(10)),
  ADD KEY `fb_order_firstname_INDEX` (`firstname`(10)),
  ADD KEY `fb_order_cb_mamasocial_INDEX` (`cb_mamasocial`(10));

--
-- Indexes for table `love_country`
--
ALTER TABLE `love_country`
  ADD PRIMARY KEY (`CO`),
  ADD KEY `fb_order_optimize_INDEX` (`ordering`(10)),
  ADD KEY `fb_order_State_INDEX` (`Country`(10));

--
-- Indexes for table `love_coupons`
--
ALTER TABLE `love_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `love_deliveryoptions`
--
ALTER TABLE `love_deliveryoptions`
  ADD PRIMARY KEY (`optionid`),
  ADD KEY `fb_order_order_INDEX` (`ordering`);

--
-- Indexes for table `love_district_names`
--
ALTER TABLE `love_district_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fb_order_name_INDEX` (`name`(10)),
  ADD KEY `fb_order_lead_INDEX` (`lead`(10)),
  ADD KEY `fb_order_until_INDEX` (`until`);

--
-- Indexes for table `love_leader_matching`
--
ALTER TABLE `love_leader_matching`
  ADD KEY `batch_id_ordering` (`batch_id`) USING BTREE,
  ADD KEY `user_id_ordering` (`user_id`) USING BTREE,
  ADD KEY `request_id_ordering` (`request_id`) USING BTREE;

--
-- Indexes for table `love_opt_control`
--
ALTER TABLE `love_opt_control`
  ADD PRIMARY KEY (`run_id`),
  ADD KEY `fb_order_date_time_INDEX` (`timestamp`),
  ADD KEY `fb_order_details_INDEX` (`optimizer_message`(10)),
  ADD KEY `fb_order_status_INDEX` (`status`(10)),
  ADD KEY `fb_order_process_date_INDEX` (`process_date`),
  ADD KEY `fb_order_region_INDEX` (`region`),
  ADD KEY `fb_order_batch_id_INDEX` (`batch_id`),
  ADD KEY `fb_order_start_time_INDEX` (`start_time`),
  ADD KEY `fb_order_end_time_INDEX` (`end_time`);

--
-- Indexes for table `love_opt_regions`
--
ALTER TABLE `love_opt_regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fb_order_name_INDEX` (`name`(10));

--
-- Indexes for table `love_opt_results`
--
ALTER TABLE `love_opt_results`
  ADD KEY `fb_order_approvedate_INDEX` (`approvedate`),
  ADD KEY `fb_order_match_type_INDEX` (`match_type`(10)),
  ADD KEY `fb_order_match_score_INDEX` (`match_score`(10)),
  ADD KEY `fb_order_nearest_mama_id_INDEX` (`nearest_mama_id`);

--
-- Indexes for table `love_parameters`
--
ALTER TABLE `love_parameters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `love_region_names`
--
ALTER TABLE `love_region_names`
  ADD PRIMARY KEY (`zip`),
  ADD UNIQUE KEY `zip` (`zip`),
  ADD KEY `fb_order_zip_INDEX` (`zip`),
  ADD KEY `fb_groupbyorder_name_INDEX` (`name`(10));

--
-- Indexes for table `love_requests`
--
ALTER TABLE `love_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `latlonkey` (`latlonkey`(250)) USING BTREE,
  ADD KEY `fb_groupbyorder_requestdate_INDEX` (`requestdate`),
  ADD KEY `fb_order_matchdate_INDEX` (`matchdate`),
  ADD KEY `fb_order_scheduledate_INDEX` (`scheduledate`),
  ADD KEY `fb_order_deliverydate_INDEX` (`deliverydate`),
  ADD KEY `fb_order_approvedate_rl_INDEX` (`approvedate`),
  ADD KEY `fb_order_rdapprovedate_INDEX` (`rdapprovedate`),
  ADD KEY `fb_join_zip_INDEX` (`zip`(10));

--
-- Indexes for table `love_requests_archive`
--
ALTER TABLE `love_requests_archive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fb_groupbyorder_requestdate_INDEX` (`requestdate`),
  ADD KEY `fb_groupby_matchmama_INDEX` (`matchmama`(10)),
  ADD KEY `fb_order_approvedate_rl_INDEX` (`approvedate`),
  ADD KEY `fb_order_rdapprovedate_rl_INDEX` (`rdapprovedate`) USING BTREE,
  ADD KEY `fb_order_deliverydate_INDEX` (`deliverydate`),
  ADD KEY `fb_order_matchdate_INDEX` (`matchdate`),
  ADD KEY `fb_order_status_INDEX` (`status`(10));

--
-- Indexes for table `love_request_statistics`
--
ALTER TABLE `love_request_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `love_usergroups`
--
ALTER TABLE `love_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `love_users`
--
ALTER TABLE `love_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`),
  ADD KEY `fb_order_lastvisitDate_INDEX` (`lastvisitDate`);

--
-- Indexes for table `love_user_usergroup_map`
--
ALTER TABLE `love_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `love_usstates`
--
ALTER TABLE `love_usstates`
  ADD KEY `fb_order_director_INDEX` (`director`(10)),
  ADD KEY `fb_order_State_INDEX` (`State`(10)),
  ADD KEY `fb_order_optimize_INDEX` (`optimize`(10)),
  ADD KEY `CO` (`CO`),
  ADD KEY `fb_groupbyorder_ST_INDEX` (`ST`(10));

--
-- Indexes for table `love_utilization`
--
ALTER TABLE `love_utilization`
  ADD PRIMARY KEY (`util_id`);

--
-- Indexes for table `love_zipcodes`
--
ALTER TABLE `love_zipcodes`
  ADD PRIMARY KEY (`zip`,`st`,`CO`) USING BTREE,
  ADD KEY `fb_order_region_INDEX` (`region`),
  ADD KEY `fb_order_st_INDEX` (`st`(10)),
  ADD KEY `fb_order_primary_city_INDEX` (`primary_city`(10)),
  ADD KEY `fb_order_district_INDEX` (`district`),
  ADD KEY `fb_order_CO_INDEX` (`CO`(10));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `love_coupons`
--
ALTER TABLE `love_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `love_deliveryoptions`
--
ALTER TABLE `love_deliveryoptions`
  MODIFY `optionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `love_district_names`
--
ALTER TABLE `love_district_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `love_opt_control`
--
ALTER TABLE `love_opt_control`
  MODIFY `run_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `love_opt_regions`
--
ALTER TABLE `love_opt_regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `love_requests`
--
ALTER TABLE `love_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `love_requests_archive`
--
ALTER TABLE `love_requests_archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `love_usergroups`
--
ALTER TABLE `love_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `love_users`
--
ALTER TABLE `love_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `love_utilization`
--
ALTER TABLE `love_utilization`
  MODIFY `util_id` int(11) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
