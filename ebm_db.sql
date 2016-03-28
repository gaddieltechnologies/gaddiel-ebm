-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsqlmoo13
-- Generation Time: Mar 28, 2016 at 09:18 AM
-- Server version: 5.5.44
-- PHP Version: 4.4.9
-- 
-- Database: `gaddiel_ebm`
-- 
CREATE DATABASE `gaddiel_ebm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gaddiel_ebm`;

-- --------------------------------------------------------

-- 
-- Table structure for table `ebm_client`
-- 

CREATE TABLE `ebm_client` (
  `CREATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `CREATED_DATE` date NOT NULL DEFAULT '0000-00-00',
  `UPDATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CLIENT_NAME` varchar(60) NOT NULL,
  `DESCRIPTION` varchar(260) DEFAULT NULL,
  UNIQUE KEY `CLIENT_NAME` (`CLIENT_NAME`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=latin1 AUTO_INCREMENT=152 ;

-- 
-- Dumping data for table `ebm_client`
-- 

INSERT INTO `ebm_client` VALUES ('-1', '0000-00-00', '-1', '2015-11-30 03:10:47', 148, 'Sattva', '');
INSERT INTO `ebm_client` VALUES ('-1', '0000-00-00', '-1', '2015-11-30 03:13:03', 149, 'Gaddiel', '');
INSERT INTO `ebm_client` VALUES ('-1', '0000-00-00', '-1', '2016-01-04 08:20:51', 150, 'Break', '');
INSERT INTO `ebm_client` VALUES ('-1', '0000-00-00', '-1', '2016-01-04 08:21:10', 151, 'Meeting', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `ebm_project`
-- 

CREATE TABLE `ebm_project` (
  `CREATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `CREATED_DATE` date NOT NULL DEFAULT '0000-00-00',
  `UPDATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` int(10) NOT NULL,
  `PROJECT_NAME` varchar(60) NOT NULL,
  `DESCRIPTION` varchar(260) DEFAULT NULL,
  `STATUS_ID` int(10) NOT NULL,
  `DEADLINE` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CLIENT_ID` (`CLIENT_ID`),
  KEY `STATUS_ID` (`STATUS_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=218 DEFAULT CHARSET=latin1 AUTO_INCREMENT=218 ;

-- 
-- Dumping data for table `ebm_project`
-- 

INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2015-11-23 08:48:07', 193, 147, 'DialogEdu', '', 2, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 00:26:19', 194, 148, 'Vkcf ', 'vkcf migration to linux hosting account ', 2, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2015-11-30 03:47:53', 195, 149, 'Sys Admin', 'Restore & Backup of Codes & PM Tools', 2, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2015-11-30 03:48:02', 196, 149, 'CMS', 'Document Management using Db - Feasibility', 2, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:07:19', 200, 150, 'Break', '', 2, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2015-11-30 03:48:23', 198, 148, 'DialoguEdu', '', 4, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2015-11-30 03:48:31', 199, 149, 'Java', '', 1, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-04 08:22:50', 201, 150, 'Lunch', '', 2, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-04 08:23:15', 202, 151, 'Meeting', '', 2, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 00:15:33', 203, 149, 'Android', '', 2, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 00:18:30', 204, 149, 'General', '', 2, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 00:24:01', 205, 148, 'Kidney University', '', 2, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 00:24:27', 206, 148, 'Global Renal care', '', 2, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 00:27:30', 207, 149, 'RDCS', '', 5, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:11:39', 208, 149, 'WeekEnd', 'Sunday and Last Saturday of Month', 6, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:12:14', 209, 149, 'Public Holiday', '', 6, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:12:32', 210, 149, 'Leave', '', 6, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:24:29', 211, 149, 'eBM', '', 4, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:25:59', 212, 148, 'RDCS', 'Inventory Management Requirement Gathering', 5, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:27:09', 213, 149, 'SpecLK', 'PoC', 5, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:27:42', 214, 149, 'Client Review', 'Review Call with Client', 6, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-01-21 07:32:06', 215, 148, 'Cms', '', 4, '2016-01-21');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-02-24 00:17:55', 216, 149, 'Phonegap', '', 4, '0000-00-00');
INSERT INTO `ebm_project` VALUES ('-1', '0000-00-00', '-1', '2016-02-24 00:17:45', 217, 149, 'cordova', '', 4, '0000-00-00');

-- --------------------------------------------------------

-- 
-- Table structure for table `ebm_reg`
-- 

