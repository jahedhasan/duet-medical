-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2025 at 05:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duet_medical`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` varchar(11) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin ', 'admin', '01829284769', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2020-01-02 12:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) NOT NULL,
  `AppointmentNumber` varchar(50) DEFAULT NULL,
  `PatientName` varchar(120) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` varchar(200) DEFAULT NULL,
  `MobileNumber` varchar(11) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `AppointmentDate` varchar(200) DEFAULT NULL,
  `AppointmentTime` varchar(80) DEFAULT NULL,
  `Prescription` varchar(200) DEFAULT NULL,
  `PostDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` varchar(50) DEFAULT NULL,
  `AssignTo` varchar(200) DEFAULT NULL,
  `Remark` varchar(100) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Report` varchar(200) DEFAULT NULL,
  `ReportUploadedDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `UserID`, `AppointmentNumber`, `PatientName`, `Gender`, `DOB`, `MobileNumber`, `Email`, `AppointmentDate`, `AppointmentTime`, `Prescription`, `PostDate`, `Status`, `AssignTo`, `Remark`, `UpdationDate`, `Report`, `ReportUploadedDate`) VALUES
(1, 1, '865938268', 'Jahed Hasan', 'Male', '1956-01-06', '4789755454', 'jahedhasan@gmail.com', '2020-01-15', '10:28', '069741a92a2f641eb428ba6d12ccb9af1579022810.pdf', '2020-01-14 17:26:50', 'Delivered to Lab', 'Lab1124', 'Sample Collecte', '2020-01-14 17:26:50', NULL, '2025-07-22 17:08:12'),
(2, 1, '917422456', 'Hasan', 'Male', '1996-05-06', '6456546546', 'hasan@gmail.com', '2020-01-15', '10:29', '069741a92a2f641eb428ba6d12ccb9af1579022910.pdf', '2020-01-14 17:28:30', 'Approved', 'Lab1125', 'Approved', '2020-01-14 17:28:30', NULL, '2025-07-22 17:08:47'),
(3, 2, '987105501', 'Sonam', 'Female', '1996-09-05', '4554545465', 'sonam@gmail.com', '2020-01-15', '22:29', '069741a92a2f641eb428ba6d12ccb9af1579023025.pdf', '2020-01-14 17:30:25', 'Approved', 'Lab1126', 'Approved', '2020-01-14 17:30:25', NULL, '2020-01-16 13:07:33'),
(4, 2, '648548285', 'Songita', 'Female', '1996-01-01', '7987897987', 'sunita@gmail.com', '2020-01-18', '15:30', '069741a92a2f641eb428ba6d12ccb9af1579023082.pdf', '2020-01-14 17:31:22', 'Report Uploaded', 'Lab1124', 'Report Uploaded', '2020-01-14 17:31:22', '069741a92a2f641eb428ba6d12ccb9af1579067622.pdf', '2025-07-22 17:09:00'),
(5, 2, '991969316', 'Test', 'Female', '1986-10-02', '9897787987', 'test@gmail.com', '2020-01-17', '10:28', '069741a92a2f641eb428ba6d12ccb9af1579174378.pdf', '2020-01-16 11:32:58', 'Delivered to Lab', 'Lab1126', 'Sent To Lab', '2020-01-16 11:32:58', NULL, '2020-01-16 12:36:01'),
(6, 2, '502474881', 'Ruhima', 'Female', '1991-03-01', '4546464654', 'ruhi@gmail.com', '2020-01-19', '08:30', '561ced0fb2e46a441ae1a855dffa2af51579175835.pdf', '2020-01-16 11:57:15', 'Appointment Cancelled', NULL, NULL, '2020-01-16 11:57:15', NULL, '2020-01-16 12:21:27'),
(7, 2, '289876276', 'Test2', 'Male', '1996-01-05', '2314658321', 'Test@gmail.com', '2020-01-17', '17:35', '561ced0fb2e46a441ae1a855dffa2af51579176489.pdf', '2020-01-16 12:08:09', 'Appointment Cancelled', NULL, NULL, '2020-01-16 12:08:09', NULL, '2020-01-16 12:21:54'),
(8, 2, '249086608', 'Test3', 'Female', '2020-01-19', '6547987987', 'test3@gmail.com', '2020-01-24', '14:30', '069741a92a2f641eb428ba6d12ccb9af1579176565.pdf', '2020-01-16 12:09:25', 'Rejected', '', 'Rejected', '2020-01-16 12:09:25', NULL, '2020-01-16 12:24:57'),
(9, 2, '669727969', 'Raghu', 'Male', '1956-01-05', '6548973127', 'raghu@gmail.com', '2020-01-19', '10:36', '72e5fcb23a3a1b0fab98cd94eebe59041579181928.pdf', '2020-01-16 13:38:48', NULL, NULL, NULL, '2020-01-16 13:38:48', NULL, NULL),
(10, 3, '732028652', 'ABc', 'Female', '1990-01-01', '9354778033', 'anuj@gmail.com', '2020-01-25', '14:00', NULL, '2020-01-18 14:48:20', NULL, NULL, NULL, '2020-01-18 14:48:20', NULL, NULL),
(11, 4, '440619315', 'Jahed', 'Male', '1990-01-01', '1234567890', 'jahed@gmail.com', '2020-01-25', '12:59', NULL, '2020-01-19 05:05:42', 'Report Uploaded', 'Lab1124', 'Report uploaded', '2020-01-19 05:05:42', '2c86e2aa7eb4cb4db70379e28fab9b521579413196.pdf', '2025-07-22 17:09:31'),
(12, 7, '304811001', 'Rubayet', 'Male', '1999-07-03', '01756695329', 'sojib@gmail.com', '2025-07-02', '19:30', NULL, '2025-07-22 17:46:46', 'Approved', 'EMP001', 'Argent', '2025-07-22 17:46:46', NULL, '2025-07-22 17:48:10'),
(13, 7, '448980319', 'J  H', 'Male', '1998-06-16', '01829284769', 'jahed.duet@gmail.com', '2025-07-24', '09:40', 'e8efbb8d0197b8fe7480963dd3eb0f3f1753281594.jpg', '2025-07-23 14:39:54', 'Report Uploaded', 'emp123', 'uploaded test report', '2025-07-23 14:39:54', '30e524d98e58824e126fd2af89a8ba901753282176.pdf', '2025-07-23 14:49:36'),
(14, 7, '235024172', 'Jahed Hasan', 'Male', '1998-06-16', '01829284769', 'jahed.duet@gmail.com', '2025-07-24', '22:48', 'e8efbb8d0197b8fe7480963dd3eb0f3f1753282006.jpg', '2025-07-23 14:46:46', 'Approved', 'EMP001', 'assign to lab 123', '2025-07-23 14:46:46', NULL, '2025-07-23 14:51:23'),
(15, 7, '463288132', 'sojib', 'Male', '1998-01-01', '01756695329', 'sojib@gmail.com', '2025-07-24', '09:57', 'e8efbb8d0197b8fe7480963dd3eb0f3f1753282421.jpg', '2025-07-23 14:53:41', 'Report Uploaded', 'emp123', 'report upload', '2025-07-23 14:53:41', '30e524d98e58824e126fd2af89a8ba901753282817.pdf', '2025-07-23 15:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `ID` int(10) NOT NULL,
  `EmpID` varchar(120) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` varchar(11) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `JoiningDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`ID`, `EmpID`, `Name`, `MobileNumber`, `Email`, `Address`, `Password`, `JoiningDate`) VALUES
(2, 'Lab1124', 'Rahul', '8797977979', 'rahul@gmail.com', 'ftyfytfhvhgfyfg', 'f925916e2754e5e03f75dd58a5733251', '2020-01-08 11:47:24'),
(3, 'Lab1125', 'Musfiq', '6546556485', 'musfiq@gmail.com', 'G-977 G-Block Basundara', '202cb962ac59075b964b07152d234b70', '2020-01-08 11:48:01'),
(4, 'Lab1126', 'Test', '8979797977', 'test@gmail.com', 'H-2767 Near Reliance fresh Mayur Vihar New Delhi', '202cb962ac59075b964b07152d234b70', '2020-01-15 07:18:12'),
(5, 'lab11112', 'Sanjeev kumar', '2398745632', 'sanjeev@test.com', 'New Delhi India', 'f925916e2754e5e03f75dd58a5733251', '2020-01-19 05:23:51'),
(6, 'emp123', 'Employee 1', '01829284769', 'emp@gmail.com', 'DUET', '0314ee502c6f4e284128ad14e84e37d5', '2025-07-22 17:07:00'),
(7, 'EMP001', 'Farhana Rahman', '01712000011', 'farhana.recep@example.com', 'Dhanmondi, Dhaka', '0314ee502c6f4e284128ad14e84e37d5', '2025-07-22 17:31:32'),
(8, 'EMP002', 'Mahmud Hasan', '01812000022', 'mahmud.recep@example.com', '	Mirpur, Dhaka', '202cb962ac59075b964b07152d234b70', '2025-07-22 17:33:22'),
(9, 'EMP003', 'Tania Akter', '01913000033', 'tania.recep@example.com', '	Uttara, Dhaka', '202cb962ac59075b964b07152d234b70', '2025-07-22 17:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbllabtest`
--

