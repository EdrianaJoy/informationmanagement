-- Create Database
CREATE DATABASE IF NOT EXISTS kera_web;
USE kera_web;

-- Create Applicant table
CREATE TABLE IF NOT EXISTS `Applicant` (
  `app_id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `app_name` varchar(50) NOT NULL,
  `date_birth` date NOT NULL,
  `app_add` varchar(80) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `phone_num` varchar(15) NOT NULL,
  `email_add` varchar(50) NOT NULL
);

-- Create Request table
CREATE TABLE IF NOT EXISTS `Request` (
  `req_id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `emp_type` char(9) NOT NULL,
  `pos_app` varchar(30) NOT NULL,
  `des_sal` int NOT NULL,
  `date_start` date NOT NULL,
  `req_status` varchar(8) DEFAULT 'Pending',
  `app_id` int,
  FOREIGN KEY (`app_id`) REFERENCES `Applicant` (`app_id`) ON DELETE SET NULL
);

-- Create Work table
CREATE TABLE IF NOT EXISTS `Work` (
  `work_id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `comp_name` varchar(40),
  `work_period` char(9),
  `comp_pos` varchar(40),
  `app_id` int,
  CONSTRAINT `FK_Applicant_Work_ID` FOREIGN KEY (`app_id`) REFERENCES `Applicant` (`app_id`) ON DELETE CASCADE
);

-- Create Education table
CREATE TABLE IF NOT EXISTS `Education` (
  `app_id` int NOT NULL PRIMARY KEY,
  `school_name` varchar(80) NOT NULL,
  `school_loc` varchar(50) NOT NULL,
  `date_grad` date NOT NULL,
  `educ_attain` varchar(80) NOT NULL,
  FOREIGN KEY (`app_id`) REFERENCES `Applicant` (`app_id`) ON DELETE CASCADE
);

-- Create Skill_set table
CREATE TABLE IF NOT EXISTS `Skill_set` (
  `app_id` int NOT NULL PRIMARY KEY,
  `skill_one` varchar(30) NOT NULL,
  `skill_two` varchar(30),
  `skill_three` varchar(30),
  `skill_four` varchar(30),
  CONSTRAINT `FK_Applicant_Skill_ID` FOREIGN KEY (`app_id`) REFERENCES `Applicant` (`app_id`) ON DELETE CASCADE
);