CREATE TABLE `ebm_reg` (
  `CREATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `CREATED_DATE` date NOT NULL DEFAULT '0000-00-00',
  `LAST_UPDATE_BY` varchar(60) NOT NULL DEFAULT '-1',
  `LAST_UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FIRSTNAME` varchar(30) DEFAULT NULL,
  `LASTNAME` varchar(20) NOT NULL,
  `EMAIL` varchar(60) NOT NULL,
  `ROLE` varchar(30) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `ACTIVE_FLAG` int(1) NOT NULL DEFAULT '0',
  `DEFAULT_PASSWORD_CHANGED` varchar(1) NOT NULL DEFAULT 'N',
  `MOBILE` int(15) NOT NULL,
  `STATE` varchar(15) NOT NULL,
  `COUNTRY` varchar(15) NOT NULL,
  `LAST_SUCCESS_LOGIN_DATE` date DEFAULT NULL,
  `LAST_FAILED_LOGIN_DATE` date DEFAULT NULL,
  `NEXT_PASSWORD_CHANGE_DATE` date DEFAULT NULL,
  `REMARKS` varchar(240) DEFAULT NULL,
  `SESSION_ID` varchar(100) DEFAULT NULL,
  `FIRST_ANSWER` varchar(30) DEFAULT NULL,
  `SECOND_ANSWER` varchar(30) DEFAULT NULL,
  `THIRD_ANSWER` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL` (`EMAIL`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `ebm_reg`
-- 

INSERT INTO `ebm_reg` VALUES ('-1', '0000-00-00', '-1', '2015-11-23 07:02:20', 14, 'victor', 'AJ', 'victor.a@gaddieltech.com', 'ADMIN', 'admin123', 1, 'Y', 0, '', '', NULL, NULL, NULL, NULL, NULL, 'pet', 'pet', 'pet');
INSERT INTO `ebm_reg` VALUES ('-1', '0000-00-00', '-1', '2015-11-23 09:10:04', 16, 'arun', 'raj', 'arunbalu487@gmail.com', 'USER', 'jarnura321', 1, 'Y', 0, '', '', NULL, NULL, NULL, NULL, NULL, 'mani', 'spiderman', 'kool');
INSERT INTO `ebm_reg` VALUES ('-1', '0000-00-00', '-1', '2015-11-24 08:35:53', 17, 'Peter', 'Franklin', 'peter.franklin@gaddieltech.com', 'ADMIN', 'GuestHappy', 1, 'Y', 0, '', '', NULL, NULL, NULL, NULL, NULL, 'pet', 'movie', 'food');
INSERT INTO `ebm_reg` VALUES ('-1', '0000-00-00', '-1', '2015-11-23 09:17:40', 18, 'Arnold', 'Joseph', 'ajprince1789@gmail.com', 'USER', '9751711325', 1, 'Y', 0, '', '', NULL, NULL, NULL, NULL, NULL, 'DOG', 'KABALI', 'Sambar');
INSERT INTO `ebm_reg` VALUES ('-1', '0000-00-00', '-1', '2015-11-25 05:07:45', 20, 'Bala', 'Chandar', 'balac.waves@gmail.com', 'USER', 'bala1234', 1, 'Y', 0, '', '', NULL, NULL, NULL, NULL, NULL, 'pet', 'pet1', 'pe2');
INSERT INTO `ebm_reg` VALUES ('-1', '0000-00-00', '-1', '2015-11-25 11:12:16', 21, 'Amuthan', 'Sebastian', 'amuthan@yahoo.com', 'USER', 'amuthan24', 1, 'Y', 0, '', '', NULL, NULL, NULL, NULL, NULL, 'mylo', 'jamesbond', 'beef');
INSERT INTO `ebm_reg` VALUES ('-1', '0000-00-00', '-1', '2015-12-30 01:28:33', 25, 'Victor', 'Aj', 'victor.gaddiel@yahoo.com', '', 'admin123', 0, 'N', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `ebm_status`
-- 

CREATE TABLE `ebm_status` (
  `CREATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `CREATED_DATE` date NOT NULL DEFAULT '0000-00-00',
  `UPDATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `STATUS` varchar(60) NOT NULL,
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `ebm_status`
-- 

INSERT INTO `ebm_status` VALUES ('-1', '0000-00-00', '-1', '0000-00-00 00:00:00', 1, 'Planning');
INSERT INTO `ebm_status` VALUES ('-1', '0000-00-00', '-1', '0000-00-00 00:00:00', 2, 'Progress');
INSERT INTO `ebm_status` VALUES ('-1', '0000-00-00', '-1', '0000-00-00 00:00:00', 3, 'Pending');
INSERT INTO `ebm_status` VALUES ('-1', '0000-00-00', '-1', '0000-00-00 00:00:00', 4, 'Development');
INSERT INTO `ebm_status` VALUES ('-1', '0000-00-00', '-1', '0000-00-00 00:00:00', 5, 'Analyzing');
INSERT INTO `ebm_status` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:10:35', 6, 'General');

-- --------------------------------------------------------

-- 
-- Table structure for table `ebm_timesheet`
-- 

CREATE TABLE `ebm_timesheet` (
  `CREATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `CREATED_DATE` date NOT NULL DEFAULT '0000-00-00',
  `UPDATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PROJECT_ID` int(10) NOT NULL,
  `TS_DATE` date NOT NULL DEFAULT '0000-00-00',
  `START_TIME` time NOT NULL DEFAULT '00:00:00',
  `End_TIME` time NOT NULL DEFAULT '00:00:00',
  `TS_MINTUES` int(10) NOT NULL,
  `CLIENT_NAME` varchar(60) NOT NULL,
  `USER_NAME` varchar(60) NOT NULL,
  `PROJECT_NAME` varchar(60) NOT NULL,
  `WORKTYPE_ID` int(10) NOT NULL,
  `STATUS_ID` int(10) NOT NULL,
  `REMARKS` varchar(160) NOT NULL,
  `ACHIEVEMENT` varchar(160) NOT NULL,
  `DOC_ATTACHMENT` blob,
  PRIMARY KEY (`ID`),
  KEY `PROJECT_ID` (`PROJECT_ID`),
  KEY `WORKTYPE_ID` (`WORKTYPE_ID`),
  KEY `EMAIL` (`USER_NAME`),
  KEY `STATUS_ID` (`STATUS_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1089 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1089 ;

-- 
-- Dumping data for table `ebm_timesheet`
-- 

INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2015-11-25 00:13:53', 24, 193, '2015-11-04', '10:30:00', '11:45:00', 75, '', 'victor.a@gaddieltech.com', '', 21, 2, ' SDGAS', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2015-11-25 05:15:20', 26, 193, '2015-11-25', '10:00:00', '12:30:00', 150, '', 'balac.waves@gmail.com', '', 4, 1, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2015-11-26 03:08:26', 27, 193, '2015-11-26', '09:00:00', '10:00:00', 60, '', 'amuthan@yahoo.com', '', 5, 1, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-04 06:17:03', 28, 196, '2016-01-04', '10:00:00', '11:10:00', 70, '', 'arunbalu487@gmail.com', '', 26, 4, ' correction for tree view in cms', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-04 10:21:37', 29, 200, '2016-01-04', '11:10:00', '11:30:00', 20, '', 'arunbalu487@gmail.com', '', 26, 2, 'Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-04 10:28:41', 30, 196, '2016-01-04', '11:30:00', '11:50:00', 20, '', 'arunbalu487@gmail.com', '', 26, 4, ' correction for tree view in cms', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-04 10:30:17', 31, 202, '2016-01-04', '11:50:00', '13:30:00', 100, '', 'arunbalu487@gmail.com', '', 26, 2, ' Meeting for amuthan', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-04 10:31:01', 32, 201, '2016-01-04', '13:30:00', '16:15:00', 165, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-04 10:34:55', 33, 196, '2016-01-04', '16:15:00', '18:15:00', 120, '', 'arunbalu487@gmail.com', '', 25, 4, ' Correction for cms', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-04 10:34:18', 34, 202, '2016-01-04', '18:15:00', '21:00:00', 165, '', 'arunbalu487@gmail.com', '', 25, 2, ' Meeting for cms with amuthan', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 00:24:24', 35, 203, '2016-01-04', '10:00:00', '11:10:00', 70, '', 'ajprince1789@gmail.com', '', 23, 2, 'Reviewing about UI basics of android process', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:56:14', 36, 209, '2016-01-01', '09:00:00', '18:00:00', 540, '', 'victor.a@gaddieltech.com', '', 29, 6, 'New Year 2016', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 00:37:44', 37, 200, '2016-01-04', '11:10:00', '11:30:00', 20, '', 'ajprince1789@gmail.com', '', 29, 2, 'Tea  Break', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:56:43', 38, 208, '2016-01-02', '09:00:00', '18:00:00', 540, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:14:14', 39, 209, '2016-01-01', '09:00:00', '18:00:00', 540, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:15:29', 40, 208, '2016-01-02', '09:00:00', '18:00:00', 540, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:16:05', 41, 208, '2016-01-03', '09:00:00', '18:00:00', 540, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:17:45', 42, 204, '2016-01-04', '07:00:00', '08:30:00', 90, '', 'peter.franklin@gaddieltech.com', '', 24, 6, ' 2016 Planning', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:18:59', 43, 204, '2016-01-04', '11:00:00', '12:30:00', 90, '', 'peter.franklin@gaddieltech.com', '', 24, 5, ' 2016 Planning', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:20:11', 44, 204, '2016-01-04', '12:30:00', '14:30:00', 120, '', 'peter.franklin@gaddieltech.com', '', 24, 5, ' Discussion with Team', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:21:03', 45, 204, '2016-01-04', '14:30:00', '16:15:00', 105, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' Team Lunch', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:21:47', 46, 204, '2016-01-04', '16:15:00', '17:15:00', 60, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' Discussion with Victor', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:22:59', 47, 200, '2016-01-04', '17:15:00', '18:15:00', 60, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:24:34', 48, 196, '2016-01-04', '18:15:00', '21:00:00', 165, '', 'peter.franklin@gaddieltech.com', '', 24, 5, 'Brainstorming of Document Management UI Features', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:25:45', 49, 195, '2016-01-05', '10:30:00', '11:15:00', 45, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' Email and Review of activities', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:26:51', 50, 202, '2016-01-05', '11:15:00', '11:30:00', 15, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' Weekly Review and Target ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 01:27:48', 51, 204, '2016-01-05', '11:30:00', '12:00:00', 30, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' Time Sheet entry for 1Jan-4Jan16', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:21:26', 52, 205, '2016-01-04', '10:00:00', '11:10:00', 70, '', 'balac.waves@gmail.com', '', 24, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:21:16', 53, 200, '2016-01-04', '11:10:00', '11:30:00', 20, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:29:01', 54, 202, '2016-01-04', '11:30:00', '14:30:00', 180, '', 'balac.waves@gmail.com', '', 29, 6, 'meeting ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:26:42', 55, 200, '2016-01-04', '14:30:00', '16:30:00', 120, '', 'balac.waves@gmail.com', '', 29, 6, 'team lunch', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:25:30', 56, 202, '2016-01-04', '11:30:00', '14:00:00', 150, '', 'ajprince1789@gmail.com', '', 29, 6, ' Meeting with Team members', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:29:50', 69, 208, '2016-01-02', '09:00:00', '18:00:00', 540, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:30:20', 70, 208, '2016-01-03', '09:00:00', '18:00:00', 540, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:26:16', 61, 205, '2016-01-04', '14:30:00', '21:00:00', 390, '', 'balac.waves@gmail.com', '', 24, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:28:05', 62, 200, '2016-01-04', '14:00:00', '16:15:00', 135, '', 'ajprince1789@gmail.com', '', 29, 6, ' Lunch', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:28:43', 67, 209, '2016-01-01', '09:00:00', '18:00:00', 540, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:57:00', 68, 208, '2016-01-03', '09:00:00', '18:00:00', 540, '', 'victor.a@gaddieltech.com', '', 29, 6, '', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:30:40', 71, 203, '2016-01-04', '16:15:00', '21:00:00', 285, '', 'ajprince1789@gmail.com', '', 23, 2, ' Study about the functionalities of android', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:54:09', 72, 204, '2016-01-04', '10:00:00', '11:10:00', 70, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:54:39', 73, 200, '2016-01-04', '11:10:00', '11:31:00', 21, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:35:35', 76, 208, '2016-01-02', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:35:02', 75, 209, '2016-01-01', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:36:04', 77, 208, '2016-01-03', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:37:25', 78, 209, '2016-01-01', '09:00:00', '18:00:00', 540, '', 'ajprince1789@gmail.com', '', 29, 6, '', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:37:32', 79, 198, '2016-01-04', '11:30:00', '12:00:00', 30, '', 'victor.a@gaddieltech.com', '', 25, 5, ' ldap', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:38:11', 80, 208, '2016-01-02', '09:01:00', '18:00:00', 539, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:38:52', 81, 208, '2016-01-03', '09:00:00', '18:00:00', 540, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:39:10', 82, 204, '2016-01-04', '12:00:00', '14:30:00', 150, '', 'victor.a@gaddieltech.com', '', 29, 6, 'Team Discussion', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:39:06', 83, 196, '2016-01-05', '09:00:00', '11:10:00', 130, '', 'arunbalu487@gmail.com', '', 26, 2, ' change functionality for permission access page ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:40:08', 84, 204, '2016-01-04', '14:30:00', '16:15:00', 105, '', 'victor.a@gaddieltech.com', '', 29, 6, ' Team Lunch', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:42:34', 85, 203, '2016-01-05', '10:00:00', '11:10:00', 70, '', 'ajprince1789@gmail.com', '', 23, 2, ' Functionality ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:41:08', 86, 202, '2016-01-05', '11:10:00', '12:00:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:41:38', 87, 203, '2016-01-05', '10:00:00', '11:10:00', 70, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:42:02', 88, 200, '2016-01-05', '12:00:00', '12:20:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:44:21', 89, 204, '2016-01-04', '16:15:00', '17:15:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' 2016 Discussion with Amuthan And Peter ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:42:20', 90, 202, '2016-01-05', '11:10:00', '12:00:00', 50, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:43:04', 91, 200, '2016-01-05', '12:00:00', '12:20:00', 20, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:44:21', 92, 203, '2016-01-05', '12:20:00', '14:00:00', 100, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:44:43', 93, 202, '2016-01-05', '11:10:00', '12:01:00', 51, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:49:55', 94, 200, '2016-01-05', '12:00:00', '12:20:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' Tea Break', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:48:53', 95, 198, '2016-01-04', '17:15:00', '18:30:00', 75, '', 'victor.a@gaddieltech.com', '', 25, 5, ' ldap', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:50:13', 96, 204, '2016-01-04', '18:30:00', '19:30:00', 60, '', 'victor.a@gaddieltech.com', '', 28, 5, 'Git, Github', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:49:31', 97, 211, '2016-01-05', '12:20:00', '12:55:00', 35, '', 'ajprince1789@gmail.com', '', 29, 6, ' Time Sheet Entry', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 02:52:10', 98, 196, '2016-01-04', '19:30:00', '21:00:00', 90, '', 'victor.a@gaddieltech.com', '', 24, 5, ' Discussion With Amuthan, Peter And Arun ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 08:30:25', 99, 198, '2016-01-05', '12:20:00', '14:00:00', 100, '', 'arunbalu487@gmail.com', '', 27, 5, ' dialogedu SAML and LDAL intergration', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 08:29:38', 100, 201, '2016-01-05', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 08:30:14', 101, 198, '2016-01-05', '14:50:00', '18:15:00', 205, '', 'arunbalu487@gmail.com', '', 27, 5, '  dialogedu SAML and LDAL intergration', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 08:30:56', 102, 200, '2016-01-05', '18:15:00', '18:30:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 08:55:13', 103, 204, '2016-01-05', '10:30:00', '11:10:00', 40, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 08:56:55', 104, 202, '2016-01-05', '11:10:00', '12:00:00', 50, '', 'victor.a@gaddieltech.com', '', 29, 6, 'Target Assigned', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 08:57:30', 105, 200, '2016-01-05', '12:00:00', '12:20:00', 20, '', 'victor.a@gaddieltech.com', '', 29, 6, '', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 08:58:02', 106, 200, '2016-01-05', '14:00:00', '14:30:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 09:00:18', 107, 203, '2016-01-05', '14:30:00', '18:15:00', 225, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 09:01:17', 108, 200, '2016-01-05', '18:15:00', '18:30:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 09:03:54', 109, 204, '2016-01-05', '12:20:00', '13:20:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' Time Sheet entry  and debug ebm', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 09:04:20', 110, 203, '2016-01-05', '18:30:00', '19:30:00', 60, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 09:04:35', 111, 204, '2016-01-05', '13:20:00', '14:20:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 09:06:52', 112, 200, '2016-01-05', '14:20:00', '15:20:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 09:09:22', 113, 211, '2016-01-05', '15:20:00', '16:00:00', 40, '', 'victor.a@gaddieltech.com', '', 25, 5, 'User select box on time sheet page', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 09:10:32', 114, 205, '2016-01-05', '16:00:00', '16:30:00', 30, '', 'victor.a@gaddieltech.com', '', 24, 2, 'Banner ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 09:15:18', 115, 204, '2016-01-05', '16:30:00', '19:30:00', 180, '', 'victor.a@gaddieltech.com', '', 29, 6, ' User select box on time sheet page and General', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 09:18:18', 116, 198, '2016-01-05', '18:30:00', '19:50:00', 80, '', 'arunbalu487@gmail.com', '', 27, 5, '  dialogedu SAML and LDAL intergration', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 00:09:36', 117, 211, '2016-01-05', '12:55:00', '14:30:00', 95, '', 'ajprince1789@gmail.com', '', 25, 2, 'Inserting search condition', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 00:10:10', 118, 200, '2016-01-05', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' Lunch', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 00:12:45', 119, 211, '2016-01-05', '15:00:00', '18:15:00', 195, '', 'ajprince1789@gmail.com', '', 26, 2, ' Solving Bugs', ' Resolved', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 00:13:20', 120, 200, '2016-01-05', '18:15:00', '18:30:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 00:14:30', 121, 203, '2016-01-05', '18:30:00', '20:31:00', 121, '', 'ajprince1789@gmail.com', '', 23, 2, 'Solving sample examples on basic concept of android', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:16:15', 122, 201, '2016-01-05', '12:00:00', '14:30:00', 150, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:17:08', 123, 204, '2016-01-05', '14:30:00', '15:30:00', 60, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' Bank Work', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:19:40', 124, 205, '2016-01-05', '15:30:00', '16:45:00', 75, '', 'peter.franklin@gaddieltech.com', '', 24, 5, ' Weekly Review Meeting', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:21:51', 125, 205, '2016-01-05', '16:45:00', '18:00:00', 75, '', 'peter.franklin@gaddieltech.com', '', 24, 5, 'Meeting  Followup mails and calls', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:24:03', 126, 204, '2016-01-06', '12:00:00', '13:00:00', 60, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' Mails and Generic Activities', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:28:49', 127, 213, '2016-01-06', '13:00:00', '14:30:00', 90, '', 'peter.franklin@gaddieltech.com', '', 24, 5, ' Call with Amuthan, Chat with Ameen and Updates to Lior', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:29:36', 128, 201, '2016-01-06', '14:30:00', '15:30:00', 60, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:31:05', 129, 204, '2016-01-06', '15:30:00', '16:30:00', 60, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' Mobile Printer project update and others', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:31:42', 130, 204, '2016-01-06', '16:30:00', '17:00:00', 30, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' Timesheet updates', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:54:10', 131, 211, '2016-01-06', '17:00:00', '17:30:00', 30, '', 'peter.franklin@gaddieltech.com', '', 26, 2, ' Targets UAT Entry', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 09:32:59', 132, 198, '2016-01-06', '09:00:00', '11:00:00', 120, '', 'arunbalu487@gmail.com', '', 26, 1, ' dialogedu SAML and LDAL intergration', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 09:33:45', 133, 200, '2016-01-06', '11:00:00', '11:15:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, 'Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 09:34:26', 134, 198, '2016-01-06', '11:15:00', '14:00:00', 165, '', 'arunbalu487@gmail.com', '', 26, 2, ' dialogedu SAML and LDAL intergration', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 09:34:50', 135, 201, '2016-01-06', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 09:37:10', 136, 198, '2016-01-06', '14:50:00', '17:30:00', 160, '', 'arunbalu487@gmail.com', '', 26, 2, '  dialogedu SAML and LDAL intergration', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 09:36:23', 137, 200, '2016-01-06', '17:30:00', '17:45:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 09:37:00', 138, 198, '2016-01-06', '17:45:00', '20:00:00', 135, '', 'arunbalu487@gmail.com', '', 26, 2, '  dialogedu SAML and LDAL intergration', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 00:24:03', 139, 203, '2016-01-06', '10:00:00', '11:30:00', 90, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 00:24:33', 140, 203, '2016-01-06', '11:45:00', '14:00:00', 135, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 00:19:42', 141, 200, '2016-01-06', '14:00:00', '14:30:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 00:20:49', 142, 203, '2016-01-06', '14:30:00', '17:15:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 00:21:33', 143, 200, '2016-01-06', '17:15:00', '17:30:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 00:23:18', 144, 203, '2016-01-06', '17:30:00', '18:30:00', 60, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 00:23:06', 145, 211, '2016-01-06', '18:30:00', '20:00:00', 90, '', 'balac.waves@gmail.com', '', 25, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 00:24:58', 146, 200, '2016-01-06', '11:30:00', '11:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 01:58:49', 147, 196, '2016-01-07', '09:00:00', '12:00:00', 180, '', 'arunbalu487@gmail.com', '', 25, 4, ' change functionality for user permission access', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 01:59:33', 148, 200, '2016-01-07', '12:00:00', '12:20:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 02:10:30', 149, 203, '2016-01-06', '10:00:00', '11:40:00', 100, '', 'ajprince1789@gmail.com', '', 23, 2, 'Simple Calculator app', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 02:11:32', 150, 200, '2016-01-06', '11:40:00', '12:00:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' Tea Break', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 02:13:47', 151, 211, '2016-01-06', '12:00:00', '14:30:00', 150, '', 'ajprince1789@gmail.com', '', 25, 4, 'Add search filter condition for  users', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 02:14:19', 152, 200, '2016-01-06', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' Lunch', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 00:52:38', 153, 211, '2016-01-06', '15:00:00', '17:45:00', 165, '', 'ajprince1789@gmail.com', '', 25, 2, ' Add search filter condition for  users,date', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 00:52:52', 154, 200, '2016-01-06', '17:45:00', '18:00:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' Tea Break', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 02:16:32', 155, 211, '2016-01-06', '18:00:00', '20:05:00', 125, '', 'ajprince1789@gmail.com', '', 25, 2, ' Add search filter condition for  users,date,client,project', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 02:17:40', 156, 211, '2016-01-07', '10:20:00', '11:00:00', 40, '', 'ajprince1789@gmail.com', '', 26, 3, 'Testing search filter condition for  users,date,client,project', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 02:22:58', 157, 198, '2016-01-07', '11:00:00', '12:25:00', 85, '', 'ajprince1789@gmail.com', '', 29, 5, 'Discuss about the advanced features of dialog edu with the team', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 02:24:02', 158, 200, '2016-01-07', '12:25:00', '12:55:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, 'Tea Break', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 03:43:25', 159, 196, '2016-01-07', '12:20:00', '14:15:00', 115, '', 'arunbalu487@gmail.com', '', 25, 4, ' change functionality for user permission access', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 04:44:36', 160, 201, '2016-01-07', '14:15:00', '15:00:00', 45, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 06:46:03', 161, 196, '2016-01-07', '15:00:00', '16:40:00', 100, '', 'arunbalu487@gmail.com', '', 25, 4, ' change functionality for user permission access', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 06:46:41', 162, 200, '2016-01-07', '16:40:00', '17:15:00', 35, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 08:56:35', 163, 213, '2016-01-07', '12:45:00', '13:15:00', 30, '', 'peter.franklin@gaddieltech.com', '', 24, 5, ' Discussed with Ameen on sharing C Code', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 08:59:50', 164, 212, '2016-01-07', '16:00:00', '16:45:00', 45, '', 'peter.franklin@gaddieltech.com', '', 24, 5, ' Inv Management Discussion with Udhay, Doreen, Ramesh', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:00:54', 165, 198, '2016-01-07', '19:00:00', '19:30:00', 30, '', 'peter.franklin@gaddieltech.com', '', 24, 5, 'Advance Features  in DialogEdu Platform - Points needing clarification', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:03:31', 166, 204, '2016-01-06', '10:30:00', '11:40:00', 70, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:03:58', 167, 200, '2016-01-06', '11:40:00', '12:00:00', 20, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:05:12', 168, 204, '2016-01-06', '12:00:00', '14:00:00', 120, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:15:47', 169, 211, '2016-01-07', '10:00:00', '11:45:00', 105, '', 'balac.waves@gmail.com', '', 25, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:16:33', 170, 200, '2016-01-07', '11:45:00', '12:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:17:23', 171, 200, '2016-01-06', '14:00:00', '15:00:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:17:53', 172, 204, '2016-01-06', '15:00:00', '17:40:00', 160, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:18:27', 173, 200, '2016-01-06', '17:40:00', '18:00:00', 20, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:19:02', 174, 204, '2016-01-06', '18:00:00', '20:00:00', 120, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:31:06', 175, 198, '2016-01-07', '10:15:00', '11:30:00', 75, '', 'victor.a@gaddieltech.com', '', 29, 5, ' Discussion With Arnlod and Bala About Advance feature Of DialogEdu', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:21:54', 176, 200, '2016-01-07', '11:30:00', '11:50:00', 20, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:24:25', 177, 211, '2016-01-07', '11:50:00', '14:30:00', 160, '', 'victor.a@gaddieltech.com', '', 26, 4, ' EBM', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:23:29', 178, 200, '2016-01-07', '14:30:00', '15:30:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:24:09', 179, 211, '2016-01-07', '15:30:00', '16:45:00', 75, '', 'victor.a@gaddieltech.com', '', 26, 4, ' EBM', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:24:49', 180, 200, '2016-01-07', '16:45:00', '17:15:00', 30, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:26:30', 181, 211, '2016-01-07', '17:15:00', '18:45:00', 90, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:29:18', 182, 198, '2016-01-07', '18:45:00', '19:30:00', 45, '', 'victor.a@gaddieltech.com', '', 29, 5, ' Discussion With Peter', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-07 09:30:03', 183, 196, '2016-01-07', '17:15:00', '20:00:00', 165, '', 'arunbalu487@gmail.com', '', 25, 4, ' ', ' change functionality for user permission access', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 00:54:14', 184, 211, '2016-01-07', '12:00:00', '14:30:00', 150, '', 'balac.waves@gmail.com', '', 25, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 00:54:51', 185, 200, '2016-01-07', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 00:55:37', 186, 211, '2016-01-07', '15:00:00', '17:30:00', 150, '', 'balac.waves@gmail.com', '', 25, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 00:56:01', 187, 200, '2016-01-07', '17:30:00', '17:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 00:56:26', 188, 211, '2016-01-07', '17:45:00', '20:00:00', 135, '', 'balac.waves@gmail.com', '', 25, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 00:57:00', 189, 203, '2016-01-08', '10:15:00', '11:00:00', 45, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 00:57:22', 190, 200, '2016-01-08', '11:00:00', '11:15:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 01:08:34', 191, 211, '2016-01-07', '12:55:00', '14:30:00', 95, '', 'ajprince1789@gmail.com', '', 26, 3, ' User filter bug', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 01:09:21', 192, 200, '2016-01-07', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' Lunch', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 01:10:42', 193, 211, '2016-01-07', '15:00:00', '17:30:00', 150, '', 'ajprince1789@gmail.com', '', 25, 2, ' Adding extra filters and resolving the bugs', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 01:12:05', 194, 200, '2016-01-07', '17:30:00', '17:50:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' Tea Break', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 01:13:37', 195, 211, '2016-01-08', '17:50:00', '20:15:00', 145, '', 'ajprince1789@gmail.com', '', 25, 2, 'Converting the ajax coding for filter condition to form', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 01:15:42', 196, 203, '2016-01-08', '10:00:00', '11:20:00', 80, '', 'ajprince1789@gmail.com', '', 23, 2, ' Learning about Video player concept', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 01:16:36', 197, 200, '2016-01-08', '11:20:00', '11:40:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' Tea Break', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 07:16:40', 198, 204, '2016-01-07', '22:25:00', '23:10:00', 45, '', 'peter.franklin@gaddieltech.com', '', 24, 5, ' Discussed the items to be done for the next few weeks.   Concentrate on LDAP and DocManagement', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 07:18:00', 199, 212, '2016-01-08', '15:30:00', '17:45:00', 135, '', 'peter.franklin@gaddieltech.com', '', 24, 5, ' Discussion with Lalit.   Tried to connect with Teamviewer and Skype.   Had to give up due to compatibility issues.   Suggested to install latest version of sky', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:37:08', 200, 203, '2016-01-08', '11:15:00', '14:30:00', 195, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:37:56', 201, 200, '2016-01-08', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:40:35', 202, 203, '2016-01-08', '15:00:00', '17:00:00', 120, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:41:30', 203, 200, '2016-01-08', '17:00:00', '17:15:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:41:35', 204, 203, '2016-01-08', '11:40:00', '14:30:00', 170, '', 'ajprince1789@gmail.com', '', 23, 4, 'Android  video player hardcoded the video inside the folder and run the prgram', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:42:46', 205, 203, '2016-01-08', '17:15:00', '19:30:00', 135, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:42:59', 206, 200, '2016-01-08', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, 'Lunch', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:47:33', 207, 198, '2016-01-08', '09:00:00', '11:00:00', 120, '', 'arunbalu487@gmail.com', '', 25, 5, ' dialogedu SAML and LDAL intergration', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:46:21', 208, 200, '2016-01-08', '11:00:00', '11:15:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:47:20', 209, 198, '2016-01-08', '11:15:00', '14:00:00', 165, '', 'arunbalu487@gmail.com', '', 25, 5, ' dialogedu SAML and LDAL intergration', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:47:37', 210, 203, '2016-01-08', '15:00:00', '17:00:00', 120, '', 'ajprince1789@gmail.com', '', 23, 4, ' Program on Online video streaming,a bug is been detected and tried solving', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:47:58', 211, 201, '2016-01-08', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:48:52', 212, 200, '2016-01-08', '17:00:00', '17:16:00', 16, '', 'ajprince1789@gmail.com', '', 29, 6, ' Tea Break', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:48:52', 213, 198, '2016-01-08', '14:50:00', '17:00:00', 130, '', 'arunbalu487@gmail.com', '', 25, 5, ' dialogedu SAML and LDAL intergration', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:49:23', 214, 200, '2016-01-08', '17:00:00', '17:15:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:50:03', 215, 198, '2016-01-08', '17:15:00', '19:20:00', 125, '', 'arunbalu487@gmail.com', '', 25, 5, ' dialogedu SAML and LDAL intergration', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-08 08:51:02', 216, 203, '2016-01-08', '17:15:00', '19:35:00', 140, '', 'ajprince1789@gmail.com', '', 23, 2, ' Resolve the bug and tried to implement from external devices', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-09 01:10:07', 217, 210, '2016-01-08', '09:00:00', '18:00:00', 540, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-09 05:13:22', 218, 196, '2016-01-09', '09:00:00', '14:30:00', 330, '', 'arunbalu487@gmail.com', '', 25, 4, ' Change the functionality php to jquery', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-09 05:14:07', 219, 201, '2016-01-09', '14:30:00', '15:00:00', 30, '', 'arunbalu487@gmail.com', '', 29, 6, '', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-09 06:06:00', 220, 196, '2016-01-09', '15:00:00', '16:30:00', 90, '', 'arunbalu487@gmail.com', '', 25, 4, 'Change the functionality php to jquery', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-09 06:30:17', 221, 203, '2016-01-09', '10:15:00', '14:30:00', 255, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-09 06:32:45', 222, 203, '2016-01-09', '14:30:00', '17:10:00', 160, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-09 06:37:47', 223, 203, '2016-01-09', '10:00:00', '14:30:00', 270, '', 'ajprince1789@gmail.com', '', 23, 2, ' Online Video Streaming,Online Music Player app created by hardcoding the url in default', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-09 06:38:19', 224, 200, '2016-01-09', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' Lunch', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-09 06:40:04', 225, 203, '2016-01-09', '15:00:00', '17:10:00', 130, '', 'ajprince1789@gmail.com', '', 23, 2, ' Background services and background program app created', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 04:20:57', 226, 203, '2016-01-11', '10:30:00', '14:15:00', 225, '', 'ajprince1789@gmail.com', '', 23, 2, 'Tried an Example on canvas', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 04:24:09', 227, 200, '2016-01-11', '14:15:00', '14:45:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' Lunch', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:43:26', 228, 208, '2016-01-10', '09:00:00', '18:30:00', 570, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:43:55', 229, 203, '2016-01-11', '10:15:00', '14:30:00', 255, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:44:20', 230, 200, '2016-01-11', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:45:24', 231, 203, '2016-01-11', '15:00:00', '16:50:00', 110, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:47:38', 232, 200, '2016-01-11', '16:50:00', '17:20:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 08:48:57', 233, 203, '2016-01-11', '17:20:00', '19:45:00', 145, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:50:25', 234, 196, '2016-01-09', '10:00:00', '14:30:00', 270, '', 'victor.a@gaddieltech.com', '', 29, 5, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:50:58', 235, 200, '2016-01-09', '14:31:00', '15:30:00', 59, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:51:43', 236, 196, '2016-01-09', '15:30:00', '19:00:00', 210, '', 'victor.a@gaddieltech.com', '', 25, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:55:41', 237, 204, '2016-01-09', '14:00:00', '17:00:00', 180, '', 'peter.franklin@gaddieltech.com', '', 25, 1, ' New business - Mobile Printer - Discussion with proposed client. ', 'Connected with Client', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:57:19', 238, 204, '2016-01-11', '10:30:00', '12:00:00', 90, '', 'peter.franklin@gaddieltech.com', '', 25, 2, ' Emails,  Godaddy,  Status Check', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:58:38', 239, 207, '2016-01-11', '15:30:00', '16:00:00', 30, '', 'peter.franklin@gaddieltech.com', '', 24, 2, ' Tried to connect with Lalith to get update on Inventory Management', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:59:14', 240, 204, '2016-01-11', '16:00:00', '16:30:00', 30, '', 'peter.franklin@gaddieltech.com', '', 25, 2, ' General', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:59:53', 241, 207, '2016-01-11', '16:30:00', '17:30:00', 60, '', 'peter.franklin@gaddieltech.com', '', 24, 2, ' Inventory Management Attribute gathering', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:16:48', 242, 212, '2016-01-11', '17:30:00', '18:30:00', 60, '', 'peter.franklin@gaddieltech.com', '', 25, 2, ' Email on Email, LMS, etc, etc', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:18:44', 243, 204, '2016-01-11', '18:30:00', '19:00:00', 30, '', 'peter.franklin@gaddieltech.com', '', 25, 2, ' Review with team', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:19:35', 244, 204, '2016-01-11', '19:00:00', '19:30:00', 30, '', 'peter.franklin@gaddieltech.com', '', 25, 2, ' Email, Task Entry, Time Entry ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:23:09', 245, 196, '2016-01-11', '09:50:00', '14:00:00', 250, '', 'arunbalu487@gmail.com', '', 25, 4, 'Change the functionality php to jquery', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:23:50', 246, 201, '2016-01-11', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, '', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:25:25', 247, 196, '2016-01-11', '14:50:00', '16:50:00', 120, '', 'arunbalu487@gmail.com', '', 25, 4, ' Change the functionality php to jquery', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:25:27', 248, 196, '2016-01-11', '10:00:00', '11:10:00', 70, '', 'victor.a@gaddieltech.com', '', 25, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:26:07', 249, 200, '2016-01-11', '16:50:00', '17:20:00', 30, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:26:54', 250, 196, '2016-01-11', '17:20:00', '20:00:00', 160, '', 'arunbalu487@gmail.com', '', 25, 4, ' Change the functionality php to jquery', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:27:50', 251, 196, '2016-01-11', '11:10:00', '11:45:00', 35, '', 'victor.a@gaddieltech.com', '', 25, 4, ' Discussion With  Amuthan Skype call about sql query select statement', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:28:46', 252, 196, '2016-01-11', '11:45:00', '14:30:00', 165, '', 'victor.a@gaddieltech.com', '', 25, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:29:20', 253, 200, '2016-01-11', '14:30:00', '15:30:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:30:44', 254, 196, '2016-01-11', '15:30:00', '16:45:00', 75, '', 'victor.a@gaddieltech.com', '', 25, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:31:27', 255, 200, '2016-01-11', '16:45:00', '18:00:00', 75, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:32:38', 256, 196, '2016-01-11', '18:00:00', '19:20:00', 80, '', 'victor.a@gaddieltech.com', '', 25, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:34:04', 257, 203, '2016-01-11', '19:20:00', '19:40:00', 20, '', 'victor.a@gaddieltech.com', '', 23, 2, 'About google Map  To Bala ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:34:34', 258, 203, '2016-01-11', '14:45:00', '16:50:00', 125, '', 'ajprince1789@gmail.com', '', 23, 2, ' Example on gmap', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:35:17', 259, 200, '2016-01-11', '16:50:00', '17:15:00', 25, '', 'ajprince1789@gmail.com', '', 29, 6, ' Tea Break', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 09:35:50', 260, 203, '2016-01-11', '17:17:00', '20:05:00', 168, '', 'ajprince1789@gmail.com', '', 23, 2, '  Example on gmap', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 08:49:42', 261, 203, '2016-01-12', '10:10:00', '11:45:00', 95, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 08:50:21', 262, 200, '2016-01-12', '11:45:00', '12:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 08:51:00', 263, 203, '2016-01-12', '12:00:00', '15:00:00', 180, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 08:51:41', 264, 200, '2016-01-12', '15:00:00', '15:30:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 08:51:44', 265, 200, '2016-01-12', '15:00:00', '15:30:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 08:52:59', 266, 203, '2016-01-12', '15:30:00', '18:00:00', 150, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 08:53:52', 267, 200, '2016-01-12', '18:00:00', '18:15:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 08:54:54', 268, 203, '2016-01-12', '18:15:00', '19:30:00', 75, '', 'balac.waves@gmail.com', '', 23, 2, '', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:15:01', 269, 196, '2016-01-12', '09:00:00', '11:45:00', 165, '', 'arunbalu487@gmail.com', '', 25, 4, 'Slove error for tree view in cms', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:15:48', 270, 200, '2016-01-12', '11:45:00', '12:00:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:16:50', 271, 196, '2016-01-12', '12:00:00', '13:30:00', 90, '', 'arunbalu487@gmail.com', '', 25, 4, 'Slove error for tree view in cms', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:17:58', 272, 202, '2016-01-12', '13:30:00', '14:30:00', 60, '', 'arunbalu487@gmail.com', '', 29, 6, ' About cms', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:18:57', 273, 201, '2016-01-12', '14:30:00', '15:20:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:19:51', 274, 203, '2016-01-12', '10:00:00', '11:45:00', 105, '', 'ajprince1789@gmail.com', '', 23, 2, ' Map ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:21:13', 275, 196, '2016-01-12', '15:20:00', '16:30:00', 70, '', 'arunbalu487@gmail.com', '', 25, 4, ' Slove error for tree view in cms', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:20:34', 276, 200, '2016-01-12', '11:45:00', '12:00:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' Tea Break', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:22:05', 277, 203, '2016-01-12', '12:00:00', '15:00:00', 180, '', 'ajprince1789@gmail.com', '', 23, 2, 'Map Program', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:22:25', 278, 196, '2016-01-12', '16:30:00', '18:00:00', 90, '', 'arunbalu487@gmail.com', '', 25, 4, ' Slove error for change the functionality php to jquery', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:23:13', 279, 200, '2016-01-12', '18:00:00', '18:15:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:23:42', 280, 200, '2016-01-12', '15:00:00', '15:30:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' Lunch', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:25:05', 281, 196, '2016-01-12', '18:15:00', '20:00:00', 105, '', 'arunbalu487@gmail.com', '', 25, 4, 'Slove error for change the functionality php to jquery', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:26:36', 282, 203, '2016-01-12', '15:30:00', '18:00:00', 150, '', 'ajprince1789@gmail.com', '', 23, 2, 'Eclipse indtallation', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-12 09:27:23', 283, 200, '2016-01-12', '18:00:00', '18:20:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' Tea Break', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 00:32:08', 284, 203, '2016-01-12', '18:20:00', '20:20:00', 120, '', 'ajprince1789@gmail.com', '', 23, 2, 'Eclipse installation and solving bugs', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:15:00', 285, 203, '2016-01-13', '10:45:00', '11:45:00', 60, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:15:24', 286, 200, '2016-01-13', '11:45:00', '12:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:16:52', 287, 203, '2016-01-13', '12:00:00', '14:30:00', 150, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:17:17', 288, 200, '2016-01-13', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:17:44', 289, 203, '2016-01-13', '15:00:00', '17:45:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:35:36', 290, 204, '2016-01-12', '12:00:00', '13:15:00', 75, '', 'peter.franklin@gaddieltech.com', '', 29, 2, 'Mobile Thermal Printer use check in Vijay Cinemas', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:39:33', 291, 204, '2016-01-12', '13:15:00', '13:45:00', 30, '', 'peter.franklin@gaddieltech.com', '', 29, 2, ' Printer Review', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:44:13', 292, 204, '2016-01-12', '13:45:00', '14:45:00', 60, '', 'peter.franklin@gaddieltech.com', '', 29, 2, ' Work allocation & DMS review', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:45:04', 293, 200, '2016-01-12', '14:45:00', '16:15:00', 90, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:46:23', 294, 196, '2016-01-12', '16:15:00', '17:15:00', 60, '', 'peter.franklin@gaddieltech.com', '', 26, 2, 'User Creation- Folder-Permission testing', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:48:27', 295, 212, '2016-01-12', '17:15:00', '18:15:00', 60, '', 'peter.franklin@gaddieltech.com', '', 29, 2, ' Weekly Review Meeting - Invt Management, CMS, LMS, etc', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:49:58', 296, 212, '2016-01-12', '18:15:00', '19:30:00', 75, '', 'peter.franklin@gaddieltech.com', '', 28, 2, ' Creation of email accounts and communicating the same', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:55:28', 297, 204, '2016-01-13', '07:35:00', '08:15:00', 40, '', 'peter.franklin@gaddieltech.com', '', 29, 2, ' Work allocation and general discussion', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:58:06', 298, 213, '2016-01-13', '13:30:00', '14:30:00', 60, '', 'peter.franklin@gaddieltech.com', '', 24, 2, ' Discussion and updates about next call with Lior', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 07:59:19', 299, 200, '2016-01-13', '14:30:00', '16:00:00', 90, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 08:00:42', 300, 200, '2016-01-13', '16:00:00', '17:00:00', 60, '', 'peter.franklin@gaddieltech.com', '', 29, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 08:02:07', 301, 212, '2016-01-13', '17:00:00', '17:30:00', 30, '', 'peter.franklin@gaddieltech.com', '', 27, 2, ' Email configuration doc forwarding', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 08:02:52', 302, 204, '2016-01-13', '17:30:00', '18:30:00', 60, '', 'peter.franklin@gaddieltech.com', '', 28, 5, ' Thermal Bluetooth mobile printer analysis', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 08:49:17', 303, 204, '2016-01-13', '18:30:00', '19:15:00', 45, '', 'peter.franklin@gaddieltech.com', '', 28, 2, ' Design discussion on folder management', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 09:09:44', 304, 196, '2016-01-13', '09:00:00', '11:30:00', 150, '', 'arunbalu487@gmail.com', '', 25, 4, ' Slove error for change the functionality php to jquery', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 09:10:14', 305, 200, '2016-01-13', '11:30:00', '11:45:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 09:11:12', 306, 196, '2016-01-13', '11:45:00', '14:00:00', 135, '', 'arunbalu487@gmail.com', '', 25, 4, ' Slove error for change the functionality php to jquery', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 09:11:35', 307, 201, '2016-01-13', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 09:12:02', 308, 196, '2016-01-13', '14:50:00', '18:00:00', 190, '', 'arunbalu487@gmail.com', '', 25, 4, ' Slove error for change the functionality php to jquery', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 09:12:32', 309, 200, '2016-01-13', '18:00:00', '18:15:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-13 09:12:58', 310, 196, '2016-01-13', '18:15:00', '19:40:00', 85, '', 'arunbalu487@gmail.com', '', 25, 4, ' Slove error for change the functionality php to jquery', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:16:03', 311, 203, '2016-01-13', '10:00:00', '11:45:00', 105, '', 'ajprince1789@gmail.com', '', 23, 2, ' Eclipse Installation and sk installation', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 05:57:31', 312, 196, '2016-01-12', '10:00:00', '11:30:00', 90, '', 'victor.a@gaddieltech.com', '', 29, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 05:58:15', 313, 196, '2016-01-14', '09:00:00', '11:50:00', 170, '', 'arunbalu487@gmail.com', '', 25, 4, ' Updated give permission page', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 05:58:42', 314, 200, '2016-01-14', '11:50:00', '12:10:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 05:59:08', 315, 196, '2016-01-14', '12:10:00', '13:30:00', 80, '', 'arunbalu487@gmail.com', '', 25, 4, ' Updated give permission page', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 05:59:36', 316, 200, '2016-01-13', '11:45:00', '12:00:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' Tea Break', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 05:59:36', 317, 201, '2016-01-14', '13:30:00', '14:20:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:00:19', 318, 204, '2016-01-12', '11:30:00', '13:30:00', 120, '', 'victor.a@gaddieltech.com', '', 29, 6, ' Went out with sir , Check mobile printer details', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:00:06', 319, 196, '2016-01-14', '14:20:00', '16:30:00', 130, '', 'arunbalu487@gmail.com', '', 25, 4, ' Updated give permission page', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:16:47', 320, 203, '2016-01-13', '12:00:00', '14:30:00', 150, '', 'ajprince1789@gmail.com', '', 23, 2, 'sdk installation error', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:00:54', 321, 196, '2016-01-12', '13:30:00', '14:30:00', 60, '', 'victor.a@gaddieltech.com', '', 25, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:01:26', 322, 200, '2016-01-12', '14:30:00', '15:30:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:02:39', 323, 196, '2016-01-12', '15:30:00', '16:45:00', 75, '', 'victor.a@gaddieltech.com', '', 25, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:14:44', 324, 201, '2016-01-13', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, '', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:03:16', 325, 200, '2016-01-12', '16:45:00', '17:45:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:03:54', 326, 196, '2016-01-12', '17:45:00', '19:00:00', 75, '', 'victor.a@gaddieltech.com', '', 29, 5, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:05:01', 327, 203, '2016-01-14', '11:00:00', '11:45:00', 45, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:05:08', 328, 204, '2016-01-13', '10:15:00', '11:45:00', 90, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:05:58', 329, 203, '2016-01-13', '15:00:00', '17:45:00', 165, '', 'ajprince1789@gmail.com', '', 23, 2, 'Eclipse Installation error', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:05:58', 330, 203, '2016-01-14', '11:45:00', '12:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:06:01', 331, 200, '2016-01-13', '11:45:00', '12:00:00', 15, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:06:46', 332, 200, '2016-01-13', '17:45:00', '18:05:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' Tea Break', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:06:47', 333, 203, '2016-01-14', '12:00:00', '14:00:00', 120, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:07:06', 334, 196, '2016-01-13', '12:00:00', '14:00:00', 120, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:07:34', 335, 200, '2016-01-14', '14:00:00', '14:30:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:07:59', 336, 203, '2016-01-14', '14:30:00', '17:00:00', 150, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:08:07', 337, 200, '2016-01-13', '14:00:00', '15:00:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:17:04', 338, 203, '2016-01-13', '18:05:00', '20:30:00', 145, '', 'ajprince1789@gmail.com', '', 23, 2, ' sdk installation error', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:17:26', 339, 203, '2016-01-14', '10:00:00', '11:50:00', 110, '', 'ajprince1789@gmail.com', '', 23, 2, 'Emulator installation error', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:10:53', 340, 198, '2016-01-13', '15:00:00', '17:15:00', 135, '', 'victor.a@gaddieltech.com', '', 29, 1, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:12:06', 341, 204, '2016-01-14', '17:15:00', '18:00:00', 45, '', 'victor.a@gaddieltech.com', '', 29, 6, ' Epson-TM-P20 Details', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:10:07', 342, 200, '2016-01-14', '11:50:00', '12:05:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' Tea Break', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:17:59', 343, 203, '2016-01-14', '12:05:00', '14:00:00', 115, '', 'ajprince1789@gmail.com', '', 23, 2, ' Program on ListView', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:13:00', 344, 201, '2016-01-14', '14:00:00', '14:30:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:13:22', 345, 198, '2016-01-14', '10:00:00', '11:50:00', 110, '', 'victor.a@gaddieltech.com', '', 29, 5, ' Moodle - Open-source learning platform ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:18:26', 346, 203, '2016-01-14', '14:28:00', '17:15:00', 167, '', 'ajprince1789@gmail.com', '', 23, 2, ' Program on transfer usage', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:13:55', 347, 200, '2016-01-14', '11:50:00', '12:05:00', 15, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:14:47', 348, 198, '2016-01-14', '12:10:00', '14:00:00', 110, '', 'victor.a@gaddieltech.com', '', 29, 5, '  Moodle - Open-source learning platform ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:15:24', 349, 200, '2016-01-14', '14:00:00', '15:00:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-14 06:16:00', 350, 198, '2016-01-14', '15:00:00', '17:00:00', 120, '', 'victor.a@gaddieltech.com', '', 29, 5, ' Moodle - Open-source learning platform  ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 00:27:52', 351, 209, '2016-01-15', '09:00:00', '18:00:00', 540, '', 'ajprince1789@gmail.com', '', 29, 6, '', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 00:28:32', 352, 209, '2016-01-16', '09:00:00', '18:00:00', 540, '', 'ajprince1789@gmail.com', '', 29, 6, '', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-18 09:19:03', 353, 209, '2016-01-15', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-18 09:19:32', 354, 209, '2016-01-16', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-18 09:20:07', 355, 208, '2016-01-17', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-18 09:21:09', 356, 196, '2016-01-18', '10:15:00', '11:30:00', 75, '', 'arunbalu487@gmail.com', '', 25, 4, ' Updateding code from cms', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-18 09:21:39', 357, 200, '2016-01-18', '11:30:00', '11:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, 'Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-18 09:22:12', 358, 196, '2016-01-18', '11:50:00', '14:00:00', 130, '', 'arunbalu487@gmail.com', '', 25, 4, '  Updateding code from cms', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-18 09:22:41', 359, 201, '2016-01-18', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-18 09:23:25', 360, 196, '2016-01-18', '14:50:00', '17:30:00', 160, '', 'arunbalu487@gmail.com', '', 25, 4, '  Updateding code from cms', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-18 09:28:16', 361, 200, '2016-01-18', '17:30:00', '17:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-18 09:29:24', 362, 196, '2016-01-18', '17:50:00', '20:00:00', 130, '', 'arunbalu487@gmail.com', '', 25, 4, '  Updateding code from cms', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 00:18:08', 363, 208, '2016-01-17', '09:00:00', '18:00:00', 540, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 00:25:45', 364, 204, '2016-01-18', '10:30:00', '11:30:00', 60, '', 'ajprince1789@gmail.com', '', 29, 6, ' Refreshing datas', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 04:17:57', 365, 200, '2016-01-18', '11:30:00', '11:50:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 01:41:15', 366, 209, '2016-01-15', '09:00:00', '18:30:00', 570, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 01:42:06', 367, 209, '2016-01-16', '09:00:00', '18:30:00', 570, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 01:42:30', 368, 209, '2016-01-17', '09:00:00', '18:30:00', 570, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 01:43:13', 369, 203, '2016-01-18', '10:15:00', '11:30:00', 75, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 01:43:46', 370, 200, '2016-01-18', '11:30:00', '11:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 01:45:53', 371, 203, '2016-01-18', '11:45:00', '14:00:00', 135, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 01:46:38', 372, 201, '2016-01-18', '14:00:00', '14:30:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 01:47:32', 373, 203, '2016-01-18', '14:30:00', '17:30:00', 180, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 01:47:56', 374, 200, '2016-01-18', '17:30:00', '17:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 01:48:44', 375, 203, '2016-01-18', '17:45:00', '20:00:00', 135, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 01:49:13', 376, 203, '2016-01-19', '10:15:00', '14:00:00', 225, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 04:19:01', 377, 203, '2016-01-18', '11:50:00', '14:30:00', 160, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 04:19:51', 378, 201, '2016-01-18', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 04:20:27', 379, 203, '2016-01-18', '15:00:00', '17:50:00', 170, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 04:21:02', 380, 200, '2016-01-18', '17:50:00', '18:10:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 04:23:08', 381, 203, '2016-01-18', '18:10:00', '20:00:00', 110, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 04:22:52', 382, 203, '2016-01-19', '10:01:00', '14:30:00', 269, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 04:23:49', 383, 201, '2016-01-19', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 05:26:00', 384, 196, '2016-01-19', '09:00:00', '13:30:00', 270, '', 'arunbalu487@gmail.com', '', 25, 4, ' Updateding code from cms', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 05:26:40', 385, 201, '2016-01-19', '13:30:00', '14:20:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 05:27:31', 386, 196, '2016-01-19', '14:20:00', '16:00:00', 100, '', 'arunbalu487@gmail.com', '', 25, 4, ' Updateding code from cms', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 05:42:01', 387, 200, '2016-01-19', '14:00:00', '14:30:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-19 05:43:57', 388, 203, '2016-01-19', '14:30:00', '16:15:00', 105, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-21 09:00:22', 389, 210, '2016-01-20', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-21 09:01:20', 390, 200, '2016-01-21', '09:00:00', '09:30:00', 30, '', 'arunbalu487@gmail.com', '', 29, 6, ' Arranged table and chair ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-21 09:02:04', 391, 215, '2016-01-21', '09:30:00', '11:10:00', 100, '', 'arunbalu487@gmail.com', '', 25, 4, ' Updateding code from cms', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-21 09:02:26', 392, 200, '2016-01-21', '11:10:00', '11:30:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-21 09:03:05', 393, 203, '2016-01-21', '11:30:00', '14:00:00', 150, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-21 09:04:06', 394, 201, '2016-01-21', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-21 09:04:53', 395, 203, '2016-01-21', '14:50:00', '17:30:00', 160, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-21 09:05:23', 396, 200, '2016-01-21', '17:30:00', '17:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-21 09:07:30', 397, 202, '2016-01-21', '17:50:00', '18:30:00', 40, '', 'arunbalu487@gmail.com', '', 29, 6, ' Group Meeting with Amuthan sir and Guptha madam', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-21 09:07:54', 398, 203, '2016-01-21', '18:30:00', '19:30:00', 60, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 06:14:41', 399, 201, '2016-01-22', '09:00:00', '09:30:00', 30, '', 'arunbalu487@gmail.com', '', 29, 6, ' Mails', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 06:15:13', 400, 203, '2016-01-22', '09:30:00', '11:30:00', 120, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 06:15:35', 401, 200, '2016-01-22', '11:30:00', '11:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 06:16:43', 402, 203, '2016-01-22', '11:50:00', '14:00:00', 130, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 06:17:34', 403, 201, '2016-01-22', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 06:17:54', 404, 203, '2016-01-22', '14:50:00', '16:50:00', 120, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 07:52:28', 405, 210, '2016-01-20', '09:00:00', '18:30:00', 570, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 07:53:15', 406, 203, '2016-01-21', '10:15:00', '11:15:00', 60, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 07:53:40', 407, 200, '2016-01-21', '11:15:00', '11:30:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 07:54:12', 408, 203, '2016-01-21', '11:30:00', '14:30:00', 180, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 07:57:09', 409, 200, '2016-01-21', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 07:56:14', 410, 203, '2016-01-21', '15:00:00', '17:00:00', 120, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 07:56:57', 411, 200, '2016-01-21', '17:00:00', '17:15:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 07:57:50', 412, 203, '2016-01-21', '17:15:00', '19:00:00', 105, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 07:58:21', 413, 203, '2016-01-22', '10:25:00', '11:45:00', 80, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 07:58:48', 414, 200, '2016-01-22', '11:45:00', '12:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 07:59:15', 415, 203, '2016-01-22', '12:00:00', '14:30:00', 150, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 07:59:52', 416, 200, '2016-01-22', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 08:00:33', 417, 203, '2016-01-22', '15:00:00', '17:50:00', 170, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 08:01:00', 418, 200, '2016-01-22', '17:50:00', '18:00:00', 10, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-22 08:01:41', 419, 203, '2016-01-22', '18:00:00', '19:00:00', 60, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-23 02:25:34', 420, 198, '2016-01-19', '09:00:00', '16:30:00', 450, '', 'victor.a@gaddieltech.com', '', 26, 5, ' Moodle', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-23 02:26:32', 421, 198, '2016-01-21', '09:00:00', '19:00:00', 600, '', 'victor.a@gaddieltech.com', '', 26, 5, ' Moodle', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-23 02:28:06', 422, 204, '2016-01-22', '09:00:00', '19:00:00', 600, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-23 02:28:43', 423, 204, '2016-01-23', '09:30:00', '13:00:00', 210, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-23 05:57:26', 424, 203, '2016-01-23', '09:40:00', '11:30:00', 110, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-23 05:57:48', 425, 200, '2016-01-23', '11:30:00', '11:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-23 05:58:54', 426, 203, '2016-01-23', '11:50:00', '14:00:00', 130, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 06:05:37', 427, 201, '2016-01-23', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 06:06:39', 428, 203, '2016-01-23', '14:50:00', '15:30:00', 40, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 06:07:26', 429, 204, '2016-01-23', '15:30:00', '16:45:00', 75, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 06:08:15', 430, 208, '2016-01-24', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 06:09:20', 431, 203, '2016-01-25', '10:00:00', '11:45:00', 105, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 06:09:49', 432, 200, '2016-01-25', '11:45:00', '12:05:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 06:10:45', 433, 203, '2016-01-25', '12:05:00', '14:00:00', 115, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 06:11:40', 434, 201, '2016-01-25', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 06:12:30', 435, 203, '2016-01-25', '14:50:00', '16:45:00', 115, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:33:03', 436, 203, '2016-01-23', '10:15:00', '11:15:00', 60, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:33:36', 437, 203, '2016-01-19', '15:00:00', '17:30:00', 150, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:33:36', 438, 200, '2016-01-23', '11:15:00', '11:30:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:34:51', 439, 203, '2016-01-23', '11:30:00', '14:30:00', 180, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:34:58', 440, 210, '2016-01-20', '09:00:00', '18:00:00', 540, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:35:29', 441, 200, '2016-01-23', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:35:50', 442, 203, '2016-01-21', '10:00:00', '11:31:00', 91, '', 'ajprince1789@gmail.com', '', 23, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:36:39', 443, 203, '2016-01-23', '15:00:00', '17:00:00', 120, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:38:20', 444, 200, '2016-01-21', '11:31:00', '11:50:00', 19, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:38:06', 445, 203, '2016-01-21', '11:50:00', '14:30:00', 160, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:37:47', 446, 201, '2016-01-21', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:37:50', 447, 208, '2016-01-24', '09:30:00', '18:30:00', 540, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:38:29', 448, 203, '2016-01-25', '10:15:00', '11:30:00', 75, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:38:56', 449, 203, '2016-01-21', '15:00:00', '17:45:00', 165, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:39:03', 450, 200, '2016-01-25', '11:30:00', '11:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:39:22', 451, 200, '2016-01-21', '17:45:00', '18:00:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:39:28', 452, 203, '2016-01-25', '11:45:00', '14:30:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:40:00', 453, 203, '2016-01-21', '18:00:00', '20:10:00', 130, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:40:14', 454, 200, '2016-01-25', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:40:41', 455, 203, '2016-01-22', '10:12:00', '11:50:00', 98, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:40:54', 456, 203, '2016-01-25', '15:00:00', '18:15:00', 195, '', 'balac.waves@gmail.com', '', 24, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:41:18', 457, 200, '2016-01-22', '11:50:00', '12:10:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:41:57', 458, 203, '2016-01-22', '12:10:00', '14:40:00', 150, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:42:49', 459, 201, '2016-01-22', '14:40:00', '15:15:00', 35, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:43:31', 460, 203, '2016-01-22', '15:15:00', '17:55:00', 160, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:44:19', 461, 200, '2016-01-22', '17:55:00', '18:15:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:44:53', 462, 203, '2016-01-22', '18:15:00', '20:10:00', 115, '', 'ajprince1789@gmail.com', '', 23, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:45:26', 463, 203, '2016-01-22', '10:00:00', '12:00:00', 120, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:46:08', 464, 200, '2016-01-23', '12:00:00', '12:20:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:46:46', 465, 203, '2016-01-23', '12:20:00', '14:30:00', 130, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:48:11', 466, 201, '2016-01-23', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-25 07:47:57', 467, 203, '2016-01-23', '15:00:00', '17:00:00', 120, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-27 09:38:28', 468, 203, '2016-01-27', '10:00:00', '11:45:00', 105, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-27 09:37:18', 469, 200, '2016-01-27', '11:45:00', '12:00:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-27 09:38:38', 470, 203, '2016-01-27', '12:00:00', '14:00:00', 120, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-27 09:37:52', 471, 201, '2016-01-27', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-27 09:38:47', 472, 203, '2016-01-27', '14:50:00', '17:45:00', 175, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-27 09:39:16', 473, 200, '2016-01-27', '17:45:00', '18:00:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-27 09:39:37', 474, 203, '2016-01-27', '18:00:00', '20:10:00', 130, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-28 09:10:48', 475, 203, '2016-01-28', '09:00:00', '11:30:00', 150, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-28 09:11:17', 476, 200, '2016-01-28', '11:30:00', '11:45:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-28 09:11:50', 477, 203, '2016-01-28', '11:45:00', '14:10:00', 145, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-28 09:12:24', 478, 201, '2016-01-28', '14:10:00', '15:00:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-28 09:13:00', 479, 203, '2016-01-28', '15:00:00', '17:45:00', 165, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-28 09:13:32', 480, 200, '2016-01-28', '17:45:00', '18:00:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-28 09:14:03', 481, 203, '2016-01-28', '18:00:00', '19:45:00', 105, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-29 07:45:58', 482, 203, '2016-01-29', '09:00:00', '12:00:00', 180, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-29 07:46:25', 483, 200, '2016-01-29', '12:00:00', '12:15:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-29 07:46:49', 484, 203, '2016-01-29', '12:15:00', '14:00:00', 105, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-29 07:47:13', 485, 201, '2016-01-29', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-29 07:48:01', 486, 203, '2016-01-29', '14:50:00', '17:00:00', 130, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-29 07:48:31', 487, 200, '2016-01-29', '17:00:00', '17:20:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-29 07:48:57', 488, 203, '2016-01-29', '17:20:00', '18:20:00', 60, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 02:52:02', 489, 209, '2016-01-26', '09:00:00', '18:30:00', 570, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 02:52:31', 490, 210, '2016-01-27', '09:00:00', '18:30:00', 570, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 02:53:04', 491, 203, '2016-01-28', '10:10:00', '11:30:00', 80, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 02:53:16', 492, 208, '2016-01-24', '09:00:00', '18:00:00', 540, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 02:54:24', 493, 200, '2016-01-28', '11:30:00', '11:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 02:54:05', 494, 203, '2016-01-26', '10:15:00', '11:55:00', 100, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 02:54:40', 495, 203, '2016-01-28', '11:45:00', '14:30:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 02:55:01', 496, 200, '2016-01-25', '11:55:00', '12:14:00', 19, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 02:55:38', 497, 200, '2016-01-28', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 02:56:03', 498, 203, '2016-01-30', '12:14:00', '14:30:00', 136, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 02:56:07', 499, 203, '2016-01-28', '15:00:00', '16:30:00', 90, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:00:06', 500, 200, '2016-01-28', '17:30:00', '17:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 02:57:08', 501, 201, '2016-01-25', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:00:16', 502, 203, '2016-01-28', '17:45:00', '19:30:00', 105, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:00:11', 503, 203, '2016-01-25', '15:00:00', '17:30:00', 150, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:01:13', 504, 203, '2016-01-29', '10:15:00', '11:30:00', 75, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:01:32', 505, 200, '2016-01-25', '17:30:00', '17:45:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:02:21', 506, 200, '2016-01-29', '11:30:00', '11:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:02:06', 507, 203, '2016-01-29', '11:45:00', '14:30:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:02:41', 508, 204, '2016-01-25', '17:45:00', '18:30:00', 45, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:02:49', 509, 200, '2016-01-29', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:03:29', 510, 209, '2016-01-26', '09:00:00', '18:00:00', 540, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:04:20', 511, 203, '2016-01-29', '15:00:00', '16:50:00', 110, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:04:40', 512, 200, '2016-01-29', '16:50:00', '17:10:00', 20, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:04:10', 513, 203, '2016-01-27', '10:20:00', '11:50:00', 90, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:04:56', 514, 200, '2016-01-30', '11:50:00', '12:10:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:05:21', 515, 203, '2016-01-29', '17:10:00', '19:30:00', 140, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:06:16', 516, 203, '2016-01-30', '10:15:00', '11:00:00', 45, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:07:12', 517, 198, '2016-01-30', '11:00:00', '11:20:00', 20, '', 'balac.waves@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:07:42', 518, 200, '2016-01-30', '11:20:00', '11:35:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:27:16', 519, 203, '2016-01-30', '11:35:00', '15:00:00', 205, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:08:23', 520, 203, '2016-01-27', '12:10:00', '14:30:00', 140, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:10:45', 521, 201, '2016-01-27', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:11:45', 522, 203, '2016-01-27', '15:00:00', '18:00:00', 180, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:27:21', 523, 203, '2016-01-27', '18:00:00', '20:25:00', 145, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:19:32', 524, 203, '2016-01-28', '10:20:00', '11:55:00', 95, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:20:01', 525, 200, '2016-01-28', '11:55:00', '12:15:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:24:06', 526, 203, '2016-01-28', '12:15:00', '14:30:00', 135, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:24:45', 527, 201, '2016-01-28', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:25:31', 528, 203, '2016-01-28', '15:01:00', '18:00:00', 179, '', 'ajprince1789@gmail.com', '', 23, 1, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:27:39', 529, 200, '2016-01-28', '18:00:00', '18:20:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:26:52', 530, 203, '2016-01-28', '18:20:00', '19:40:00', 80, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:29:00', 531, 203, '2016-01-29', '10:00:00', '11:55:00', 115, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:29:54', 532, 200, '2016-01-29', '11:55:00', '12:15:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:34:23', 533, 201, '2016-01-29', '12:15:00', '14:30:00', 135, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:35:18', 534, 201, '2016-01-29', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:35:58', 535, 203, '2016-01-29', '15:00:00', '18:00:00', 180, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:36:46', 536, 200, '2016-01-29', '18:00:00', '18:15:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:37:58', 537, 203, '2016-01-29', '18:15:00', '19:20:00', 65, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:42:43', 538, 198, '2016-01-30', '10:20:00', '11:55:00', 95, '', 'ajprince1789@gmail.com', '', 29, 2, ' Uploaded Repositaries', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:40:19', 539, 200, '2016-01-30', '11:55:00', '12:15:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-01-30 03:42:15', 540, 198, '2016-01-30', '12:15:00', '14:10:00', 115, '', 'ajprince1789@gmail.com', '', 29, 5, ' Reviewing the upgraded features of dialog edu', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-01 08:00:03', 541, 195, '2016-02-01', '12:30:00', '14:30:00', 120, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' Email', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-01 08:00:41', 542, 200, '2016-02-01', '14:30:00', '16:45:00', 135, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-01 08:01:37', 543, 204, '2016-02-01', '16:45:00', '18:45:00', 120, '', 'peter.franklin@gaddieltech.com', '', 29, 6, ' Emails, Replies, Checks', ' First time payment done on Month first day', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-01 09:15:48', 544, 210, '2016-01-30', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-01 09:16:35', 545, 208, '2016-01-31', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-01 09:17:10', 546, 203, '2016-02-01', '10:15:00', '11:45:00', 90, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-01 09:19:54', 547, 200, '2016-02-01', '11:45:00', '12:00:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-01 09:21:12', 548, 203, '2016-02-01', '12:00:00', '14:10:00', 130, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-01 09:21:56', 549, 200, '2016-02-01', '14:10:00', '14:30:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-01 09:22:27', 550, 203, '2016-02-01', '14:30:00', '14:50:00', 20, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-01 09:22:49', 551, 201, '2016-02-01', '14:50:00', '15:30:00', 40, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-01 09:23:13', 552, 203, '2016-02-01', '15:30:00', '17:30:00', 120, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-01 09:23:56', 553, 200, '2016-02-01', '17:30:00', '17:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-01 09:24:25', 554, 203, '2016-02-01', '17:50:00', '20:00:00', 130, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 09:08:07', 555, 203, '2016-02-02', '09:00:00', '11:45:00', 165, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 09:08:33', 556, 200, '2016-02-02', '11:45:00', '12:05:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 09:09:08', 557, 203, '2016-02-02', '12:05:00', '14:00:00', 115, '', 'arunbalu487@gmail.com', '', 23, 3, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 09:11:47', 558, 201, '2016-02-02', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 09:12:38', 559, 203, '2016-02-02', '14:50:00', '17:45:00', 175, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 09:13:09', 560, 200, '2016-02-02', '17:45:00', '18:00:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 09:14:08', 561, 203, '2016-02-02', '18:00:00', '19:45:00', 105, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:27:00', 562, 208, '2016-01-31', '09:00:00', '18:00:00', 540, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:27:46', 563, 203, '2016-02-01', '10:10:00', '11:30:00', 80, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:31:13', 564, 200, '2016-02-01', '11:30:00', '11:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:31:33', 565, 203, '2016-02-01', '11:45:00', '14:30:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:31:43', 566, 200, '2016-02-01', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:32:19', 567, 203, '2016-02-01', '15:00:00', '17:00:00', 120, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:33:39', 568, 200, '2016-02-01', '17:00:00', '17:15:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:33:28', 569, 203, '2016-02-01', '17:15:00', '19:30:00', 135, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:34:06', 570, 203, '2016-02-02', '10:10:00', '11:45:00', 95, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:34:49', 571, 200, '2016-02-02', '11:45:00', '12:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:36:57', 572, 203, '2016-02-02', '12:00:00', '14:30:00', 150, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:37:07', 573, 200, '2016-02-02', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:37:16', 574, 203, '2016-02-02', '15:00:00', '17:00:00', 120, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:37:25', 575, 200, '2016-02-02', '17:00:00', '17:15:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-02 23:37:56', 576, 203, '2016-02-02', '17:15:00', '19:30:00', 135, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-03 00:11:20', 577, 203, '2016-01-30', '14:10:00', '14:30:00', 20, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-03 00:13:56', 578, 208, '2016-01-31', '09:00:00', '18:00:00', 540, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-03 00:20:57', 579, 203, '2016-02-01', '10:00:00', '11:54:00', 114, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:02:10', 580, 200, '2016-02-01', '11:54:00', '12:15:00', 21, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-03 23:49:27', 581, 203, '2016-02-03', '09:00:00', '11:30:00', 150, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-03 23:50:13', 582, 200, '2016-02-03', '11:30:00', '11:45:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-03 23:50:34', 583, 203, '2016-02-03', '11:45:00', '14:00:00', 135, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-03 23:50:58', 584, 201, '2016-02-03', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-03 23:51:31', 585, 203, '2016-02-03', '14:50:00', '18:05:00', 195, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-03 23:51:52', 586, 200, '2016-02-03', '18:05:00', '18:25:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-03 23:52:26', 587, 203, '2016-02-03', '18:25:00', '19:40:00', 75, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-03 23:55:18', 588, 203, '2016-02-03', '09:30:00', '11:30:00', 120, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-03 23:58:07', 589, 200, '2016-02-03', '11:30:00', '11:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-04 00:04:43', 590, 203, '2016-02-03', '11:45:00', '14:30:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-04 00:04:30', 591, 200, '2016-02-03', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-04 00:06:31', 592, 203, '2016-02-03', '15:00:00', '18:00:00', 180, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 00:52:37', 593, 203, '2016-02-03', '18:00:00', '20:00:00', 120, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-04 09:13:35', 594, 203, '2016-02-04', '09:00:00', '11:55:00', 175, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-04 09:13:59', 595, 200, '2016-02-04', '11:55:00', '12:15:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-04 09:14:24', 596, 203, '2016-02-04', '12:15:00', '14:10:00', 115, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-04 09:20:12', 597, 201, '2016-02-04', '14:10:00', '15:00:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-04 09:20:50', 598, 203, '2016-02-04', '15:00:00', '17:40:00', 160, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-04 09:21:21', 599, 200, '2016-02-04', '17:40:00', '18:00:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-04 09:21:38', 600, 203, '2016-02-04', '18:00:00', '20:00:00', 120, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 00:53:53', 601, 203, '2016-02-04', '10:10:00', '11:30:00', 80, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 00:54:39', 602, 200, '2016-02-04', '11:30:00', '11:45:00', 15, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 00:55:09', 603, 203, '2016-02-04', '11:45:00', '14:30:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 00:55:34', 604, 203, '2016-02-04', '14:30:00', '17:30:00', 180, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 00:55:37', 605, 203, '2016-01-31', '10:00:00', '15:15:00', 315, '', 'victor.a@gaddieltech.com', '', 26, 5, ' Install android on my sys,\nCheck Generate pdf on Phonegap', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 00:56:05', 606, 200, '2016-02-04', '17:30:00', '17:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 00:57:35', 607, 203, '2016-02-01', '09:30:00', '11:00:00', 90, '', 'victor.a@gaddieltech.com', '', 26, 5, ' pdf on phonegap', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:01:09', 608, 203, '2016-02-04', '17:45:00', '20:45:00', 180, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 00:59:16', 609, 200, '2016-02-01', '11:00:00', '11:15:00', 15, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:01:33', 610, 203, '2016-02-01', '11:15:00', '14:00:00', 165, '', 'victor.a@gaddieltech.com', '', 26, 5, ' Working Android Browser,\nI am  testing on  Webview', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:02:02', 611, 200, '2016-02-01', '14:00:00', '15:00:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:02:46', 612, 203, '2016-02-01', '15:00:00', '17:30:00', 150, '', 'victor.a@gaddieltech.com', '', 26, 5, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:02:49', 613, 203, '2016-02-05', '10:15:00', '11:45:00', 90, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:03:21', 614, 200, '2016-02-01', '17:30:00', '17:50:00', 20, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:15:18', 615, 203, '2016-02-05', '11:45:00', '12:00:00', 15, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:03:41', 616, 203, '2016-02-01', '12:15:00', '14:30:00', 135, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:15:31', 617, 203, '2016-02-05', '12:00:00', '14:30:00', 150, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:04:33', 618, 203, '2016-02-01', '17:50:00', '19:00:00', 70, '', 'victor.a@gaddieltech.com', '', 26, 5, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:04:38', 619, 201, '2016-02-01', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:06:16', 620, 203, '2016-02-01', '15:00:00', '18:00:00', 180, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:15:57', 621, 203, '2016-02-05', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:16:12', 622, 203, '2016-02-05', '15:00:00', '18:00:00', 180, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:16:22', 623, 203, '2016-02-01', '18:00:00', '18:15:00', 15, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:48:40', 624, 200, '2016-02-05', '18:00:00', '18:15:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:48:14', 625, 203, '2016-02-05', '18:15:00', '19:10:00', 55, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:18:48', 626, 200, '2016-02-01', '18:16:00', '18:30:00', 14, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 01:46:47', 627, 203, '2016-02-01', '18:30:00', '20:00:00', 90, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 02:35:06', 628, 203, '2016-02-02', '09:15:00', '11:15:00', 120, '', 'victor.a@gaddieltech.com', '', 26, 5, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 02:35:55', 629, 200, '2016-02-02', '11:15:00', '11:30:00', 15, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 02:37:50', 630, 203, '2016-02-02', '11:30:00', '14:30:00', 180, '', 'victor.a@gaddieltech.com', '', 26, 5, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 02:47:23', 631, 200, '2016-02-02', '14:30:00', '15:30:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 02:42:11', 632, 194, '2016-02-06', '15:30:00', '17:30:00', 120, '', 'victor.a@gaddieltech.com', '', 28, 6, ' Call With Godaddy rchowdary@godaddy.com\nHe Said he will call at 7:30pm', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 02:44:46', 633, 200, '2016-02-06', '17:30:00', '18:00:00', 30, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 02:46:50', 634, 203, '2016-02-06', '18:00:00', '19:00:00', 60, '', 'victor.a@gaddieltech.com', '', 26, 5, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 05:31:41', 635, 203, '2016-02-05', '09:00:00', '11:40:00', 160, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 05:32:30', 636, 200, '2016-02-05', '11:40:00', '12:00:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 05:32:54', 637, 203, '2016-02-05', '12:00:00', '14:10:00', 130, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 05:33:18', 638, 201, '2016-02-05', '14:00:00', '15:00:00', 60, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 05:37:32', 639, 203, '2016-02-05', '15:00:00', '18:00:00', 180, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 05:34:33', 640, 200, '2016-02-05', '18:00:00', '18:15:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 05:35:02', 641, 203, '2016-02-05', '18:15:00', '20:00:00', 105, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 05:37:41', 642, 203, '2016-02-06', '09:00:00', '11:40:00', 160, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 05:35:51', 643, 200, '2016-02-06', '11:40:00', '12:00:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 05:37:52', 644, 203, '2016-02-06', '12:00:00', '14:10:00', 130, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 05:36:51', 645, 201, '2016-02-06', '14:10:00', '15:59:00', 109, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-06 05:37:17', 646, 203, '2016-02-06', '15:00:00', '16:30:00', 90, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-08 09:41:44', 647, 208, '2016-02-07', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-08 09:42:13', 648, 203, '2016-02-08', '09:00:00', '11:55:00', 175, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-08 09:42:47', 649, 200, '2016-02-08', '11:56:00', '12:15:00', 19, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-08 09:43:18', 650, 203, '2016-02-08', '12:15:00', '14:10:00', 115, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-08 09:43:54', 651, 201, '2016-02-08', '14:10:00', '15:00:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-08 09:44:23', 652, 203, '2016-02-08', '15:00:00', '18:00:00', 180, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-08 09:45:04', 653, 200, '2016-02-08', '18:00:00', '18:20:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-08 09:45:36', 654, 203, '2016-02-08', '18:20:00', '20:15:00', 115, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-09 00:14:45', 655, 204, '2016-02-03', '10:00:00', '11:15:00', 75, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-09 00:26:02', 656, 200, '2016-02-03', '11:15:00', '11:30:00', 15, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-09 00:26:12', 657, 200, '2016-02-03', '11:15:00', '11:30:00', 15, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-09 00:27:29', 658, 203, '2016-02-03', '11:30:00', '14:30:00', 180, '', 'victor.a@gaddieltech.com', '', 26, 2, 'pdf', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-09 00:28:55', 659, 200, '2016-02-03', '14:30:00', '15:30:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-09 00:58:46', 660, 204, '2016-02-03', '15:30:00', '17:30:00', 120, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-09 01:00:45', 661, 210, '2016-02-04', '09:00:00', '18:00:00', 540, '', 'victor.a@gaddieltech.com', '', 29, 6, 'Leave', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-09 01:08:24', 662, 204, '2016-02-05', '10:30:00', '11:30:00', 60, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:03:32', 663, 203, '2016-02-09', '09:00:00', '11:50:00', 170, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:04:35', 664, 200, '2016-02-09', '11:50:00', '12:10:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:07:43', 665, 203, '2016-02-09', '12:10:00', '14:10:00', 120, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:15:43', 666, 201, '2016-02-09', '14:10:00', '15:00:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:34:24', 667, 203, '2016-02-09', '15:00:00', '17:55:00', 175, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:34:49', 668, 200, '2016-02-09', '17:55:00', '18:15:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:35:17', 669, 203, '2016-02-09', '18:15:00', '19:30:00', 75, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:35:57', 670, 202, '2016-02-09', '19:30:00', '21:30:00', 120, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:36:19', 671, 203, '2016-02-10', '09:00:00', '11:55:00', 175, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:36:41', 672, 200, '2016-02-10', '11:55:00', '12:20:00', 25, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:37:09', 673, 203, '2016-02-10', '12:20:00', '14:10:00', 110, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:37:28', 674, 201, '2016-02-10', '14:10:00', '15:00:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:38:09', 675, 203, '2016-02-10', '15:00:00', '17:30:00', 150, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:38:38', 676, 200, '2016-02-10', '17:30:00', '17:45:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-10 09:38:59', 677, 203, '2016-02-10', '17:45:00', '20:00:00', 135, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 00:24:48', 678, 203, '2016-02-02', '10:00:00', '11:55:00', 115, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 00:25:25', 679, 200, '2016-02-02', '11:55:00', '12:15:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 00:26:10', 680, 203, '2016-02-02', '12:15:00', '14:40:00', 145, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 00:26:53', 681, 201, '2016-02-02', '14:40:00', '15:15:00', 35, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 00:27:36', 682, 203, '2016-02-02', '15:15:00', '18:00:00', 165, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 00:29:41', 683, 203, '2016-02-02', '18:00:00', '18:15:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 00:29:14', 684, 203, '2016-02-02', '18:15:00', '20:25:00', 130, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 00:30:45', 685, 203, '2016-02-03', '10:00:00', '11:55:00', 115, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 00:31:16', 686, 203, '2016-02-03', '11:55:00', '12:15:00', 20, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 00:31:57', 687, 203, '2016-02-03', '12:15:00', '14:32:00', 137, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 00:33:04', 688, 201, '2016-02-03', '14:32:00', '15:15:00', 43, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 00:33:44', 689, 203, '2016-02-03', '15:15:00', '18:00:00', 165, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 00:34:32', 690, 200, '2016-02-03', '18:00:00', '18:15:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 00:35:25', 691, 203, '2016-02-03', '18:15:00', '19:15:00', 60, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 09:25:46', 692, 203, '2016-02-06', '10:10:00', '11:30:00', 80, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 09:26:11', 693, 200, '2016-02-06', '11:30:00', '11:45:00', 15, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 09:28:42', 694, 203, '2016-02-06', '11:45:00', '14:30:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 09:29:08', 695, 200, '2016-02-06', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 09:30:17', 696, 203, '2016-02-11', '09:00:00', '11:55:00', 175, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:22:12', 697, 203, '2016-02-06', '15:00:00', '16:30:00', 90, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 09:30:58', 698, 200, '2016-02-11', '11:55:00', '12:15:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:30:56', 714, 203, '2016-02-09', '10:20:00', '12:00:00', 100, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 09:39:12', 700, 203, '2016-02-11', '12:15:00', '14:05:00', 110, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-11 09:40:32', 701, 201, '2016-02-11', '14:05:00', '15:00:00', 55, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:30:13', 713, 208, '2016-02-07', '09:00:00', '18:30:00', 570, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:23:38', 703, 203, '2016-02-08', '10:10:00', '11:45:00', 95, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:24:01', 704, 200, '2016-02-08', '11:45:00', '12:00:00', 15, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:24:11', 705, 203, '2016-02-08', '12:00:00', '14:00:00', 120, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:24:26', 706, 200, '2016-02-08', '14:00:00', '14:30:00', 30, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:24:35', 707, 203, '2016-02-08', '14:30:00', '17:45:00', 195, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:20:04', 708, 203, '2016-02-11', '15:00:00', '17:50:00', 170, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:24:43', 709, 200, '2016-02-08', '17:45:00', '18:00:00', 15, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:20:40', 710, 200, '2016-02-11', '17:50:00', '18:10:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:24:52', 711, 203, '2016-02-08', '18:00:00', '20:00:00', 120, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:21:07', 712, 203, '2016-02-12', '16:10:00', '20:00:00', 230, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:31:43', 715, 200, '2016-02-09', '12:00:00', '12:15:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:33:42', 716, 203, '2016-02-09', '12:15:00', '14:30:00', 135, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:34:30', 717, 200, '2016-02-09', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:35:56', 718, 203, '2016-02-09', '15:00:00', '17:45:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:36:05', 719, 203, '2016-02-04', '10:00:00', '11:55:00', 115, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:39:38', 720, 200, '2016-02-04', '11:55:00', '12:15:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:52:58', 721, 200, '2016-02-09', '17:45:00', '18:00:00', 15, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:52:47', 722, 203, '2016-02-09', '18:00:00', '19:30:00', 90, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-12 00:55:00', 723, 202, '2016-02-09', '19:30:00', '21:30:00', 120, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-13 00:08:48', 724, 203, '2016-02-10', '10:10:00', '00:00:11', 0, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-13 00:10:27', 725, 200, '2016-02-10', '11:45:00', '12:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-13 00:09:38', 726, 203, '2016-02-10', '12:00:00', '14:30:00', 150, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-13 00:10:14', 727, 200, '2016-02-10', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-13 00:11:28', 728, 203, '2016-02-10', '15:00:00', '17:45:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-13 00:12:07', 729, 200, '2016-02-10', '17:45:00', '18:00:00', 15, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-13 00:13:58', 730, 203, '2016-02-10', '18:00:00', '20:00:00', 120, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-13 00:14:45', 731, 203, '2016-02-11', '10:20:00', '12:00:00', 100, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-13 00:17:58', 732, 200, '2016-02-11', '12:00:00', '12:15:00', 15, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-13 00:18:38', 733, 203, '2016-02-11', '12:15:00', '14:30:00', 135, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-13 00:19:28', 734, 200, '2016-02-11', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-13 00:20:36', 735, 203, '2016-02-11', '15:00:00', '17:45:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-13 00:21:15', 736, 200, '2016-02-11', '17:45:00', '18:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-13 00:22:08', 737, 203, '2016-02-11', '18:00:00', '19:50:00', 110, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-15 06:15:09', 738, 203, '2016-02-13', '09:00:00', '11:50:00', 170, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-15 06:15:37', 739, 200, '2016-02-13', '11:50:00', '12:10:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-15 06:16:02', 740, 203, '2016-02-13', '12:10:00', '14:10:00', 120, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-15 06:16:35', 741, 201, '2016-02-13', '14:10:00', '15:00:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 22:40:40', 742, 203, '2016-02-13', '15:00:00', '16:30:00', 90, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-15 06:17:35', 743, 208, '2016-02-14', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:09:11', 744, 203, '2016-02-04', '12:15:00', '14:45:00', 150, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:09:44', 745, 201, '2016-02-04', '14:45:00', '15:30:00', 45, '', 'ajprince1789@gmail.com', '', 29, 5, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:10:27', 746, 203, '2016-02-04', '15:30:00', '18:35:00', 185, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:11:07', 747, 200, '2016-02-04', '18:35:00', '18:55:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:11:53', 748, 203, '2016-02-04', '18:55:00', '20:15:00', 80, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:13:42', 749, 203, '2016-02-05', '10:00:00', '12:00:00', 120, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:16:47', 750, 200, '2016-02-05', '12:00:00', '12:20:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:17:22', 751, 203, '2016-02-05', '12:20:00', '14:40:00', 140, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:18:27', 752, 201, '2016-02-05', '14:40:00', '15:30:00', 50, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:20:07', 753, 203, '2016-02-05', '15:30:00', '18:30:00', 180, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:21:35', 754, 200, '2016-02-05', '18:30:00', '18:55:00', 25, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:22:24', 755, 203, '2016-02-05', '18:55:00', '20:10:00', 75, '', 'ajprince1789@gmail.com', '', 23, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:26:30', 756, 203, '2016-02-06', '10:00:00', '12:00:00', 120, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:25:55', 757, 200, '2016-02-06', '12:00:00', '12:14:00', 14, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:29:48', 758, 201, '2016-02-06', '12:14:00', '14:30:00', 136, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:31:42', 759, 201, '2016-02-06', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 00:40:24', 760, 203, '2016-02-06', '15:00:00', '16:30:00', 90, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:37:50', 761, 208, '2016-02-07', '09:00:00', '18:00:00', 540, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 22:40:52', 762, 203, '2016-02-15', '10:30:00', '11:50:00', 80, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 22:41:06', 763, 200, '2016-02-15', '11:50:00', '12:10:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 22:41:18', 764, 203, '2016-02-15', '12:10:00', '13:30:00', 80, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 22:41:30', 765, 201, '2016-02-15', '13:30:00', '14:50:00', 80, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 22:41:40', 766, 203, '2016-02-15', '14:50:00', '20:30:00', 340, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 22:42:09', 767, 203, '2016-02-16', '09:00:00', '11:30:00', 150, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 22:42:35', 768, 200, '2016-02-16', '11:30:00', '11:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 22:43:01', 769, 203, '2016-02-16', '11:50:00', '14:00:00', 130, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 22:43:24', 770, 201, '2016-02-16', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 22:44:02', 771, 203, '2016-02-16', '14:50:00', '18:00:00', 190, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 22:44:35', 772, 200, '2016-02-16', '18:00:00', '18:20:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-16 22:45:05', 773, 203, '2016-02-16', '18:21:00', '20:30:00', 129, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:13:51', 774, 203, '2016-02-12', '10:15:00', '11:45:00', 90, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:15:39', 775, 200, '2016-02-12', '11:45:00', '12:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:15:27', 776, 203, '2016-02-12', '12:00:00', '14:30:00', 150, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:16:15', 777, 200, '2016-02-12', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:16:41', 778, 203, '2016-02-12', '15:00:00', '17:30:00', 150, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:17:09', 779, 200, '2016-02-12', '17:30:00', '17:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:17:48', 780, 203, '2016-02-12', '17:45:00', '19:45:00', 120, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:18:42', 781, 203, '2016-02-13', '10:20:00', '11:30:00', 70, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:19:14', 782, 200, '2016-02-13', '11:30:00', '11:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:19:45', 783, 203, '2016-02-13', '11:45:00', '14:30:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:21:24', 784, 200, '2016-02-13', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:21:08', 785, 203, '2016-02-13', '15:00:00', '16:45:00', 105, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:21:48', 786, 208, '2016-02-14', '09:00:00', '18:30:00', 570, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:31:50', 787, 203, '2016-02-08', '10:00:00', '11:50:00', 110, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:32:39', 788, 200, '2016-02-08', '11:50:00', '12:10:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:33:49', 789, 203, '2016-02-08', '12:10:00', '14:45:00', 155, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:34:53', 790, 201, '2016-02-08', '14:45:00', '15:15:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:35:47', 791, 203, '2016-02-08', '15:15:00', '18:05:00', 170, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:36:24', 792, 200, '2016-02-08', '18:05:00', '18:20:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:37:08', 793, 203, '2016-02-08', '18:20:00', '20:25:00', 125, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:39:15', 794, 203, '2016-02-09', '10:00:00', '11:45:00', 105, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:47:14', 795, 200, '2016-02-09', '11:45:00', '12:00:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:47:52', 796, 203, '2016-02-09', '12:00:00', '14:30:00', 150, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:48:31', 797, 201, '2016-02-09', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:49:07', 798, 203, '2016-02-09', '15:00:00', '18:05:00', 185, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:49:43', 799, 200, '2016-02-09', '18:05:00', '18:20:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 00:50:24', 800, 203, '2016-02-09', '18:20:00', '20:20:00', 120, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 04:38:52', 801, 203, '2016-02-10', '10:00:00', '11:50:00', 110, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 04:39:58', 802, 200, '2016-02-10', '11:50:00', '12:15:00', 25, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 04:40:32', 803, 203, '2016-02-10', '12:15:00', '15:10:00', 175, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 04:41:11', 804, 201, '2016-02-10', '15:10:00', '15:50:00', 40, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 04:43:08', 805, 203, '2016-02-10', '15:50:00', '18:00:00', 130, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 04:42:50', 806, 200, '2016-02-10', '18:00:00', '18:15:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 04:44:05', 807, 203, '2016-02-10', '18:15:00', '19:45:00', 90, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 08:47:21', 808, 203, '2016-02-11', '10:00:00', '11:55:00', 115, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 08:48:07', 809, 200, '2016-02-11', '11:55:00', '12:15:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 08:48:53', 810, 203, '2016-02-11', '12:15:00', '14:30:00', 135, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 08:49:33', 811, 201, '2016-02-11', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 09:10:15', 812, 203, '2016-02-11', '15:00:00', '18:01:00', 181, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 09:11:27', 813, 200, '2016-02-11', '18:01:00', '18:20:00', 19, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 09:12:24', 814, 203, '2016-02-11', '18:20:00', '20:16:00', 116, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 09:13:05', 815, 203, '2016-02-12', '10:00:00', '11:55:00', 115, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 09:14:02', 816, 203, '2016-02-12', '11:55:00', '12:15:00', 20, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-17 09:14:41', 817, 203, '2016-02-12', '12:15:00', '14:30:00', 135, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 08:54:58', 818, 203, '2016-02-15', '10:10:00', '11:30:00', 80, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 08:57:53', 819, 200, '2016-02-15', '11:30:00', '11:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 08:56:35', 820, 203, '2016-02-15', '11:45:00', '14:30:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 08:57:07', 821, 200, '2016-02-15', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 08:59:21', 822, 203, '2016-02-15', '15:00:00', '20:30:00', 330, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 08:59:53', 823, 203, '2016-02-16', '10:15:00', '12:00:00', 105, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:00:06', 824, 201, '2016-02-12', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:00:52', 825, 203, '2016-02-12', '15:00:00', '18:00:00', 180, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:00:57', 826, 200, '2016-02-16', '12:00:00', '12:15:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:01:46', 827, 203, '2016-02-16', '12:15:00', '14:30:00', 135, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:02:43', 828, 200, '2016-02-12', '18:00:00', '18:15:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:02:24', 829, 200, '2016-02-16', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:02:29', 830, 203, '2016-02-12', '18:16:00', '20:00:00', 104, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:03:03', 831, 203, '2016-02-16', '15:00:00', '17:45:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:03:20', 832, 203, '2016-02-13', '10:00:00', '12:00:00', 120, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:03:27', 833, 200, '2016-02-16', '17:45:00', '18:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:10:52', 834, 203, '2016-02-16', '18:00:00', '20:40:00', 160, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:11:29', 835, 200, '2016-02-13', '12:00:00', '12:20:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:10:37', 836, 203, '2016-02-13', '12:20:00', '14:30:00', 130, '', 'ajprince1789@gmail.com', '', 23, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:11:11', 837, 201, '2016-02-13', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:12:50', 838, 203, '2016-02-13', '15:00:00', '18:05:00', 185, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:15:02', 840, 208, '2016-02-14', '09:00:00', '18:00:00', 540, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:19:06', 841, 203, '2016-02-17', '09:00:00', '12:00:00', 180, '', 'arunbalu487@gmail.com', '', 26, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:19:34', 842, 200, '2016-02-17', '12:00:00', '12:20:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:20:04', 843, 203, '2016-02-17', '12:20:00', '14:00:00', 100, '', 'arunbalu487@gmail.com', '', 26, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:20:43', 844, 201, '2016-02-17', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:22:14', 845, 203, '2016-02-17', '14:50:00', '20:30:00', 340, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:22:51', 846, 203, '2016-02-18', '09:00:00', '11:30:00', 150, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:23:29', 847, 200, '2016-02-18', '11:30:00', '11:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 01:03:37', 848, 203, '2016-02-18', '11:50:00', '12:15:00', 25, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 01:03:54', 849, 202, '2016-02-18', '12:15:00', '14:30:00', 135, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:24:56', 850, 201, '2016-02-18', '14:30:00', '15:15:00', 45, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:25:27', 851, 203, '2016-02-18', '15:15:00', '17:30:00', 135, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:25:54', 852, 200, '2016-02-18', '17:30:00', '17:55:00', 25, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-18 09:26:19', 853, 203, '2016-02-18', '17:55:00', '20:00:00', 125, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 00:20:33', 854, 203, '2016-02-15', '10:00:00', '12:00:00', 120, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 00:24:42', 855, 200, '2016-02-15', '12:00:00', '12:15:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 00:28:28', 856, 203, '2016-02-15', '12:15:00', '14:30:00', 135, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 00:29:34', 857, 201, '2016-02-15', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 00:30:18', 858, 203, '2016-02-15', '15:00:00', '18:00:00', 180, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 00:30:59', 859, 200, '2016-02-15', '18:00:00', '18:20:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 00:32:07', 860, 203, '2016-02-15', '18:20:00', '20:15:00', 115, '', 'ajprince1789@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 00:51:31', 861, 203, '2016-02-17', '10:25:00', '12:00:00', 95, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 00:52:04', 862, 200, '2016-02-17', '12:00:00', '12:15:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 00:52:33', 863, 203, '2016-02-17', '12:15:00', '14:30:00', 135, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 00:55:59', 864, 200, '2016-02-17', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 00:56:48', 865, 203, '2016-02-17', '15:00:00', '17:45:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 00:57:42', 866, 200, '2016-02-17', '17:45:00', '18:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 00:59:27', 867, 203, '2016-02-17', '18:00:00', '20:30:00', 150, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 01:02:54', 868, 203, '2016-02-18', '10:30:00', '11:30:00', 60, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 01:03:41', 869, 200, '2016-02-18', '11:30:00', '11:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 01:04:07', 870, 203, '2016-02-18', '11:45:00', '12:15:00', 30, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 01:05:15', 871, 202, '2016-02-18', '12:15:00', '14:00:00', 105, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 01:05:56', 872, 203, '2016-02-18', '14:00:00', '14:30:00', 30, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 01:06:23', 873, 200, '2016-02-18', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 01:07:23', 874, 203, '2016-02-18', '15:00:00', '17:45:00', 165, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 01:08:03', 875, 200, '2016-02-18', '17:45:00', '18:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 01:08:35', 876, 203, '2016-02-18', '18:00:00', '19:45:00', 105, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 08:59:47', 877, 215, '2016-02-19', '09:00:00', '11:30:00', 150, '', 'arunbalu487@gmail.com', '', 26, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 09:00:25', 878, 200, '2016-02-19', '11:30:00', '11:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 09:00:52', 879, 203, '2016-02-19', '11:50:00', '14:30:00', 160, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 09:01:18', 880, 201, '2016-02-19', '14:30:00', '15:30:00', 60, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 09:01:43', 881, 203, '2016-02-19', '15:30:00', '17:30:00', 120, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 09:02:11', 882, 200, '2016-02-19', '17:30:00', '18:00:00', 30, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-19 09:02:47', 883, 203, '2016-02-19', '18:00:00', '19:30:00', 90, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:28:13', 884, 203, '2016-02-20', '09:00:00', '12:30:00', 210, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:27:59', 885, 200, '2016-02-20', '12:30:00', '12:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:28:54', 886, 203, '2016-02-20', '12:50:00', '14:00:00', 70, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:29:23', 887, 201, '2016-02-20', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:30:01', 888, 203, '2016-02-20', '14:50:00', '15:30:00', 40, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:33:14', 889, 203, '2016-02-20', '15:30:00', '16:20:00', 50, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:33:37', 890, 203, '2016-02-20', '16:20:00', '17:00:00', 40, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:34:18', 891, 208, '2016-02-21', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:36:55', 892, 214, '2016-02-22', '10:20:00', '11:50:00', 90, '', 'arunbalu487@gmail.com', '', 26, 5, ' Ecommerce Reimplement', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:37:14', 893, 200, '2016-02-22', '11:50:00', '12:10:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:37:47', 894, 214, '2016-02-22', '12:10:00', '14:10:00', 120, '', 'arunbalu487@gmail.com', '', 26, 2, ' Ecommerce Reimplement', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:38:07', 895, 201, '2016-02-22', '14:10:00', '15:00:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:38:32', 896, 214, '2016-02-22', '15:00:00', '17:45:00', 165, '', 'arunbalu487@gmail.com', '', 26, 4, ' Ecommerce Reimplement', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:39:05', 897, 200, '2016-02-22', '17:45:00', '18:10:00', 25, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-22 09:39:52', 898, 203, '2016-02-22', '18:10:00', '20:10:00', 120, '', 'arunbalu487@gmail.com', '', 25, 2, ' Implement gps in phonegap\n', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-23 09:09:02', 899, 203, '2016-02-23', '09:00:00', '11:50:00', 170, '', 'arunbalu487@gmail.com', '', 25, 2, ' Implement gps in phonegap', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-23 09:09:31', 900, 200, '2016-02-23', '11:50:00', '12:10:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-23 09:10:24', 901, 203, '2016-02-23', '12:10:00', '13:45:00', 95, '', 'arunbalu487@gmail.com', '', 25, 2, ' Implement gps in phonegap', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-23 09:10:50', 902, 201, '2016-02-23', '13:45:00', '14:30:00', 45, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-23 09:14:10', 903, 203, '2016-02-23', '14:30:00', '17:30:00', 180, '', 'arunbalu487@gmail.com', '', 25, 2, ' Implement gps in phonegap', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-23 09:14:40', 904, 200, '2016-02-23', '17:30:00', '17:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-23 09:16:45', 905, 203, '2016-02-23', '17:50:00', '19:50:00', 120, '', 'arunbalu487@gmail.com', '', 25, 2, 'Implement gps in phonegap', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-24 00:20:44', 906, 200, '2016-02-05', '11:30:00', '11:50:00', 20, '', 'victor.a@gaddieltech.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-25 09:00:42', 907, 216, '2016-02-24', '09:00:00', '12:30:00', 210, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-25 09:01:14', 908, 200, '2016-02-24', '12:30:00', '12:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-25 09:02:16', 909, 216, '2016-02-24', '12:50:00', '14:00:00', 70, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-25 09:02:39', 910, 201, '2016-02-24', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-25 09:03:47', 911, 216, '2016-02-24', '14:50:00', '18:00:00', 190, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-25 09:04:18', 912, 200, '2016-02-24', '18:00:00', '18:20:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-25 09:04:58', 913, 216, '2016-02-24', '18:20:00', '19:30:00', 70, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-25 09:05:25', 914, 216, '2016-02-25', '09:00:00', '13:45:00', 285, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-25 09:05:47', 915, 201, '2016-02-25', '13:45:00', '14:30:00', 45, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-25 09:06:38', 916, 216, '2016-02-25', '14:30:00', '16:50:00', 140, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-25 09:07:15', 917, 216, '2016-02-25', '16:50:00', '19:40:00', 170, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-26 07:14:25', 918, 216, '2016-02-26', '09:00:00', '11:30:00', 150, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-26 07:15:57', 919, 200, '2016-02-26', '11:30:00', '11:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-26 07:17:20', 920, 216, '2016-02-26', '11:50:00', '14:05:00', 135, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-26 07:19:12', 921, 201, '2016-02-26', '14:05:00', '14:50:00', 45, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-26 07:21:03', 922, 216, '2016-02-26', '14:50:00', '17:50:00', 180, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-28 23:43:42', 923, 216, '2016-02-19', '10:05:00', '11:45:00', 100, '', 'balac.waves@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-02-28 23:44:12', 924, 200, '2016-02-19', '11:45:00', '12:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 04:42:49', 925, 208, '2016-02-27', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 04:42:24', 926, 208, '2016-02-28', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 04:43:48', 927, 216, '2016-02-29', '09:00:00', '12:10:00', 190, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 04:44:25', 928, 200, '2016-02-29', '12:10:00', '12:40:00', 30, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 04:44:54', 929, 216, '2016-02-29', '12:40:00', '14:00:00', 80, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 04:45:27', 930, 201, '2016-02-29', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 04:46:45', 931, 216, '2016-02-29', '14:50:00', '21:00:00', 370, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 04:47:13', 932, 216, '2016-03-01', '09:00:00', '12:00:00', 180, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 04:47:52', 933, 200, '2016-03-01', '12:00:00', '12:20:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 04:48:15', 934, 216, '2016-03-01', '12:20:00', '14:00:00', 100, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 04:49:04', 935, 201, '2016-03-01', '14:00:00', '14:50:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 09:56:50', 936, 216, '2016-03-01', '14:50:00', '18:00:00', 190, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 09:57:25', 937, 200, '2016-03-01', '18:00:00', '18:20:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 09:57:56', 938, 216, '2016-03-01', '18:20:00', '20:30:00', 130, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 23:40:51', 939, 216, '2016-03-01', '10:00:00', '12:00:00', 120, '', 'balac.waves@gmail.com', '', 27, 4, '', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 23:42:59', 940, 200, '2016-03-01', '12:00:00', '12:15:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 23:43:30', 941, 216, '2016-03-01', '12:15:00', '14:30:00', 135, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 23:44:14', 942, 200, '2016-03-01', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 23:45:12', 943, 216, '2016-03-01', '15:00:00', '18:10:00', 190, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 23:45:48', 944, 200, '2016-03-01', '18:10:00', '18:25:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-01 23:46:46', 945, 216, '2016-03-01', '18:25:00', '21:10:00', 165, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-02 00:20:07', 946, 216, '2016-03-01', '10:00:00', '12:00:00', 120, '', 'ajprince1789@gmail.com', '', 25, 2, 'Rosarry -Implmentation of record options', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-02 00:20:51', 947, 200, '2016-03-01', '12:00:00', '12:20:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-03 05:12:17', 948, 216, '2016-03-02', '10:00:00', '12:00:00', 120, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-03 05:58:44', 949, 216, '2016-03-02', '09:00:00', '12:10:00', 190, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-03 05:59:29', 950, 200, '2016-03-02', '12:10:00', '12:30:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-03 06:00:10', 951, 216, '2016-03-02', '12:30:00', '14:10:00', 100, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-03 06:02:00', 952, 201, '2016-03-02', '14:10:00', '15:00:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-03 06:04:40', 953, 216, '2016-03-02', '15:00:00', '18:10:00', 190, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-03 06:06:18', 954, 200, '2016-03-02', '18:10:00', '18:30:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-03 06:07:14', 955, 216, '2016-03-02', '18:20:00', '20:15:00', 115, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-03 06:07:49', 956, 216, '2016-03-03', '09:00:00', '14:05:00', 305, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-03 06:08:18', 957, 201, '2016-03-03', '14:05:00', '14:50:00', 45, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-03 23:56:27', 958, 200, '2016-03-02', '12:00:00', '12:15:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-03 23:56:59', 959, 216, '2016-03-02', '12:15:00', '14:15:00', 120, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-03 23:57:42', 960, 200, '2016-03-02', '14:15:00', '14:45:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-03 23:58:43', 961, 216, '2016-03-02', '14:45:00', '19:55:00', 310, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 00:00:24', 962, 216, '2016-03-03', '10:00:00', '14:30:00', 270, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 00:00:53', 963, 200, '2016-03-03', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 00:29:05', 964, 216, '2016-03-03', '15:00:00', '17:30:00', 150, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 00:30:22', 965, 200, '2016-03-03', '17:30:00', '17:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 00:32:19', 966, 216, '2016-03-03', '17:45:00', '20:45:00', 180, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 09:20:31', 967, 216, '2016-03-03', '14:50:00', '17:30:00', 160, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 09:20:58', 968, 200, '2016-03-03', '17:30:00', '17:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 09:21:28', 969, 216, '2016-03-03', '17:50:00', '20:15:00', 145, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 09:22:07', 970, 216, '2016-03-04', '09:00:00', '12:10:00', 190, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 09:22:35', 971, 200, '2016-03-04', '12:10:00', '12:30:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 09:23:21', 972, 216, '2016-03-04', '12:30:00', '14:10:00', 100, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 09:24:45', 973, 201, '2016-03-04', '14:10:00', '15:00:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 09:25:06', 974, 216, '2016-03-04', '15:00:00', '17:35:00', 155, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 09:26:02', 975, 200, '2016-03-04', '17:35:00', '17:55:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-04 10:09:41', 976, 216, '2016-03-04', '17:55:00', '20:40:00', 165, '', 'arunbalu487@gmail.com', '', 26, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 05:07:48', 977, 216, '2016-03-05', '09:00:00', '12:05:00', 185, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 05:08:19', 978, 200, '2016-03-05', '12:05:00', '12:25:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 05:08:47', 979, 216, '2016-03-05', '12:25:00', '14:30:00', 125, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 05:09:50', 980, 202, '2016-03-05', '14:30:00', '15:00:00', 30, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 05:10:26', 981, 201, '2016-03-05', '15:00:00', '15:30:00', 30, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 05:11:08', 982, 216, '2016-03-05', '15:30:00', '16:30:00', 60, '', 'arunbalu487@gmail.com', '', 23, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 07:08:53', 983, 216, '2016-03-01', '12:20:00', '14:30:00', 130, '', 'ajprince1789@gmail.com', '', 25, 2, '', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 07:09:26', 984, 201, '2016-03-01', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 07:10:15', 985, 216, '2016-03-01', '15:00:00', '17:45:00', 165, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 07:10:46', 986, 200, '2016-03-01', '17:45:00', '18:00:00', 15, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 07:11:37', 987, 216, '2016-03-01', '18:00:00', '20:44:00', 164, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 07:12:04', 988, 216, '2016-03-02', '10:00:00', '12:00:00', 120, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 07:12:33', 989, 200, '2016-03-02', '12:00:00', '12:20:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 07:13:12', 990, 216, '2016-03-02', '12:20:00', '14:30:00', 130, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 07:13:52', 991, 201, '2016-03-02', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 07:14:25', 992, 216, '2016-03-02', '15:00:00', '18:00:00', 180, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 07:14:54', 993, 200, '2016-03-02', '18:00:00', '18:20:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-05 07:15:26', 994, 216, '2016-03-02', '18:20:00', '21:15:00', 175, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-06 23:12:05', 995, 216, '2016-03-04', '10:00:00', '11:45:00', 105, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-06 23:12:39', 996, 200, '2016-03-04', '11:45:00', '12:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-06 23:13:14', 997, 216, '2016-03-04', '12:00:00', '14:15:00', 135, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-06 23:13:55', 998, 200, '2016-03-04', '14:15:00', '14:45:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-06 23:14:29', 999, 216, '2016-03-04', '14:45:00', '18:00:00', 195, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-06 23:16:28', 1000, 200, '2016-03-04', '18:00:00', '18:15:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-06 23:17:45', 1001, 216, '2016-03-04', '18:15:00', '20:45:00', 150, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-06 23:18:22', 1002, 216, '2016-03-05', '10:00:00', '11:30:00', 90, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-06 23:20:53', 1003, 200, '2016-03-05', '11:30:00', '11:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-06 23:20:42', 1004, 216, '2016-03-05', '11:45:00', '14:10:00', 145, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-06 23:21:37', 1005, 202, '2016-03-05', '14:10:00', '15:00:00', 50, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-06 23:22:18', 1006, 200, '2016-03-05', '15:00:00', '15:30:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-06 23:22:51', 1007, 208, '2016-03-06', '09:00:00', '18:30:00', 570, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-07 08:52:59', 1008, 216, '2016-03-07', '09:20:00', '14:30:00', 310, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-07 08:53:30', 1009, 200, '2016-03-07', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-07 08:53:54', 1010, 216, '2016-03-07', '15:00:00', '17:15:00', 135, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-07 08:55:35', 1011, 200, '2016-03-07', '17:15:00', '17:30:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:28:13', 1012, 216, '2016-03-07', '17:30:00', '19:30:00', 120, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-07 09:14:56', 1013, 210, '2016-03-05', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-07 09:15:50', 1014, 216, '2016-03-07', '10:10:00', '14:10:00', 240, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-07 09:16:10', 1015, 201, '2016-03-07', '14:10:00', '15:00:00', 50, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-07 09:16:39', 1016, 216, '2016-03-07', '15:00:00', '17:30:00', 150, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-07 09:17:04', 1017, 200, '2016-03-07', '17:30:00', '17:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-07 09:17:29', 1018, 216, '2016-03-07', '17:50:00', '20:50:00', 180, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-08 09:00:53', 1019, 216, '2016-03-08', '09:05:00', '11:30:00', 145, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-08 09:01:17', 1020, 200, '2016-03-08', '11:30:00', '11:50:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-08 09:01:44', 1021, 216, '2016-03-08', '11:50:00', '14:00:00', 130, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-08 09:02:39', 1022, 204, '2016-03-08', '14:00:00', '14:15:00', 15, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-08 09:03:04', 1023, 216, '2016-03-08', '14:15:00', '14:30:00', 15, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-08 09:04:10', 1024, 201, '2016-03-08', '14:30:00', '15:10:00', 40, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-08 09:04:28', 1025, 216, '2016-03-08', '15:10:00', '18:00:00', 170, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-08 09:04:52', 1026, 200, '2016-03-08', '18:00:00', '18:20:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-08 09:05:19', 1027, 216, '2016-03-08', '18:20:00', '19:45:00', 85, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:28:53', 1028, 216, '2016-03-08', '09:00:00', '11:45:00', 165, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:29:29', 1029, 200, '2016-03-08', '11:45:00', '12:00:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:29:54', 1030, 216, '2016-03-08', '12:00:00', '14:30:00', 150, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:32:34', 1031, 200, '2016-03-08', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:33:18', 1032, 216, '2016-03-08', '15:00:00', '17:30:00', 150, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:33:45', 1033, 200, '2016-03-08', '17:30:00', '17:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:34:19', 1034, 216, '2016-03-08', '17:45:00', '20:00:00', 135, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:34:54', 1035, 216, '2016-03-09', '09:05:00', '12:00:00', 175, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:35:17', 1036, 200, '2016-03-09', '12:00:00', '12:15:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:35:41', 1037, 216, '2016-03-09', '12:15:00', '14:30:00', 135, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:36:04', 1038, 200, '2016-03-09', '14:30:00', '15:00:00', 30, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:36:24', 1039, 216, '2016-03-09', '15:00:00', '18:30:00', 210, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:36:45', 1040, 200, '2016-03-09', '18:30:00', '18:45:00', 15, '', 'balac.waves@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 08:37:16', 1041, 216, '2016-03-09', '18:45:00', '19:10:00', 25, '', 'balac.waves@gmail.com', '', 27, 4, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 09:00:19', 1042, 216, '2016-03-09', '09:00:00', '12:00:00', 180, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 09:00:47', 1043, 200, '2016-03-09', '12:00:00', '12:20:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 09:02:29', 1044, 216, '2016-03-09', '12:20:00', '14:20:00', 120, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 09:02:52', 1045, 201, '2016-03-09', '14:20:00', '14:50:00', 30, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 09:03:16', 1046, 216, '2016-03-09', '14:50:00', '18:30:00', 220, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 09:03:44', 1047, 200, '2016-03-09', '18:30:00', '18:55:00', 25, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-09 09:04:05', 1048, 216, '2016-03-09', '18:55:00', '19:35:00', 40, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 01:30:24', 1049, 216, '2016-03-03', '09:40:00', '12:00:00', 140, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 01:31:04', 1050, 200, '2016-03-03', '12:00:00', '12:20:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 01:32:27', 1051, 216, '2016-03-03', '12:20:00', '14:30:00', 130, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 01:33:20', 1052, 200, '2016-03-03', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 01:34:07', 1053, 216, '2016-03-03', '15:00:00', '18:00:00', 180, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 01:34:50', 1054, 200, '2016-03-03', '18:00:00', '18:20:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 01:35:44', 1055, 216, '2016-03-03', '18:20:00', '21:20:00', 180, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 01:36:38', 1056, 216, '2016-03-04', '09:45:00', '12:00:00', 135, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 01:37:24', 1057, 200, '2016-03-04', '12:00:00', '12:20:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 01:38:02', 1058, 216, '2016-03-04', '12:20:00', '14:30:00', 130, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 01:38:56', 1059, 200, '2016-03-04', '14:30:00', '15:00:00', 30, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 03:24:43', 1060, 216, '2016-03-04', '15:00:00', '18:00:00', 180, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 03:25:28', 1061, 200, '2016-03-04', '18:00:00', '18:20:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 06:55:21', 1062, 216, '2016-03-04', '18:20:00', '21:00:00', 160, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 06:56:22', 1063, 216, '2016-03-05', '10:00:00', '12:30:00', 150, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 06:56:58', 1064, 200, '2016-03-05', '12:30:00', '12:50:00', 20, '', 'ajprince1789@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-14 06:57:43', 1065, 216, '2016-03-05', '12:50:00', '14:40:00', 110, '', 'ajprince1789@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-15 09:37:48', 1066, 208, '2016-03-13', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-15 09:38:14', 1067, 210, '2016-03-14', '09:00:00', '18:00:00', 540, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-15 09:38:35', 1068, 216, '2016-03-15', '10:15:00', '11:40:00', 85, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-15 09:38:59', 1069, 200, '2016-03-15', '11:40:00', '12:00:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-15 09:39:19', 1070, 216, '2016-03-15', '12:00:00', '14:00:00', 120, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-15 09:39:45', 1071, 201, '2016-03-15', '14:00:00', '14:25:00', 25, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-15 09:40:12', 1072, 216, '2016-03-15', '14:25:00', '18:00:00', 215, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-15 09:40:40', 1073, 200, '2016-03-15', '18:00:00', '18:20:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-15 10:01:11', 1074, 216, '2016-03-15', '18:20:00', '19:30:00', 70, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-16 11:01:38', 1075, 216, '2016-03-16', '09:00:00', '11:40:00', 160, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-16 11:02:13', 1076, 200, '2016-03-16', '11:40:00', '12:00:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-16 11:02:39', 1077, 216, '2016-03-16', '12:00:00', '14:10:00', 130, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-16 11:03:28', 1078, 201, '2016-03-16', '14:10:00', '14:40:00', 30, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-16 11:05:21', 1079, 216, '2016-03-16', '14:40:00', '18:10:00', 210, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-16 11:05:44', 1080, 200, '2016-03-16', '18:10:00', '18:30:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-16 11:06:14', 1081, 216, '2016-03-16', '18:30:00', '20:40:00', 130, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-23 09:40:31', 1082, 216, '2016-03-23', '09:00:00', '11:45:00', 165, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-23 09:41:18', 1083, 200, '2016-03-23', '11:45:00', '12:05:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, 'Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-23 09:42:16', 1084, 216, '2016-03-23', '12:05:00', '14:10:00', 125, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-23 09:42:49', 1085, 201, '2016-03-23', '14:10:00', '14:50:00', 40, '', 'arunbalu487@gmail.com', '', 29, 6, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-23 09:44:36', 1086, 216, '2016-03-23', '14:50:00', '17:15:00', 145, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-23 09:45:12', 1087, 200, '2016-03-23', '17:15:00', '17:35:00', 20, '', 'arunbalu487@gmail.com', '', 29, 6, ' Tea', ' ', '');
INSERT INTO `ebm_timesheet` VALUES ('-1', '0000-00-00', '-1', '2016-03-23 09:45:45', 1088, 216, '2016-03-23', '17:35:00', '19:30:00', 115, '', 'arunbalu487@gmail.com', '', 25, 2, ' ', ' ', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `ebm_user`
-- 

CREATE TABLE `ebm_user` (
  `CREATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `CREATED_DATE` date NOT NULL DEFAULT '0000-00-00',
  `UPDATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` int(10) NOT NULL,
  `PROJECT_ID` int(10) NOT NULL,
  `USER_NAME` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CLIENT_ID` (`CLIENT_ID`),
  KEY `PROJECT_ID` (`PROJECT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `ebm_user`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `ebm_week_target`
-- 

CREATE TABLE `ebm_week_target` (
  `CREATED_BY` varchar(60) DEFAULT '-1',
  `CREATED_DATE` date NOT NULL DEFAULT '0000-00-00',
  `UPDATED_BY` varchar(60) DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `WT_ID` int(10) NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` int(10) DEFAULT NULL,
  `CLIENT_NAME` varchar(60) DEFAULT NULL,
  `PROJECT_ID` int(10) DEFAULT NULL,
  `PROJECT_NAME` varchar(60) DEFAULT NULL,
  `WORKTYPE_ID` int(10) DEFAULT NULL,
  `PHASE_NAME` varchar(60) DEFAULT NULL,
  `COMPONENT_ID` int(10) DEFAULT NULL,
  `COMPONENT_NAME` varchar(60) DEFAULT NULL,
  `USER_ID` int(10) DEFAULT NULL,
  `ASSIGN_TO` varchar(60) NOT NULL,
  `USER_NAME` varchar(60) NOT NULL,
  `TARGET_DATE` date NOT NULL,
  `WORK_DESCRIPTION` varchar(60) DEFAULT NULL,
  `WT_STATUS` varchar(1) NOT NULL DEFAULT '1',
  `COMPLETION_DATE` date NOT NULL,
  `REMARKS` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`WT_ID`),
  KEY `CLIENT_ID` (`CLIENT_ID`),
  KEY `PROJECT_ID` (`PROJECT_ID`),
  KEY `WORKTYPE_ID` (`WORKTYPE_ID`),
  KEY `COMPONENT_ID` (`COMPONENT_ID`),
  KEY `USER_ID` (`USER_ID`),
  KEY `WT_STATUS` (`WT_STATUS`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

-- 
-- Dumping data for table `ebm_week_target`
-- 

INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2015-11-24 07:57:34', 25, NULL, NULL, 193, NULL, 21, NULL, 22, NULL, 14, '', '', '2015-11-27', '', '4', '0000-00-00', '');
INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2015-11-24 07:58:26', 26, NULL, NULL, 193, NULL, 4, NULL, 22, NULL, 16, '', '', '2015-11-30', '', '4', '2015-11-19', '');
INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2015-11-28 02:51:33', 27, NULL, NULL, 193, NULL, 22, NULL, 21, NULL, 22, '', 'victor.a@gaddieltech.com', '2015-11-19', '', '4', '0000-00-00', '');
INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:50:47', 46, NULL, NULL, 203, NULL, 24, NULL, 21, NULL, 18, '', '', '2016-01-31', 'Training', '2', '0000-00-00', 'Android Training');
INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:33:53', 37, NULL, NULL, 205, NULL, 24, NULL, 21, NULL, 14, '', 'peter.franklin@gaddieltech.com', '2016-01-09', '', '2', '0000-00-00', 'User Login and Access interface ');
INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:33:13', 36, NULL, NULL, 198, NULL, 24, NULL, 22, NULL, 14, '', 'peter.franklin@gaddieltech.com', '2016-01-09', '', '2', '0000-00-00', 'Advanced features of DialogEdu');
INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:45:30', 45, NULL, NULL, 196, NULL, 24, NULL, 21, NULL, 16, '', 'peter.franklin@gaddieltech.com', '2016-01-12', 'Local Storage and mass update on submit', '5', '0000-00-00', 'Document Management System - User-File Permission');
INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:37:19', 44, NULL, NULL, 196, NULL, 24, NULL, 21, NULL, 14, '', 'peter.franklin@gaddieltech.com', '2016-01-12', 'Local Storage and mass update on submit', '5', '0000-00-00', 'Document Management System - User-File Permission');
INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:34:54', 38, NULL, NULL, 195, NULL, 24, NULL, 21, NULL, 14, '', 'peter.franklin@gaddieltech.com', '2016-01-09', '', '2', '0000-00-00', 'Upload of programs on SVN ');
INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:35:47', 39, NULL, NULL, 196, NULL, 24, NULL, 21, NULL, 16, '', 'peter.franklin@gaddieltech.com', '2016-01-09', '', '2', '0000-00-00', 'Document Management System - File Handling ');
INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:36:28', 40, NULL, NULL, 205, NULL, 24, NULL, 21, NULL, 16, '', 'peter.franklin@gaddieltech.com', '2016-01-09', '', '2', '0000-00-00', 'User Login and Access interface ');
INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:40:35', 41, NULL, NULL, 203, NULL, 23, NULL, 21, NULL, 16, '', 'peter.franklin@gaddieltech.com', '2016-01-31', '', '2', '0000-00-00', 'Android Trainer ');
INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:51:25', 42, NULL, NULL, 203, NULL, 23, NULL, 21, NULL, 18, '', 'peter.franklin@gaddieltech.com', '2016-01-31', '', '2', '0000-00-00', '');
INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2016-01-06 06:51:50', 43, NULL, NULL, 203, NULL, 23, NULL, 21, NULL, 20, '', 'peter.franklin@gaddieltech.com', '2016-01-31', '', '2', '0000-00-00', '');
INSERT INTO `ebm_week_target` VALUES ('-1', '0000-00-00', '-1', '2016-01-11 08:50:36', 47, NULL, NULL, 203, NULL, 23, NULL, 21, NULL, 20, '', 'peter.franklin@gaddieltech.com', '2016-01-31', '', '2', '0000-00-00', 'Android Training');

-- --------------------------------------------------------

-- 
-- Table structure for table `ebm_work_type`
-- 

CREATE TABLE `ebm_work_type` (
  `CREATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `CREATED_DATE` date NOT NULL DEFAULT '0000-00-00',
  `UPDATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `WORK_TYPE` varchar(60) NOT NULL,
  `DESCRIPTION` varchar(260) DEFAULT NULL,
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

-- 
-- Dumping data for table `ebm_work_type`
-- 

INSERT INTO `ebm_work_type` VALUES ('-1', '0000-00-00', '-1', '2015-11-30 03:17:48', 23, 'Training', '');
INSERT INTO `ebm_work_type` VALUES ('-1', '0000-00-00', '-1', '2015-11-30 03:17:57', 24, 'Design', '');
INSERT INTO `ebm_work_type` VALUES ('-1', '0000-00-00', '-1', '2015-11-30 03:18:09', 25, 'Development', '');
INSERT INTO `ebm_work_type` VALUES ('-1', '0000-00-00', '-1', '2015-11-30 03:18:18', 26, 'Testing', '');
INSERT INTO `ebm_work_type` VALUES ('-1', '0000-00-00', '-1', '2015-11-30 03:32:38', 27, 'UAT', '');
INSERT INTO `ebm_work_type` VALUES ('-1', '0000-00-00', '-1', '2015-11-30 03:32:30', 28, 'Sys Admin', '');
INSERT INTO `ebm_work_type` VALUES ('-1', '0000-00-00', '-1', '2016-01-05 00:10:16', 29, 'Others', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `ebm_wt_component`
-- 

CREATE TABLE `ebm_wt_component` (
  `CREATED_BY` varchar(60) DEFAULT '-1',
  `CREATED_DATE` date NOT NULL DEFAULT '0000-00-00',
  `UPDATED_BY` varchar(60) DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `COMP_ID` int(10) NOT NULL AUTO_INCREMENT,
  `COMP_NAME` varchar(60) NOT NULL,
  `COMPLETION_DATE` date NOT NULL DEFAULT '0000-00-00',
  `CLIENT_ID` int(10) DEFAULT NULL,
  `PROJECT_ID` int(10) DEFAULT NULL,
  `STATUS_ID` varchar(60) NOT NULL,
  PRIMARY KEY (`COMP_ID`),
  KEY `CLIENT_ID` (`CLIENT_ID`),
  KEY `PROJECT_ID` (`PROJECT_ID`),
  KEY `STATUS_ID` (`STATUS_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

-- 
-- Dumping data for table `ebm_wt_component`
-- 

INSERT INTO `ebm_wt_component` VALUES ('-1', '0000-00-00', '-1', '2015-11-23 08:53:50', 21, 'Program', '0000-00-00', NULL, 193, '2');
INSERT INTO `ebm_wt_component` VALUES ('-1', '0000-00-00', '-1', '2015-11-23 08:52:40', 22, 'Repository', '0000-00-00', NULL, 193, '4');
INSERT INTO `ebm_wt_component` VALUES ('-1', '0000-00-00', '-1', '2015-11-30 03:49:21', 23, 'Repositary', '0000-00-00', NULL, 195, '2');