CREATE TABLE `tbllabtest` (
  `ID` int(10) NOT NULL,
  `TestTitle` varchar(200) DEFAULT NULL,
  `TestDescription` mediumtext DEFAULT NULL,
  `TestInterpretation` mediumtext DEFAULT NULL,
  `Price` varchar(150) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbllabtest`
--

INSERT INTO `tbllabtest` (`ID`, `TestTitle`, `TestDescription`, `TestInterpretation`, `Price`, `UpdationDate`) VALUES
(1, 'HbA1c', 'Glycosylated Hemoglobin Test measures the percentage of glycosylated hemoglobin in blood which reflects the average blood glucose over a period of past two to three months (8 - 12 weeks).', 'Interpreting HbA1c results\r\nInterpretations.\r\n\r\nNormal: Below 5.7% (39 mmol/mol approx.)\r\n\r\nPrediabetic: 5.7% - 6.4% (39 to 46 mmol/mol approx.)\r\n\r\nDiabetic: Above 6.5% (above 48 mmol/mol approx.)\r\n\r\nLess than 5.7% Glycated Hemoglobin indicates normal levels of blood sugar. Increased risk of developing Diabetes is found in Prediabetic patients with blood sugar level between 5.7% and 6.4%. Patients with a HbA1c level greater than 6.5% are usually diagnosed with Diabetes.', '500', '2020-01-03 11:39:47'),
(2, 'TSH', 'Thyroid Stimulating Hormone (TSH) test measures the amount of TSH in your blood which helps to find out if the thyroid gland is working normally or not. Low TSH levels indicate hyperthyroidism and high TSH levels indicate hypothyroidism.', 'Interpreting TSH results\r\nInterpretations\r\n\r\nThe TSH normal range may vary from lab to lab. \r\nThe TSH normal range for different age groups is given below:\r\n\r\nPremature Infants (28-36 Weeks)\r\n\r\n\r\n 1st Week of Life\r\n\r\n0.20-27.90 mIU/L\r\n\r\nTerm Infants (>37 Weeks)\r\n\r\n\r\n Serum or Cord Blood\r\n\r\n1.00-39.00 mIU/L\r\n\r\n 1-2 Days\r\n\r\n3.20-34.60 mIU/L\r\n\r\n 3-4 Days\r\n\r\n0.70-15.40 mIU/L\r\n\r\n 5 Days-4 Weeks\r\n\r\n1.70-9.10 mIU/L\r\n\r\n 1-11 Months\r\n\r\n0.80-8.20 mIU/L\r\n\r\n 1-19 Years\r\n\r\n0.50-4.30 mIU/L\r\n\r\n ≥20 Years\r\n\r\n0.40-4.50 mIU/L\r\n\r\nPregnancy\r\n\r\n\r\n First Trimester\r\n\r\n0.26-2.66 mIU/L\r\n\r\n Second Trimester\r\n\r\n0.55-2.73 mIU/L\r\n\r\n Third Trimester\r\n\r\n0.43-2.91 mIU/L\r\n\r\n\r\nIf your TSH level is increased, it usually indicates that you have hypothyroidism. Hashimoto’s thyroiditis is the most common cause of primary hypothyroidism. \r\nIf your TSH level is decreased, it usually indicates hyperthyroidism. Graves\' disease, multinodular goiter, toxic nodule are some of the common causes of hyperthyroidism. ', '200', '2020-01-03 11:44:20'),
(3, 'KFT', 'Kidneys play an important role in the removal of waste products and maintenance of water and electrolyte balance in the body. Kidney Function Test (KFT) includes a group of blood tests to determine how well the kidneys are working.\r\nTests Included\r\nBUN/Creatinine Ratio\r\nUric Acid\r\nCreatinine\r\nUrea/ Blood Urea Nitrogen', 'Interpreting KFT results\r\nInterpretations\r\nNormal levels:\r\n\r\n·         Urea:\r\n\r\n2.5-7.8 mmol/L\r\n\r\n ·        BUN:\r\n\r\n7 to 20 mg/dL\r\n\r\n\r\n·         Uric Acid:\r\n\r\nAdult Female: 2.4 to 6.0 mg/dL\r\n\r\nAdult Male: 3.4 to 7.0 mg/dL\r\n\r\nChildren: 3 to 4 mg/dL\r\n\r\n\r\n·         Creatinine:\r\n\r\nAdult males: 0.6 to 1.2 mg/dL\r\n\r\nAdult females: 0.5 to 1.1 mg/dL\r\n\r\n\r\n·         BUN/Creatinine Ratio:\r\n\r\n          12:1 to 20:1\r\n\r\n\r\nIncreased levels of each of these parameters can indicate a number of conditions and not necessarily health disorders. For example, increased creatinine levels can occur due to heavy exercise, consumption of cooked meat, or taking protein supplements apart from kidney diseases. Thus, these parameters are also considered while interpreting the tests. Further tests are performed to confirm any health disorders.', '500', '2020-01-03 11:48:55'),
(4, 'Dengue Antigen NS1, IgG & IgM', 'The Dengue Antigen NS1, IgG & IgM test is done in case there is high fever within 2 weeks of travel to an area where dengue outbreak is occurring or dengue fever is endemic.', 'Interpreting Dengue Antigen NS1, IgG & IgM results\r\n\r\nInterpretations\r\nResult in index\r\n\r\nRemarks\r\n\r\nNegative (<0.9)\r\n\r\nNo detectable dengue NS1 antigen. The result does not rule out dengue infection. An additional sample should be tested for IgG & IgM serology in 7-14 days.\r\n\r\n \r\n\r\nEquivocal (0.9-1.1)\r\n\r\nRepeat sample after 1 week\r\n\r\n \r\n\r\nPositive (>1.1)\r\n\r\nPresence of detectable dengue NS1 antigen. Dengue IgG & IgM serology assays should be performed on follow up samples after 5-7 days of onset of fever, to confirm dengue infection.\r\n\r\n \r\n\r\nNote: Recommended to do NS1 Antigen by ELISA in the first 5 days of fever. After 7-10 days of continuous fever, the recommended test is Dengue fever antibodies IgG & IgM by ELISA.', '500', '2020-01-03 11:58:32'),
(5, 'Urine R/M Measure', 'Urine Routine and Microscopy test involve the three-part evaluation of the urine sample.\r\n\r\n1. Gross Examination - It involves the visual examination of the urine sample for color and appearance.\r\n\r\n2. Chemical Examination - It is done by urine dip-stick method which involves the use of reagent test strips. These test strips are dipped into the urine sample and the colors that develop are matched with the control for analysis. It is done to examine the urine sample for glucose, protein, pH, specific gravity, blood, nitrites, ketones, leukocyte esterase, bilirubin, and urobilinogen.\r\n\r\n3. Microscopic Examination - It involves the examination of the urine sample under the microscope for casts, crystals, cells, bacteria, and yeast. \r\nTests Included\r\nRBCs Urine\r\nColour\r\nEpithelial Cell\r\nUrobilinogen\r\nLeucocytes\r\nKetone\r\nProtein Urine\r\nPus Cell\r\nCrystals\r\n', 'NA', '110', '2020-01-03 12:01:59'),
(6, 'Lipid Profile ', 'The Lipid Profile Test typically measures the levels of total cholesterol, HDL cholesterol, LDL cholesterol, and triglycerides. Other results that may be reported include VLDL cholesterol, non-HDL cholesterol, and total cholesterol to HDL cholesterol ratio.\r\nTests Included\r\nTriglycerides\r\nCholesterol - Total\r\nCholesterol - HDL\r\nVery Low Density Lipoprotein\r\nCholesterol - LDL', 'Interpreting Lipid Profile results\r\n\r\nInterpretations\r\nHigher than optimum levels of total cholesterol, LDL cholesterol, non-HDL cholesterol, and fasting triglycerides indicate an increased risk of plaque formation in the blood vessels (atherosclerosis) and cardiovascular diseases, heart attack, or stroke.\r\n\r\nHDL cholesterol reduces the risk factors of development of cardiovascular diseases. In absence of other factors, higher the HDL levels in blood, lower is the chance of developing cardiovascular diseases.', '300', '2020-01-03 12:05:16'),
(7, 'czdcsdf', 'dfef', 'ferte', '1000', '2020-01-15 07:12:26'),
(8, 'Full body check up', 'This is a sample text for testing.', 'This is a sample text for testing. This is a sample text for testing.This is a sample text for testing.This is a sample text for testing.', '1500', '2020-01-19 05:22:33'),
(9, 'test', 'testing ', 'testing ', '100', '2024-04-23 08:02:13'),
(10, 'CBC', ' A blood test that measures red and white blood cells, hemoglobin, hematocrit, and platelets.', 'Detects infections, anemia, and other blood disorders.', '120', '2025-07-22 17:19:03'),
(11, 'Liver Function Test (LFT)', 'Measures liver enzymes, bilirubin, and proteins to assess liver health', 'High levels may indicate liver damage, hepatitis, or fatty liver disease.', '500', '2025-07-22 17:20:30'),
(12, 'Blood Sugar (Fasting & PP)', 'Measures glucose levels in blood before and after meals.', 'Detects diabetes or prediabetes.', '300', '2025-07-22 17:21:16'),
(13, 'Lipid Profile', 'Tests cholesterol and triglyceride levels in the blood', 'Indicates risk for heart disease and stroke.', '500', '2025-07-22 17:22:57'),
(14, 'Thyroid Function Test (T3, T4, TSH)', 'Evaluates thyroid gland activity.', 'Identifies hyperthyroidism, hypothyroidism, or autoimmune thyroid disease.', '300', '2025-07-22 17:23:35'),
(15, 'Urine Routine and Microscopy', 'Examines physical, chemical, and microscopic aspects of urine.', 'Helps diagnose urinary tract infections, kidney problems, and diabetes.', '700', '2025-07-22 17:24:23'),
(16, 'Electrocardiogram (ECG)', 'Measures the electrical activity of the heart.', 'Detects arrhythmias, heart attacks, and other cardiac conditions.\r\n\r\n', '500', '2025-07-22 17:25:09'),
(17, 'HbA1c (Glycated Hemoglobin)', 'Measures average blood glucose over 2–3 months.', 'Monitors diabetes control.', '300', '2025-07-22 17:25:47'),
(18, 'X-Ray Chest (PA View)', ' Imaging test of the chest to detect lung and heart issues.', 'Identifies pneumonia, TB, heart enlargement, etc.\r\n\r\n', '800', '2025-07-22 17:28:16'),
(19, 'COVID-19 RT-PCR Test', 'Detects genetic material of SARS-CoV-2.', 'Confirms current COVID-19 infection.', '2000', '2025-07-22 17:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestrequest`
--

CREATE TABLE `tbltestrequest` (
  `ID` int(10) NOT NULL,
  `AppointmentNumber` varchar(100) DEFAULT NULL,
  `TestID` int(10) DEFAULT NULL,
  `MobileNumber` varchar(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltestrequest`
--

INSERT INTO `tbltestrequest` (`ID`, `AppointmentNumber`, `TestID`, `MobileNumber`, `PostingDate`) VALUES
(1, '865938268', 1, '4789755454', '2020-01-14 17:26:51'),
(2, '865938268', 2, '4789755454', '2020-01-14 17:26:51'),
(3, '865938268', 6, '4789755454', '2020-01-14 17:26:51'),
(4, '917422456', 5, '6456546546', '2020-01-14 17:28:30'),
(5, '917422456', 6, '6456546546', '2020-01-14 17:28:30'),
(6, '987105501', 1, '4554545465', '2020-01-14 17:30:25'),
(7, '648548285', 3, '7987897987', '2020-01-14 17:31:22'),
(8, '648548285', 4, '7987897987', '2020-01-14 17:31:22'),
(9, '991969316', 1, '9897787987', '2020-01-16 11:32:58'),
(10, '991969316', 2, '9897787987', '2020-01-16 11:32:58'),
(11, '249086608', 3, '6547987987', '2020-01-16 12:09:25'),
(12, '249086608', 5, '6547987987', '2020-01-16 12:09:25'),
(13, '249086608', 6, '6547987987', '2020-01-16 12:09:25'),
(14, '669727969', 3, '6548973127', '2020-01-16 13:38:49'),
(15, '669727969', 4, '6548973127', '2020-01-16 13:38:49'),
(16, '732028652', 1, '9354778033', '2020-01-18 14:48:20'),
(17, '732028652', 2, '9354778033', '2020-01-18 14:48:20'),
(18, '440619315', 1, '1234567890', '2020-01-19 05:05:42'),
(19, '440619315', 3, '1234567890', '2020-01-19 05:05:42'),
(20, '304811001', 10, '01756695329', '2025-07-22 17:46:46'),
(21, '448980319', 10, '01829284769', '2025-07-23 14:39:54'),
(22, '235024172', 19, '01829284769', '2025-07-23 14:46:46'),
(23, '463288132', 10, '01756695329', '2025-07-23 14:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

CREATE TABLE `tbltracking` (
  `ID` int(10) NOT NULL,
  `AppointmentNumeber` varchar(50) DEFAULT NULL,
  `Remark` varchar(100) DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `OrderCanclledByUser` int(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `AppointmentNumeber`, `Remark`, `Status`, `OrderCanclledByUser`, `UpdationDate`) VALUES
(1, '865938268', 'Approved', 'Approved', NULL, '2020-01-14 17:41:41'),
(2, '648548285', 'Approved', 'Approved', NULL, '2020-01-14 17:42:55'),
(3, '865938268', 'On the way', 'On the Way', NULL, '2020-01-14 17:44:03'),
(4, '648548285', 'On the way', 'On the Way', NULL, '2020-01-14 17:44:32'),
(5, '648548285', 'Sample Collected', 'Sample Collected', NULL, '2020-01-14 17:45:00'),
(6, '648548285', 'Sent to Lab', 'Delivered to Lab', NULL, '2020-01-14 17:45:28'),
(7, '917422456', 'Approved', 'Approved', NULL, '2020-01-14 17:52:14'),
(8, '987105501', 'Approved', 'Approved', NULL, '2020-01-15 05:48:26'),
(9, '648548285', 'Report Uploaded', 'Report Uploaded', NULL, '2020-01-15 05:53:42'),
(10, '991969316', 'Approved', 'Approved', NULL, '2020-01-16 11:51:56'),
(11, '502474881', 'Cancel Appointment', 'Appointment Cancelled', 1, '2020-01-16 12:18:45'),
(12, '289876276', 'Cancel', 'Appointment Cancelled', 1, '2020-01-16 12:21:54'),
(13, '249086608', 'Rejected', 'Rejected', NULL, '2020-01-16 12:24:57'),
(14, '991969316', 'On the way', 'On the Way', NULL, '2020-01-16 12:34:01'),
(15, '991969316', 'Sample Colleted', 'Sample Collected', NULL, '2020-01-16 12:34:37'),
(16, '991969316', 'Sent To Lab', 'Delivered to Lab', NULL, '2020-01-16 12:36:01'),
(17, '865938268', 'Sample Collecte', 'Sample Collected', NULL, '2020-01-18 15:51:20'),
(18, '440619315', 'Approved', 'Approved', NULL, '2020-01-19 05:21:36'),
(19, '440619315', 'On the way', 'On the Way', NULL, '2020-01-19 05:26:21'),
(20, '440619315', 'Sample collected', 'Sample Collected', NULL, '2020-01-19 05:26:41'),
(21, '440619315', 'Sample sent o lab', 'Delivered to Lab', NULL, '2020-01-19 05:28:22'),
(23, '440619315', 'Report uploaded', 'Report Uploaded', NULL, '2020-01-19 05:53:16'),
(24, '304811001', 'Argent', 'Approved', NULL, '2025-07-22 17:48:10'),
(25, '448980319', 'emergency', 'Approved', NULL, '2025-07-23 14:41:25'),
(26, '448980319', 'done', 'Delivered to Lab', NULL, '2025-07-23 14:42:50'),
(27, '448980319', 'uploaded test report', 'Report Uploaded', NULL, '2025-07-23 14:49:36'),
(28, '235024172', 'assign to lab 123', 'Approved', NULL, '2025-07-23 14:51:23'),
(29, '463288132', 'emp123', 'Approved', NULL, '2025-07-23 14:54:12'),
(30, '463288132', 'onthe way to collect sample', 'On the Way', NULL, '2025-07-23 14:58:01'),
(31, '463288132', 'collected', 'Sample Collected', NULL, '2025-07-23 14:58:21'),
(32, '463288132', 'report delivered to lab', 'Delivered to Lab', NULL, '2025-07-23 14:58:51'),
(33, '463288132', 'report upload', 'Report Uploaded', NULL, '2025-07-23 15:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `MobileNumber` varchar(11) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Jakirul', '6868687877', 'jag@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-01-06 06:35:44'),
(2, 'Rakesh', '7656756565', 'rak@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-01-06 06:36:25'),
(3, 'Araf', '1234567890', 'rak@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-01-18 14:38:55'),
(4, 'Test', '1236549870', 'testuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-01-19 05:03:27'),
(5, 'jahed hasan', '01829284769', 'jahed@gmail.com', '096e0d305aed76fa1a54631296831058', '2024-03-11 16:33:18'),
(6, 'test', '01829284769', 'test@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2024-03-11 16:33:54'),
(7, 'User 1', '01829284769', 'user@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', '2025-07-22 16:33:07'),
(8, 'Hasan', '01829284769', 'hasan@gmail.com', 'fc3f318fba8b3c1502bece62a27712df', '2025-07-22 16:52:33'),
(9, 'user 2', '01829284769', 'user2@gmail.com', '7e58d63b60197ceb55a1c487989a3720', '2025-07-22 16:55:06'),
(10, 'User jahed', '01829284769', 'userjahed@gmail.com', '4a081d5eb9e0d3f73fc1d344c624296f', '2025-07-22 17:01:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `AppointmentNumber` (`AppointmentNumber`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EmpID` (`EmpID`);

--
-- Indexes for table `tbllabtest`
--
ALTER TABLE `tbllabtest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `TestTitle` (`TestTitle`);

--
-- Indexes for table `tbltestrequest`
--
ALTER TABLE `tbltestrequest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AppointmentNumber` (`AppointmentNumber`),
  ADD KEY `TestID` (`TestID`),
  ADD KEY `MobileNumber` (`MobileNumber`);

--
-- Indexes for table `tbltracking`
--
ALTER TABLE `tbltracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AppointmentNumeber` (`AppointmentNumeber`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `MobileNumber` (`MobileNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbllabtest`
--
ALTER TABLE `tbllabtest`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbltestrequest`
--
ALTER TABLE `tbltestrequest`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbltracking`
--
ALTER TABLE `tbltracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
