-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2021 at 09:49 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HealthCare Organizaion `
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

. create table for patient:
CREATE TABLE patient
( patientNumber NUMBER(4) NOT NULL
,patientFname VARCHAR2(30) NOT NULL
,patientMname VARCHAR2(30) NOT NULL
,patientLname VARCHAR2(30) NOT NULL
,dateOfBirth DATE NOT NULL
,Rnumber NUMBER(4) NOT NULL
, Dnumber NUMBER(4) NOT NULL
,disease VARCHAR2(100) NOT NULL
,Nationality VARCHAR2(100) NOT NULL
,gender VARCHAR2(10) NOT NULL,
CONSTRAINT patient_num_pk PRIMARY KEY(patientNumber) );
--
-- Dumping data for table `patient `
--

INSERT INTO `patient` (`patientNumber`, `patientFname`, `patientMname`, `patientLname`, `dateOfBirth`, `Rnumber`, `Dnumber`, 'disease' , 'Nationality','gender') VALUES
(1, 'Adam', 'Bader', 'khalid', '2021-03-14 16:07:35', '1', '1', 'diabest', 'Saudi','Male');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE doctor
(Dnumber NUMBER(4) NOT NULL,
name VARCHAR2(100) NOT NULL
,hire_date DATE NOT NULL
,specialization VARCHAR2(100) NOT NULL
,salary NUMBER(4) NOT NULL
,degree VARCHAR2(30) NOT NUL
,CONSTRAINT Dnumber_pk PRIMARY KEY(Dnumber) );

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Dnumber`, `name`, `hire_date`, `specialization`, `salary`, `degree`) VALUES
(11, 'Ahmed', '2021-03-17 06:15:32', 'dentist', 2000, 'phd');


-- --------------------------------------------------------
ALTER TABLE patient
ADD CONSTRAINT Dnumber_fk FOREIGN KEY(Dnumber)
REFRENCES doctor(Dnumber) ;

--
-- Table structure for table `nurse`
--

CREATE TABLE nurse
(Nnumber NUMBER(4) NOT NULL
,name VARCHAR2(100) NOT NULL
,salary NUMBER(4) NOT NULL
,hire_date DATE NOT NULL
,dateOfBirth DATE NOT NULL
,Dnumber NUMBER(4) NOT NULL,patientNumber NUMBER(4) NOT NULL
, CONSTRAINT nurse_id_pk PRIMARY KEY( nurseID)
,CONSTRAINT Dnumber_fk FOREIGN KEY(Dnumber) REFRENCES
doctor(Dnumber)
 ,CONSTRAINT patient_number_pk PRIMARY KEY(patientNumber) REFRENCES
patient(patientNumber) );

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`Nnumber`, `name`, `salary`, `hire_date`, `dateOfBirth`, `Dnumber`) VALUES
(20, 'Sami', '3000', '2021-03-17 08:49:17', '2021-03-17 09:05: 17', 1); 


-- --------------------------------------------------------

--
-- Table structure for table `room`
--
CREATE TABLE Room
(Rnumber NUMBER(4) NOT NULL
,stars VARCHAR2(30) NOT NULL
,patientNumber NUMBER(4) NOT NULL
,CONSTRAINT Rnumber_pk PRIMARY KEY(Rnumber)
,CONSTRAINT patient_number_fk FOREIGN KEY(patientNumber)
REFRENCES patient(patientNumber) );
--
-- Dumping data for table `room`
--

INSERT INTO `Room` (`Rnumber`, `stars`, `patientNumber`) VALUES
(1, five , 1);


-- --------------------------------------------------------
ALTER TABLE patientADD CONSTRAINT Rnumber_fk
FOREIGN KEY(Rnumber) REFRENCES Room(Rnumber) ;

--
-- Table structure for table `medicine`
--
CREATE TABLE medicine
(Mnumber NUMBER(4) NOT NULL
,name VARCHAR2(30) NOT NULL
,price NUMBER(4) NOT NULL
,CONSTRAINT Mnumber_pk PRIMARY KEY(Mnumber) );

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`Mnumber`, `name`, `price`) VALUES
(7, 'flue', '100');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--
 CREATE TABLE Bill
(Bill_code NUMBER(4) NOT NULL
,Amount NUMBER(4) NOT NULL
,cash_ebank VARCHAR2(30) NOT NULL
,patientNumber NUMBER(4) NOT NULL
,CONSTRAINT Bill_code_pk PRIMARY KEY(Bill_code)
,CONSTRAINT patine_number_fk FOREIGN KEY(patientNumber)
REFRENCES paitent(patientNumber) );

--
-- Dumping data for table `Bill`
--

INSERT INTO `Bill` (`Bill_code`, `Amount`, `cash_ebank,patientNumber`) VALUES
(0001, 1000, 'cash',1);


-- --------------------------------------------------------

--
-- Table structure for table `dependent`
--

CREATE TABLE dependent
(Dependent_name VARCHAR2(30) NOT NULL
,gender VARCHAR2(10) NOT NULL
,patientNumber NUMBER(4) NOT NULL
,CONSTRAINT Dependent_name_pk PRIMARY KEY(Dependent_name)
,CONSTRAINT patient_number_fk FOREIGN KEY(patientNumber)
REFRENCES patient(patientNumber) );
--
-- Dumping data for table `dependent`
--

INSERT INTO `dependent` (`Dependent_name`, `gender`, `patientNumber`) VALUES
('khalid', 'Male', '1');

-- --------------------------------------------------------

--
-- Table structure for table `treated_by`
--

CREATE TABLE treated_by
(patientNumber NUMBER(4) NOT NULL
,Dnumber NUMBER(4) NOT NULL
, CONSTRAINT doctor_number_fk FOREIGN KEY(Dnumber)
REFRENCES doctor(Dnumber) );

--
-- Dumping data for table `treated_by`
--

INSERT INTO `treated_by` (`patientNumber`, `Dnumber`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `take_care`
--
CREATE TABLE take_care
(patientNumber NUMBER(4) NOT NULL
,Nnumber NUMBER(4) NOT NULL
, CONSTRAINT nurse_number_fk FOREIGN KEY(Nnumber)
REFRENCES nurse(Nnumber) );
, CONSTRAINT patient_number_fk FOREIGN KEY(patientNumber)
REFRENCES patient(patientNumber) );

--
-- Dumping data for table `take_care`
--

INSERT INTO `take_care` (`patientNumber`, `Nnumber`) VALUES
(1, 2); 


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
