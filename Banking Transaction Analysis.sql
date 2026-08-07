CREATE DATABASE Banking_Project;

USE Banking_Project;

CREATE TABLE Branches (
    Branch_ID INT PRIMARY KEY,
    Branch_Name VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State VARCHAR(50) NOT NULL
);


CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Gender CHAR(1),
    DOB DATE,
    Phone VARCHAR(15),
    Email VARCHAR(100),
    City VARCHAR(50),
    Branch_ID INT,
    FOREIGN KEY (Branch_ID)
    REFERENCES Branches(Branch_ID)
);



CREATE TABLE Accounts (
    Account_ID INT PRIMARY KEY,
    Customer_ID INT,
    Account_Type VARCHAR(20),
    Balance DECIMAL(12,2),
    Open_Date DATE,
    Status VARCHAR(20),
    FOREIGN KEY (Customer_ID)
    REFERENCES Customers(Customer_ID)
);



CREATE TABLE Transactions (
    Transaction_ID INT PRIMARY KEY,
    Account_ID INT,
    Transaction_Date DATE,
    Transaction_Type VARCHAR(20),
    Amount DECIMAL(12,2),
    FOREIGN KEY (Account_ID)
    REFERENCES Accounts(Account_ID)
);



CREATE TABLE Loans (
    Loan_ID INT PRIMARY KEY,
    Customer_ID INT,
    Loan_Type VARCHAR(50),
    Loan_Amount DECIMAL(12,2),
    Interest_Rate DECIMAL(5,2),
    Loan_Date DATE,
    FOREIGN KEY (Customer_ID)
    REFERENCES Customers(Customer_ID)
);



CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(100),
    Designation VARCHAR(50),
    Salary DECIMAL(10,2),
    Branch_ID INT,
    FOREIGN KEY (Branch_ID)
    REFERENCES Branches(Branch_ID)
);


select * from accounts;
select * from branches;
select * from customers;
select * from employees;
select * from loans;
select * from transactions;

INSERT INTO Branches (Branch_ID, Branch_Name, City, State) VALUES
(1,'Hyderabad Main','Hyderabad','Telangana'),
(2,'Secunderabad','Hyderabad','Telangana'),
(3,'Vijayawada','Vijayawada','Andhra Pradesh'),
(4,'Visakhapatnam','Visakhapatnam','Andhra Pradesh'),
(5,'Bengaluru Central','Bengaluru','Karnataka'),
(6,'Chennai Central','Chennai','Tamil Nadu'),
(7,'Mumbai South','Mumbai','Maharashtra'),
(8,'Pune','Pune','Maharashtra'),
(9,'Delhi NCR','New Delhi','Delhi'),
(10,'Kolkata Central','Kolkata','West Bengal');

INSERT INTO Customers
(Customer_ID, First_Name, Last_Name, Gender, DOB, Phone, Email, City, Branch_ID)
VALUES
(1,'Rahul','Sharma','M','1995-03-12','9876500001','rahul.sharma1@gmail.com','Hyderabad',1),
(2,'Priya','Reddy','F','1997-07-25','9876500002','priya.reddy2@gmail.com','Hyderabad',2),
(3,'Arjun','Kumar','M','1994-11-18','9876500003','arjun.kumar3@gmail.com','Vijayawada',3),
(4,'Sneha','Patel','F','1998-02-10','9876500004','sneha.patel4@gmail.com','Visakhapatnam',4),
(5,'Kiran','Rao','M','1996-05-14','9876500005','kiran.rao5@gmail.com','Bengaluru',5),
(6,'Anjali','Gupta','F','1995-09-08','9876500006','anjali.gupta6@gmail.com','Chennai',6),
(7,'Vikram','Singh','M','1993-01-21','9876500007','vikram.singh7@gmail.com','Mumbai',7),
(8,'Pooja','Verma','F','1999-04-17','9876500008','pooja.verma8@gmail.com','Pune',8),
(9,'Rohan','Mehta','M','1997-08-30','9876500009','rohan.mehta9@gmail.com','New Delhi',9),
(10,'Neha','Joshi','F','1996-12-05','9876500010','neha.joshi10@gmail.com','Kolkata',10),
(11,'Suresh','Naidu','M','1994-06-19','9876500011','suresh.naidu11@gmail.com','Hyderabad',1),
(12,'Kavya','Reddy','F','1998-03-27','9876500012','kavya.reddy12@gmail.com','Hyderabad',2),
(13,'Manoj','Kumar','M','1995-10-11','9876500013','manoj.kumar13@gmail.com','Vijayawada',3),
(14,'Divya','Sharma','F','1997-01-09','9876500014','divya.sharma14@gmail.com','Visakhapatnam',4),
(15,'Naveen','Patel','M','1993-07-23','9876500015','naveen.patel15@gmail.com','Bengaluru',5),
(16,'Swathi','Rao','F','1999-11-16','9876500016','swathi.rao16@gmail.com','Chennai',6),
(17,'Harish','Gupta','M','1994-04-02','9876500017','harish.gupta17@gmail.com','Mumbai',7),
(18,'Deepika','Singh','F','1996-09-13','9876500018','deepika.singh18@gmail.com','Pune',8),
(19,'Ajay','Verma','M','1995-12-28','9876500019','ajay.verma19@gmail.com','New Delhi',9),
(20,'Meera','Mehta','F','1998-06-06','9876500020','meera.mehta20@gmail.com','Kolkata',10),
(21,'Prakash','Reddy','M','1993-05-15','9876500021','prakash.reddy21@gmail.com','Hyderabad',1),
(22,'Lakshmi','Naidu','F','1997-08-08','9876500022','lakshmi.naidu22@gmail.com','Hyderabad',2),
(23,'Ashok','Kumar','M','1994-02-20','9876500023','ashok.kumar23@gmail.com','Vijayawada',3),
(24,'Keerthi','Patel','F','1996-10-03','9876500024','keerthi.patel24@gmail.com','Visakhapatnam',4),
(25,'Santosh','Rao','M','1995-01-30','9876500025','santosh.rao25@gmail.com','Bengaluru',5);

INSERT INTO Customers
(Customer_ID, First_Name, Last_Name, Gender, DOB, Phone, Email, City, Branch_ID)
VALUES
(26,'Rakesh','Yadav','M','1994-02-18','9876500026','rakesh.yadav26@gmail.com','Chennai',6),
(27,'Anusha','Rao','F','1998-05-09','9876500027','anusha.rao27@gmail.com','Mumbai',7),
(28,'Mahesh','Varma','M','1993-11-24','9876500028','mahesh.varma28@gmail.com','Pune',8),
(29,'Nandhini','Iyer','F','1997-01-15','9876500029','nandhini.iyer29@gmail.com','New Delhi',9),
(30,'Sandeep','Reddy','M','1995-09-12','9876500030','sandeep.reddy30@gmail.com','Kolkata',10),

(31,'Bhavana','Sharma','F','1996-07-30','9876500031','bhavana.sharma31@gmail.com','Hyderabad',1),
(32,'Karthik','Naidu','M','1994-12-18','9876500032','karthik.naidu32@gmail.com','Hyderabad',2),
(33,'Reshma','Patel','F','1998-04-06','9876500033','reshma.patel33@gmail.com','Vijayawada',3),
(34,'Vinay','Kumar','M','1993-08-19','9876500034','vinay.kumar34@gmail.com','Visakhapatnam',4),
(35,'Sowmya','Gupta','F','1997-03-11','9876500035','sowmya.gupta35@gmail.com','Bengaluru',5),

(36,'Nikhil','Rao','M','1995-10-25','9876500036','nikhil.rao36@gmail.com','Chennai',6),
(37,'Harika','Reddy','F','1996-01-21','9876500037','harika.reddy37@gmail.com','Mumbai',7),
(38,'Tarun','Singh','M','1994-06-13','9876500038','tarun.singh38@gmail.com','Pune',8),
(39,'Shilpa','Mehta','F','1998-09-05','9876500039','shilpa.mehta39@gmail.com','New Delhi',9),
(40,'Gopi','Krishna','M','1993-05-28','9876500040','gopi.krishna40@gmail.com','Kolkata',10),

(41,'Tejaswini','Rao','F','1997-02-14','9876500041','tejaswini.rao41@gmail.com','Hyderabad',1),
(42,'Ravi','Patil','M','1995-08-20','9876500042','ravi.patil42@gmail.com','Hyderabad',2),
(43,'Pallavi','Naik','F','1996-11-08','9876500043','pallavi.naik43@gmail.com','Vijayawada',3),
(44,'Lokesh','Reddy','M','1994-03-17','9876500044','lokesh.reddy44@gmail.com','Visakhapatnam',4),
(45,'Madhavi','Joshi','F','1998-12-02','9876500045','madhavi.joshi45@gmail.com','Bengaluru',5),

(46,'Chaitanya','Varma','M','1993-09-16','9876500046','chaitanya.varma46@gmail.com','Chennai',6),
(47,'Sirisha','Kumar','F','1995-04-10','9876500047','sirisha.kumar47@gmail.com','Mumbai',7),
(48,'Abhishek','Mishra','M','1997-07-27','9876500048','abhishek.mishra48@gmail.com','Pune',8),
(49,'Aishwarya','Reddy','F','1996-06-22','9876500049','aishwarya.reddy49@gmail.com','New Delhi',9),
(50,'Praveen','Rao','M','1994-10-31','9876500050','praveen.rao50@gmail.com','Kolkata',10);


INSERT INTO Customers
(Customer_ID, First_Name, Last_Name, Gender, DOB, Phone, Email, City, Branch_ID)
VALUES
(51,'Sunil','Kumar','M','1995-01-12','9876500051','sunil.kumar51@gmail.com','Hyderabad',1),
(52,'Keerthana','Reddy','F','1997-03-18','9876500052','keerthana.reddy52@gmail.com','Hyderabad',2),
(53,'Mohan','Naidu','M','1994-07-21','9876500053','mohan.naidu53@gmail.com','Vijayawada',3),
(54,'Anitha','Sharma','F','1998-09-09','9876500054','anitha.sharma54@gmail.com','Visakhapatnam',4),
(55,'Ramesh','Patel','M','1993-05-15','9876500055','ramesh.patel55@gmail.com','Bengaluru',5),
(56,'Srilatha','Rao','F','1996-02-11','9876500056','srilatha.rao56@gmail.com','Chennai',6),
(57,'Nitin','Verma','M','1995-08-19','9876500057','nitin.verma57@gmail.com','Mumbai',7),
(58,'Harini','Gupta','F','1997-11-27','9876500058','harini.gupta58@gmail.com','Pune',8),
(59,'Vamsi','Krishna','M','1994-04-06','9876500059','vamsi.krishna59@gmail.com','New Delhi',9),
(60,'Sravani','Reddy','F','1998-01-25','9876500060','sravani.reddy60@gmail.com','Kolkata',10),

(61,'Rohit','Singh','M','1993-10-10','9876500061','rohit.singh61@gmail.com','Hyderabad',1),
(62,'Deepthi','Naidu','F','1996-06-16','9876500062','deepthi.naidu62@gmail.com','Hyderabad',2),
(63,'Kishore','Rao','M','1995-09-04','9876500063','kishore.rao63@gmail.com','Vijayawada',3),
(64,'Lavanya','Patel','F','1997-02-22','9876500064','lavanya.patel64@gmail.com','Visakhapatnam',4),
(65,'Srinivas','Kumar','M','1994-12-14','9876500065','srinivas.kumar65@gmail.com','Bengaluru',5),
(66,'Bhargavi','Gupta','F','1998-07-30','9876500066','bhargavi.gupta66@gmail.com','Chennai',6),
(67,'Ganesh','Mehta','M','1993-03-18','9876500067','ganesh.mehta67@gmail.com','Mumbai',7),
(68,'Niharika','Joshi','F','1996-11-05','9876500068','niharika.joshi68@gmail.com','Pune',8),
(69,'Prasad','Varma','M','1995-05-26','9876500069','prasad.varma69@gmail.com','New Delhi',9),
(70,'Sandhya','Reddy','F','1997-08-13','9876500070','sandhya.reddy70@gmail.com','Kolkata',10),

(71,'Dinesh','Kumar','M','1994-01-29','9876500071','dinesh.kumar71@gmail.com','Hyderabad',1),
(72,'Navya','Rao','F','1998-04-20','9876500072','navya.rao72@gmail.com','Hyderabad',2),
(73,'Murali','Naik','M','1995-10-08','9876500073','murali.naik73@gmail.com','Vijayawada',3),
(74,'Jyothi','Patil','F','1996-12-17','9876500074','jyothi.patil74@gmail.com','Visakhapatnam',4),
(75,'Sai','Reddy','M','1997-06-24','9876500075','sai.reddy75@gmail.com','Bengaluru',5);


INSERT INTO Customers
(Customer_ID, First_Name, Last_Name, Gender, DOB, Phone, Email, City, Branch_ID)
VALUES
(76,'Aparna','Sharma','F','1995-03-09','9876500076','aparna.sharma76@gmail.com','Chennai',6),
(77,'Raghav','Singh','M','1994-09-11','9876500077','raghav.singh77@gmail.com','Mumbai',7),
(78,'Divya','Naidu','F','1998-02-28','9876500078','divya.naidu78@gmail.com','Pune',8),
(79,'Kalyan','Patel','M','1993-07-07','9876500079','kalyan.patel79@gmail.com','New Delhi',9),
(80,'Monika','Gupta','F','1996-10-19','9876500080','monika.gupta80@gmail.com','Kolkata',10),

(81,'Ajith','Kumar','M','1995-05-01','9876500081','ajith.kumar81@gmail.com','Hyderabad',1),
(82,'Sushmitha','Reddy','F','1997-01-13','9876500082','sushmitha.reddy82@gmail.com','Hyderabad',2),
(83,'Ravindra','Rao','M','1994-06-23','9876500083','ravindra.rao83@gmail.com','Vijayawada',3),
(84,'Pavani','Naik','F','1998-11-16','9876500084','pavani.naik84@gmail.com','Visakhapatnam',4),
(85,'Vijay','Patel','M','1993-08-29','9876500085','vijay.patel85@gmail.com','Bengaluru',5),

(86,'Meghana','Joshi','F','1996-04-12','9876500086','meghana.joshi86@gmail.com','Chennai',6),
(87,'Ashwin','Verma','M','1995-12-05','9876500087','ashwin.verma87@gmail.com','Mumbai',7),
(88,'Sindhu','Reddy','F','1997-09-18','9876500088','sindhu.reddy88@gmail.com','Pune',8),
(89,'Rajesh','Gupta','M','1994-02-27','9876500089','rajesh.gupta89@gmail.com','New Delhi',9),
(90,'Bhavya','Kumar','F','1998-07-14','9876500090','bhavya.kumar90@gmail.com','Kolkata',10),

(91,'Hari','Krishna','M','1993-11-21','9876500091','hari.krishna91@gmail.com','Hyderabad',1),
(92,'Tejaswi','Rao','F','1996-05-08','9876500092','tejaswi.rao92@gmail.com','Hyderabad',2),
(93,'Lokesh','Naidu','M','1995-03-25','9876500093','lokesh.naidu93@gmail.com','Vijayawada',3),
(94,'Akhila','Patel','F','1997-10-02','9876500094','akhila.patel94@gmail.com','Visakhapatnam',4),
(95,'Manish','Singh','M','1994-08-17','9876500095','manish.singh95@gmail.com','Bengaluru',5),

(96,'Shreya','Gupta','F','1998-01-30','9876500096','shreya.gupta96@gmail.com','Chennai',6),
(97,'Naveen','Reddy','M','1993-06-15','9876500097','naveen.reddy97@gmail.com','Mumbai',7),
(98,'Pallavi','Mehta','F','1996-09-22','9876500098','pallavi.mehta98@gmail.com','Pune',8),
(99,'Karthik','Sharma','M','1995-04-04','9876500099','karthik.sharma99@gmail.com','New Delhi',9),
(100,'Ishita','Verma','F','1997-12-11','9876500100','ishita.verma100@gmail.com','Kolkata',10);



INSERT INTO Accounts
(Account_ID, Customer_ID, Account_Type, Balance, Open_Date, Status)
VALUES
(1001,1,'Savings',85000.00,'2021-01-15','Active'),
(1002,2,'Current',120000.00,'2020-05-20','Active'),
(1003,3,'Savings',45000.00,'2022-03-12','Active'),
(1004,4,'Salary',78000.00,'2023-06-18','Active'),
(1005,5,'Savings',150000.00,'2021-09-10','Active'),
(1006,6,'Current',250000.00,'2020-11-05','Active'),
(1007,7,'Savings',62000.00,'2022-07-25','Active'),
(1008,8,'Salary',98000.00,'2023-01-30','Active'),
(1009,9,'Savings',35000.00,'2021-04-22','Dormant'),
(1010,10,'Current',500000.00,'2020-12-01','Active'),
(1011,11,'Savings',92000.00,'2022-02-14','Active'),
(1012,12,'Salary',68000.00,'2023-05-16','Active'),
(1013,13,'Savings',125000.00,'2021-08-08','Active'),
(1014,14,'Current',215000.00,'2020-10-19','Inactive'),
(1015,15,'Savings',54000.00,'2022-11-23','Active'),
(1016,16,'Salary',83000.00,'2023-03-28','Active'),
(1017,17,'Savings',72000.00,'2021-06-09','Active'),
(1018,18,'Current',180000.00,'2020-09-17','Active'),
(1019,19,'Savings',27000.00,'2022-04-30','Dormant'),
(1020,20,'Salary',110000.00,'2023-08-12','Active'),
(1021,21,'Savings',143000.00,'2021-02-11','Active'),
(1022,22,'Current',265000.00,'2020-07-21','Active'),
(1023,23,'Savings',58000.00,'2022-01-27','Active'),
(1024,24,'Salary',76000.00,'2023-09-03','Active'),
(1025,25,'Savings',89000.00,'2021-12-15','Active'),
(1026,26,'Current',310000.00,'2020-03-18','Active'),
(1027,27,'Savings',49000.00,'2022-10-09','Inactive'),
(1028,28,'Salary',97000.00,'2023-07-14','Active'),
(1029,29,'Savings',39000.00,'2021-05-26','Dormant'),
(1030,30,'Current',420000.00,'2020-08-29','Active');


INSERT INTO Accounts
(Account_ID, Customer_ID, Account_Type, Balance, Open_Date, Status)
VALUES
(1031,31,'Savings',68000.00,'2021-02-18','Active'),
(1032,32,'Current',245000.00,'2020-06-22','Active'),
(1033,33,'Savings',52000.00,'2022-04-11','Active'),
(1034,34,'Salary',87000.00,'2023-01-19','Active'),
(1035,35,'Savings',134000.00,'2021-10-05','Active'),
(1036,36,'Current',410000.00,'2020-09-14','Active'),
(1037,37,'Savings',76000.00,'2022-08-02','Active'),
(1038,38,'Salary',93000.00,'2023-05-30','Active'),
(1039,39,'Savings',29000.00,'2021-03-09','Dormant'),
(1040,40,'Current',560000.00,'2020-12-17','Active'),

(1041,41,'Savings',81000.00,'2022-01-28','Active'),
(1042,42,'Salary',69000.00,'2023-07-06','Active'),
(1043,43,'Savings',98000.00,'2021-11-12','Active'),
(1044,44,'Current',285000.00,'2020-05-25','Inactive'),
(1045,45,'Savings',47000.00,'2022-09-20','Active'),
(1046,46,'Salary',102000.00,'2023-04-15','Active'),
(1047,47,'Savings',62000.00,'2021-07-04','Active'),
(1048,48,'Current',195000.00,'2020-10-08','Active'),
(1049,49,'Savings',36000.00,'2022-06-24','Dormant'),
(1050,50,'Salary',116000.00,'2023-02-27','Active'),

(1051,51,'Savings',154000.00,'2021-04-18','Active'),
(1052,52,'Current',335000.00,'2020-08-30','Active'),
(1053,53,'Savings',71000.00,'2022-12-09','Active'),
(1054,54,'Salary',84000.00,'2023-06-11','Active'),
(1055,55,'Savings',128000.00,'2021-09-27','Active'),
(1056,56,'Current',275000.00,'2020-03-16','Active'),
(1057,57,'Savings',59000.00,'2022-05-07','Inactive'),
(1058,58,'Salary',91000.00,'2023-08-22','Active'),
(1059,59,'Savings',44000.00,'2021-01-31','Dormant'),
(1060,60,'Current',485000.00,'2020-11-13','Active');


INSERT INTO Accounts
(Account_ID, Customer_ID, Account_Type, Balance, Open_Date, Status)
VALUES
(1061,61,'Savings',95000.00,'2021-02-15','Active'),
(1062,62,'Current',275000.00,'2020-06-10','Active'),
(1063,63,'Savings',48000.00,'2022-04-21','Active'),
(1064,64,'Salary',87000.00,'2023-07-18','Active'),
(1065,65,'Savings',165000.00,'2021-09-12','Active'),
(1066,66,'Current',390000.00,'2020-11-08','Active'),
(1067,67,'Savings',72000.00,'2022-08-30','Active'),
(1068,68,'Salary',91000.00,'2023-03-14','Active'),
(1069,69,'Savings',41000.00,'2021-05-22','Dormant'),
(1070,70,'Current',525000.00,'2020-12-05','Active'),

(1071,71,'Savings',88000.00,'2022-01-17','Active'),
(1072,72,'Salary',76000.00,'2023-06-01','Active'),
(1073,73,'Savings',132000.00,'2021-10-09','Active'),
(1074,74,'Current',298000.00,'2020-04-20','Inactive'),
(1075,75,'Savings',53000.00,'2022-09-11','Active'),
(1076,76,'Salary',98000.00,'2023-05-25','Active'),
(1077,77,'Savings',67000.00,'2021-07-13','Active'),
(1078,78,'Current',185000.00,'2020-09-28','Active'),
(1079,79,'Savings',36000.00,'2022-02-16','Dormant'),
(1080,80,'Salary',112000.00,'2023-08-08','Active'),

(1081,81,'Savings',146000.00,'2021-03-24','Active'),
(1082,82,'Current',310000.00,'2020-07-15','Active'),
(1083,83,'Savings',69000.00,'2022-11-19','Active'),
(1084,84,'Salary',86000.00,'2023-04-07','Active'),
(1085,85,'Savings',124000.00,'2021-08-18','Active'),
(1086,86,'Current',255000.00,'2020-02-26','Active'),
(1087,87,'Savings',57000.00,'2022-06-29','Inactive'),
(1088,88,'Salary',93000.00,'2023-09-10','Active'),
(1089,89,'Savings',45000.00,'2021-01-20','Dormant'),
(1090,90,'Current',470000.00,'2020-10-16','Active');


INSERT INTO Accounts
(Account_ID, Customer_ID, Account_Type, Balance, Open_Date, Status)
VALUES

-- Customer 91-100 (First Account)

(1091,91,'Savings',78000.00,'2021-04-15','Active'),
(1092,92,'Current',285000.00,'2020-09-21','Active'),
(1093,93,'Savings',62000.00,'2022-03-08','Active'),
(1094,94,'Salary',94000.00,'2023-01-19','Active'),
(1095,95,'Savings',171000.00,'2021-07-28','Active'),
(1096,96,'Current',350000.00,'2020-11-13','Active'),
(1097,97,'Savings',56000.00,'2022-05-25','Inactive'),
(1098,98,'Salary',98000.00,'2023-08-12','Active'),
(1099,99,'Savings',43000.00,'2021-02-27','Dormant'),
(1100,100,'Current',520000.00,'2020-12-03','Active'),

-- Customer 1-20 (Second Account)

(1101,1,'Fixed Deposit',300000.00,'2024-01-15','Active'),
(1102,2,'Savings',95000.00,'2024-02-18','Active'),
(1103,3,'Current',210000.00,'2024-03-12','Active'),
(1104,4,'Fixed Deposit',500000.00,'2024-04-10','Active'),
(1105,5,'Salary',125000.00,'2024-01-28','Active'),
(1106,6,'Savings',82000.00,'2024-02-22','Active'),
(1107,7,'Current',175000.00,'2024-03-17','Active'),
(1108,8,'Fixed Deposit',450000.00,'2024-04-08','Active'),
(1109,9,'Savings',68000.00,'2024-01-31','Active'),
(1110,10,'Salary',135000.00,'2024-02-25','Active'),

(1111,11,'Current',245000.00,'2024-03-06','Active'),
(1112,12,'Fixed Deposit',600000.00,'2024-04-12','Active'),
(1113,13,'Savings',73000.00,'2024-01-20','Active'),
(1114,14,'Salary',118000.00,'2024-02-16','Active'),
(1115,15,'Current',265000.00,'2024-03-23','Active'),
(1116,16,'Fixed Deposit',750000.00,'2024-04-05','Active'),
(1117,17,'Savings',91000.00,'2024-01-10','Active'),
(1118,18,'Salary',121000.00,'2024-02-14','Active'),
(1119,19,'Current',295000.00,'2024-03-29','Active'),
(1120,20,'Fixed Deposit',400000.00,'2024-04-18','Active');

INSERT INTO Accounts
(Account_ID, Customer_ID, Account_Type, Balance, Open_Date, Status)
VALUES

(1121,21,'Savings',98000.00,'2024-01-18','Active'),
(1122,22,'Current',315000.00,'2024-02-22','Active'),
(1123,23,'Fixed Deposit',450000.00,'2024-03-15','Active'),
(1124,24,'Salary',126000.00,'2024-04-08','Active'),
(1125,25,'Savings',86000.00,'2024-01-26','Active'),
(1126,26,'Current',280000.00,'2024-02-17','Active'),
(1127,27,'Fixed Deposit',520000.00,'2024-03-20','Active'),
(1128,28,'Salary',119000.00,'2024-04-12','Active'),
(1129,29,'Savings',74000.00,'2024-01-30','Active'),
(1130,30,'Current',330000.00,'2024-02-28','Active'),

(1131,31,'Fixed Deposit',650000.00,'2024-03-10','Active'),
(1132,32,'Savings',91000.00,'2024-04-05','Active'),
(1133,33,'Current',295000.00,'2024-01-14','Active'),
(1134,34,'Salary',128000.00,'2024-02-09','Active'),
(1135,35,'Fixed Deposit',720000.00,'2024-03-26','Active'),
(1136,36,'Savings',81000.00,'2024-04-15','Active'),
(1137,37,'Current',245000.00,'2024-01-22','Active'),
(1138,38,'Salary',122000.00,'2024-02-11','Active'),
(1139,39,'Fixed Deposit',560000.00,'2024-03-19','Active'),
(1140,40,'Savings',67000.00,'2024-04-25','Active'),

(1141,41,'Current',305000.00,'2024-01-17','Active'),
(1142,42,'Fixed Deposit',800000.00,'2024-02-13','Active'),
(1143,43,'Savings',94000.00,'2024-03-07','Active'),
(1144,44,'Salary',132000.00,'2024-04-02','Active'),
(1145,45,'Current',285000.00,'2024-01-29','Active'),
(1146,46,'Fixed Deposit',910000.00,'2024-02-24','Active'),
(1147,47,'Savings',88000.00,'2024-03-16','Active'),
(1148,48,'Salary',117000.00,'2024-04-09','Active'),
(1149,49,'Current',325000.00,'2024-01-12','Active'),
(1150,50,'Fixed Deposit',480000.00,'2024-02-27','Active');


INSERT INTO Employees (Employee_ID, Employee_Name, Designation, Salary, Branch_ID) VALUES 
(1,'Arjun Rao','Branch Manager',85000,1), 
(2,'Sneha Gupta','Assistant Manager',65000,1), 
(3,'Rahul Sharma','Cashier',38000,1), 
(4,'Pooja Reddy','Customer Service Executive',35000,1), 
(5,'Kiran Kumar','Branch Manager',86000,2), 
(6,'Anjali Verma','Assistant Manager',64000,2), 
(7,'Rohit Naidu','Cashier',39000,2), 
(8,'Meghana Patel','Customer Service Executive',36000,2), 
(9,'Suresh Reddy','Branch Manager',87000,3), 
(10,'Divya Sharma','Assistant Manager',66000,3), 
(11,'Manoj Kumar','Cashier',40000,3), 
(12,'Keerthi Rao','Customer Service Executive',35500,3), 
(13,'Naveen Gupta','Branch Manager',88000,4), 
(14,'Harika Singh','Assistant Manager',67000,4), 
(15,'Ajay Patel','Cashier',39500,4), 
(16,'Swathi Reddy','Customer Service Executive',36500,4), 
(17,'Prakash Naidu','Branch Manager',89000,5), 
(18,'Lakshmi Joshi','Assistant Manager',68000,5), 
(19,'Ashok Verma','Cashier',40500,5), 
(20,'Bhavana Kumar','Customer Service Executive',37000,5), 
(21,'Rakesh Sharma','Branch Manager',90000,6), 
(22,'Sowmya Gupta','Assistant Manager',69000,6), 
(23,'Vinay Rao','Cashier',41000,6), 
(24,'Pallavi Reddy','Customer Service Executive',37500,6), 
(25,'Nikhil Singh','Branch Manager',91000,7), 
(26,'Deepika Naidu','Assistant Manager',70000,7), 
(27,'Tarun Kumar','Cashier',42000,7), 
(28,'Sirisha Patel','Customer Service Executive',38000,7), 
(29,'Mahesh Reddy','Branch Manager',92000,8), 
(30,'Nandhini Iyer','Assistant Manager',71000,8), 
(31,'Abhishek Gupta','Cashier',42500,8), 
(32,'Aishwarya Rao','Customer Service Executive',38500,8), 
(33,'Lokesh Sharma','Branch Manager',93000,9), 
(34,'Shilpa Verma','Assistant Manager',72000,9), 
(35,'Gopi Krishna','Cashier',43000,9), 
(36,'Navya Patel','Customer Service Executive',39000,9), 
(37,'Hari Prasad','Branch Manager',94000,10), 
(38,'Kavya Reddy','Assistant Manager',73000,10), 
(39,'Sai Kumar','Cashier',43500,10), 
(40,'Monika Gupta','Customer Service Executive',39500,10);


INSERT INTO Loans (Loan_ID, Customer_ID, Loan_Type, Loan_Amount, Interest_Rate, Loan_Date) VALUES 
(1,3,'Home Loan',2500000.00,8.50,'2022-01-15'), 
(2,5,'Car Loan',750000.00,9.20,'2023-03-12'), 
(3,7,'Personal Loan',300000.00,11.50,'2024-02-18'), 
(4,10,'Education Loan',500000.00,8.10,'2021-06-25'), 
(5,12,'Gold Loan',250000.00,7.80,'2023-08-05'), 
(6,15,'Home Loan',3500000.00,8.75,'2022-09-14'), 
(7,18,'Car Loan',900000.00,9.00,'2024-01-20'), 
(8,20,'Personal Loan',450000.00,12.00,'2023-11-08'), 
(9,22,'Education Loan',650000.00,8.30,'2022-07-19'), 
(10,25,'Gold Loan',300000.00,7.60,'2024-04-01'), 
(11,27,'Home Loan',4200000.00,8.40,'2021-12-12'), 
(12,30,'Car Loan',850000.00,9.10,'2023-05-17'), 
(13,33,'Personal Loan',500000.00,11.80,'2022-08-30'), 
(14,35,'Education Loan',700000.00,8.20,'2024-03-15'), 
(15,38,'Gold Loan',275000.00,7.90,'2023-09-10'), 
(16,40,'Home Loan',2800000.00,8.60,'2022-02-22'),
(17,42,'Car Loan',950000.00,9.30,'2024-01-05'), 
(18,45,'Personal Loan',350000.00,11.90,'2023-06-11'), 
(19,47,'Education Loan',800000.00,8.00,'2021-10-27'), 
(20,50,'Gold Loan',320000.00,7.70,'2024-05-08'), 
(21,53,'Home Loan',3100000.00,8.45,'2022-04-13'), 
(22,55,'Car Loan',780000.00,9.15,'2023-07-22'), 
(23,57,'Personal Loan',275000.00,11.40,'2024-02-28'), 
(24,60,'Education Loan',900000.00,8.25,'2022-11-09'), 
(25,62,'Gold Loan',350000.00,7.85,'2023-10-18');

INSERT INTO Loans (Loan_ID, Customer_ID, Loan_Type, Loan_Amount, Interest_Rate, Loan_Date) VALUES 
(26,65,'Home Loan',4500000.00,8.55,'2022-06-20'), 
(27,67,'Car Loan',820000.00,9.25,'2023-04-18'), 
(28,69,'Personal Loan',400000.00,11.75,'2024-01-12'), 
(29,72,'Education Loan',750000.00,8.15,'2022-09-30'), 
(30,74,'Gold Loan',280000.00,7.65,'2023-12-08'), 
(31,76,'Home Loan',3800000.00,8.70,'2021-11-14'), 
(32,78,'Car Loan',980000.00,9.05,'2024-03-22'), 
(33,80,'Personal Loan',325000.00,11.60,'2023-07-09'), 
(34,82,'Education Loan',850000.00,8.35,'2022-05-16'), 
(35,84,'Gold Loan',310000.00,7.95,'2024-04-25'), 
(36,86,'Home Loan',2950000.00,8.50,'2021-08-11'), 
(37,88,'Car Loan',890000.00,9.40,'2023-10-03'), 
(38,90,'Personal Loan',475000.00,11.85,'2022-12-19'), 
(39,92,'Education Loan',680000.00,8.20,'2024-02-06'),
(40,94,'Gold Loan',260000.00,7.75,'2023-06-27'), 
(41,95,'Home Loan',5200000.00,8.65,'2022-03-05'), 
(42,96,'Car Loan',760000.00,9.15,'2024-01-29'), 
(43,97,'Personal Loan',290000.00,11.50,'2023-09-14'), 
(44,98,'Education Loan',950000.00,8.40,'2022-10-22'), 
(45,99,'Gold Loan',340000.00,7.80,'2024-05-11'), 
(46,100,'Home Loan',4100000.00,8.60,'2021-07-18'), 
(47,8,'Car Loan',870000.00,9.20,'2023-08-26'), 
(48,16,'Personal Loan',550000.00,11.95,'2022-11-30'), 
(49,28,'Education Loan',720000.00,8.10,'2024-03-08'), 
(50,41,'Gold Loan',300000.00,7.70,'2023-05-24');

select count(*) from transactions;
select * from transactions;
select * from employees;
select * from accounts;
select * from branches;
select * from customers;
select * from loans;
use banking_project;
#  Count the total number of customers
select count(*) as Total_Customers
from customers;


#  Count the total number of accounts
select count(*) as total_accounts
from accounts;

#  Count the total number of transactions
select count(*) as total_transactions
from Transactions;

#  Display all active accounts
select * from accounts
where status = 'active';

#  Find customers belonging to the Hyderabad branch
select * from customers
where city = 'Hyderabad';

#  Find the total balance across all accounts
select sum(balance) as total_balance
from accounts;

#  Find the average account balance
select AVG(balance) as avg_balance
from accounts;

#  Find the highest account balance
select max(balance) as highest_balance
from accounts;

#  Find the lowest account balance
select min(balance) as lowest_balance
from accounts;

#  Count customers in each branch
select branch_id, count(*) as total_customers
from customers
group by branch_id;

#  Count accounts by account type
select account_type,count(*) as total_accounts
from accounts
group by account_type;

#  Count transactions by transaction type
select transaction_type,count(*) as total_transactions
from transactions
group by transaction_type;

#  Find customers born after 1997-01-01
select * from customers
where DOB > '1997-01-01';

#  Display all employees with salary greater than ₹70,000
select * from employees
where salary > 70000;

#  Display all loans greater than ₹10,00,000
select * from loans
where loan_amount > 1000000;

#  -------------------------------AGGREGATE FUNCTIONS-------------------------------
#  Find the total account balance in each branch.
select b.branch_ID,b.branch_name,sum(a.balance) as Total_Balance
from branches b
JOIN customers c
on b.branch_ID = c.branch_ID
JOIN accounts a
on c.customer_ID = a.customer_ID
group by branch_id,branch_name
order by Total_Balance desc;


#  Average Balance by Account Type
select Account_Type,ROUND(AVG(balance),2) as avg_balance 
from accounts
group by Account_Type;


# Total Loan Amount by Loan Type
select Loan_Type,sum(loan_amount) as Total_loan_amount
from loans
group by Loan_Type;

#  Highest Salary in Each Branch
select Branch_ID,max(salary) 
from employees
group by Branch_ID;


#  Average Employee Salary by Branch
select branch_id,avg(salary) 
from employees
group by branch_id
order by branch_id;

#  Monthly Transaction Totals
select YEAR(Transaction_Date) as Year,
Month(Transaction_Date) as Month,
sum(Amount) as Total_Amount 
from transactions
group by Year , Month
order by Year , Month;


#  Top 5 Customers by Total Balance
select 
c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
sum(a.balance) as Total_Balance
from customers c
JOIN
accounts a
on c.Customer_ID = a.Customer_ID
group by c.Customer_ID,Customer_Name
order by Total_Balance desc
Limit 5;


#  Branch with the Highest Total Balance
select 
b.Branch_ID,
b.Branch_Name,
sum(a.balance) as Total_Balance
from Branches b
JOIN
Customers c
on b.Branch_ID = c.Branch_ID
join
accounts a
on a.Customer_ID = c.customer_ID
group by b.Branch_ID,b.Branch_Name
order by Total_Balance desc
limit 1;


#  Number of Accounts by Status
select status , count(*) as Total_Accounts
from Accounts
group by Status;


#  Total Number of Customers in Each City
select city , count(*) as Total_Customers
from customers
group by city
order by Total_Customers; 


#   Total Transactions by Transaction Type
select Transaction_Type,
count(*) as Total_Transactions,
sum(amount) as Total_Amount
from Transactions
group by Transaction_Type;


#  Average Loan Amount by Loan Type
select Loan_Type,avg(Loan_Amount) as avg_loan_amount
from Loans
group by Loan_Type
order by avg_loan_amount desc;


#  Total Salary Paid by Each Branch
select Branch_ID ,
sum(salary) as Total_Salary
from employees
group by Branch_ID;


#  Number of Loans by Loan Type
select Loan_Type,count(*) as Total_Loans
from LOans
group by Loan_Type;


#  Total Transaction Amount for Each Account
select Account_ID,sum(Amount) as Total_Transaction_Amount
from Transactions
group by Account_ID
order by Total_Transaction_Amount desc;

# --------------------------JOINS---------------------------------
#  Display Customer Name with Account Details
select c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as customer_Name,
a.account_ID,
a.Account_Type,
a.Balance,
a.Status
from customers c
join 
accounts a
on c.customer_ID = a.customer_ID;


#  Display Customer and Branch Details
select c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
c.Gender,
c.City,
b.Branch_ID,
b.Branch_Name,
b.city,b.state
from customers c
join
branches b
on c.Branch_ID = b.Branch_ID;


#  Display Employee with Branch Name
select e.employee_name,
e.designation,
e.salary,
b.branch_name
from employees e
join 
branches b
on e.branch_ID = b.branch_ID;


#  Display Loan Details with Customer Names
select l.loan_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
l.Loan_Type,
l.Loan_Amount,
l.interest_rate
from loans l
join
customers c
on l.customer_id = c.customer_id;


#  Display Transactions with Customer Names
select 
t.transaction_ID,
a.Account_ID,
c.Customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
t.transaction_Date,
t.transaction_Type,
t.Amount
from transactions t
join Accounts a
on t.Account_ID = a.Account_ID
join
Customers c
on a.Customer_ID = c.Customer_ID;


#  Display Total Balance for Each Customer
select c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
sum(a.balance) as Total_Balance
from customers c
join
accounts a
on c.Customer_ID = a.Customer_ID
group by c.Customer_ID,Customer_Name
order by Total_Balance desc;


#  Display Branch-wise Customer Count
select
b.branch_Name,
count(c.customer_ID) as Customer_Count
from branches b
join
customers c
on b.branch_ID = c.branch_ID
group by b.branch_Name
order by Customer_Count desc;


#  Display Branch-wise Total Deposits
select 
b.branch_Name,
sum(a.balance) as Total_Balance
from branches b
join
customers c
on b.branch_ID = c.branch_ID
join 
accounts a
on c.customer_ID = a.customer_ID
group by b.branch_Name
order by Total_Balance desc;

#  Find Customers Having Multiple Accounts
select
c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
count(a.Account_ID) as Total_Accounts
from customers c
join
accounts a
on c.customer_ID = a.customer_ID
group by c.customer_ID,customer_name
having count(a.Account_ID) > 1;


#  Find Customers Without Loans
select 
c.customer_ID,concat(c.First_Name," ",Last_Name) as Customer_Name
from customers c
left join
loans l
on c.customer_ID = l.customer_ID
where l.customer_ID is null;


#  Display Account Details with Branch Name
select 
a.Account_ID,
a.Account_Type,
a.Balance,
b.Branch_Name
from accounts a
join 
customers c
on a.customer_ID = c.customer_ID
join
branches b
on c.branch_ID = b.branch_ID;


#  Display Employee Count in Each Branch
select 
b.branch_Name,
count(e.Employee_ID) as Total_Employees
from branches b
join employees e
on b.Branch_ID = e.Branch_ID
group by b.branch_Name
order by Total_Employees;


#  Display Customers and Their Loan Amounts
select 
c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
l.loan_type,
l.Loan_Amount
from customers c
join loans l
on c.customer_ID = l.customer_ID;


#  Display Accounts with Transaction Count
select 
a.Account_ID,
a.Account_Type,
a.Balance,
count(t.Transaction_ID) as Total_Transactions
from Accounts a
join 
Transactions t
on a.Account_ID = t.Account_ID
group by a.Account_ID;


#  Display Total Transaction Amount for Each Customer
select 
c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
sum(t.Amount) as Total_Transaction_Amount
from customers c
join accounts a
on c.Customer_ID = a.Customer_ID
join 
transactions t
on a.Account_ID = t.Account_ID
group by c.Customer_ID,Customer_Name
order by Total_Transaction_Amount desc;


#  Display Customers with Branch and Account Type
select
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
b.Branch_Name,
a.Account_Type
from customers c
join
accounts a
on c.customer_ID = a.customer_ID
join
branches b
on c.branch_ID = b.Branch_ID;


#  Display Loans Issued Branch-wise
select 
b.branch_name ,
count(l.loan_ID) as total_loans
from branches b
join
customers c
on b.branch_ID = c.branch_ID
join
loans l
on c.customer_ID = l.customer_ID
group by b.branch_name;


#  Display Branch-wise Average Account Balance
select
b.branch_name,
round(avg(a.balance),2) as avg_balance
from branches b
join
customers c
on b.branch_ID = c.branch_ID
join
accounts a
on c.customer_ID = a.customer_ID
group by b.branch_name;


#  Display Customers with Both Accounts and Loans
select DISTINCT
c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name
from customers c
join
accounts a
on c.customer_ID = a.customer_ID
join 
loans l
on c.customer_ID = l.customer_ID;


#  Display Complete Banking Information
select 
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
b.branch_Name,
a.Account_ID,
a.Account_Type,
a.Balance,
l.loan_Type,
l.loan_Amount
from customers c
join
branches b
on c.branch_ID = b.branch_ID
join
accounts a
on c.customer_ID = a.customer_ID
join
loans l
on c.customer_ID = l.customer_ID
order by Customer_Name;


#  ---------------------------SUB-QUERIES---------------------------
#  Find Customers with Above-Average Balance
select
customer_id, balance
from accounts
where balance > 
( 
select avg(balance) from accounts
);

#  Find the Account(s) with the Maximum Balance
select * from accounts
where balance = 
(
select max(balance) 
from accounts
);

#  Find Customers Who Have Taken Loans
select * from customers
where customer_ID IN 
( 
select customer_ID
from loans
);


#  Find Customers Without Any Transactions
select *
from customers
where customer_ID not in
(
select distinct a.customer_id
from accounts a
join
transactions t
on a.account_id = t.account_id
);


#  Find the Branch with the Most Customers
select * 
from branches 
where branch_ID = 
(
select branch_ID
from customers
group by branch_ID
order by count(*) desc
limit 1
);


#  Find Customers Having More Than One Account
select * from customers
where customer_ID IN
(
select customer_ID
from accounts
group by customer_ID
having count(*) > 1
);


#  Find Accounts with Balance Greater Than the Average Balance of Their Account Type
select *
from accounts a1
where balance > 
(
select avg(balance) 
from accounts a2
where a1.account_type = a2.account_type
);


#  Find Employees Earning More Than the Average Salary
select *
from employees
where salary > 
(
select avg(salary)
from employees
);


# Find Customers Who Have the Highest Loan Amount
select * 
from loans
where loan_amount = 
(
select max(loan_amount)
from loans
);


#  Find Customers Who Have Both an Account and a Loan
select * from customers
where customer_ID IN
(
select customer_ID 
from accounts 
)
and customer_ID IN
(
select customer_ID
from loans
);


#  Find Branches That Have No Employees
select *
from branches
where branch_ID not in
(
select distinct branch_ID 
from employees
);


#  Find Customers Whose Total Balance Exceeds ₹5,00,000
select * from customers 
where customer_ID IN
(
select customer_ID
from accounts 
group by customer_ID
having sum(balance) > 500000
);


#  Find Accounts with No Transactions
select * from accounts 
where account_ID not in
(
select distinct account_ID
from transactions
);

#  Find the Second Highest Account Balance
select MAX(balance) 
from accounts
where balance < 
(
select max(balance) 
from accounts
);

#  Find Customers Who Have More Than the Average Number of Accounts
SELECT Customer_ID
FROM Accounts
GROUP BY Customer_ID
HAVING COUNT(*) >
(
    SELECT AVG(Account_Count)
    FROM
    (
        SELECT COUNT(*) AS Account_Count
        FROM Accounts
        GROUP BY Customer_ID
    ) AS AvgAccounts
);


#  ----------------------------WINDOW FUNCTIONS---------------------------------
#  Rank Customers by Account Balance
select customer_ID,
Account_ID,
balance,
RANK() OVER(order by balance desc) as rnk
from accounts;


#  Dense Rank Customers by Account Balance
select customer_ID,
account_ID,
balance,
DENSE_RANK() OVER(order by balance) as dense_rnk
from accounts; 


#  Row Number for Each Account
select 
customer_ID,
Account_ID,
balance,
ROW_NUMBER() OVER(order by balance desc) as rn
from accounts;


#  Rank Loan Amounts
select customer_ID,
loan_ID,
loan_type,
loan_amount,
rank() over(order by loan_amount) as rnk
from loans;

#  Dense Rank by Loan Amount
select loan_ID,
customer_ID,
loan_amount,
DENSE_RANK() OVER(order by loan_amount desc) as dense_rnk
from loans;

#  Running Total of Transactions
select transaction_ID,
Account_ID,
Transaction_DAte,
Amount,
sum(Amount) OVER(order by transaction_ID,Transaction_Date) as running_total
from transactions;


#  Running Total for each Account
select transaction_ID,Account_ID,
Transaction_Date,
Amount,
sum(Amount) OVER(partition by Account_ID order by Transaction_Date,Transaction_ID) as running_total
from transactions;


#  Monthly cumulative transaction amount
SELECT
    YEAR(Transaction_Date) AS Year,
    MONTH(Transaction_Date) AS Month,
    SUM(Amount) AS Monthly_Total,
    SUM(SUM(Amount)) OVER (
        ORDER BY YEAR(Transaction_Date), MONTH(Transaction_Date)
    ) AS Cumulative_Total
FROM Transactions
GROUP BY YEAR(Transaction_Date), MONTH(Transaction_Date);


#  Top 3 customers by total balance
select * from
(
select customer_ID,
sum(balance) as Total_Balance,
DENSE_RANK() OVER(order by sum(balance) desc ) as rank_no 
from accounts
group by customer_ID
) t
where rank_no <= 3;

#  Top 3 customers in each branch
select * from
(
select 
c.branch_ID,
c.customer_ID,
SUM(a.balance) as Total_Balance,
ROW_NUMBER() OVER(partition by c.branch_ID order by sum(a.balance) desc) as rn
from customers c
join accounts a
on c.customer_ID = a.customer_ID
group by c.customer_ID,c.branch_ID
) x
where rn <= 3;


#  Previous Transacton Amount(LAG)
select 
Transaction_ID,
Account_ID,
Transaction_Date,
Transaction_Type,
Amount,
LAG(amount) OVER(partition by Account_ID order by transaction_DATE) as previous_amount
from transactions;


#  Next Transaction Amunt(LEAD)
select 
transaction_ID,
Account_ID,
Transaction_Date,
Amount,
LEAD(amount) OVER(partition by account_ID order by Transaction_Date) as next_amount
from transactions;

#  Diference between current and previous transaction
select
Transaction_ID,
Account_ID,
Amount,
Amount - 
LAG(amount) OVER(partition by Account_ID order by Transaction_Date,Account_ID) 
as difference
from transactions;


#  First Transaction Amount for Each Account
select
Transaction_ID,
Account_ID,
Transaction_DAte,
Amount,
FIRST_VALUE(amount) OVER(partition by account_ID order by transaction_Date) as First_Transaction
from transactions;


#  Last Transaction Amount for each Account
SELECT
    Transaction_ID,
    Account_ID,
    Transaction_Date,
    Amount,
    LAST_VALUE(Amount) OVER (
        PARTITION BY Account_ID
        ORDER BY Transaction_Date
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND UNBOUNDED FOLLOWING
    ) AS Last_Transaction
FROM Transactions;


#  Average Balance by Account Type
select
Account_ID,
Account_Type,
Balance,
AVG(balance) OVER(partition by account_type)
as avg_balance
from accounts;

#  Maximum Balance in Each Account Type
select 
account_ID,
account_type,balance,
max(balance) OVER(partition by account_type)
as max_balance
from accounts;


#  Salary Rank Within Each Branch
select
branch_ID,
employee_ID,
Salary,
RANK() OVER(partition by branch_ID order by salary desc) as rnk
from employees;


#  Percent Rank of Loan Amounts
select
loan_ID,
customer_ID,
loan_amount,
PERCENT_RANK() OVER(order by loan_amount)
as percent_rnk
from loans;


#  NTILE (Divide Customers into 4 Groups by Balance)
select 
account_ID,customer_ID,balance,
NTILE(4) OVER(order by balance desc)
as quartile
from accounts;

#  -------------------------CTEs-------------------------------------
#  Calculate the total balance of each customer.
with Customer_Balance AS
(
select customer_ID,
sum(balance) as Total_Balance
from accounts
group by customer_ID
)

select * 
from Customer_Balance
order by Total_Balance desc;


#  Top 10 customers by balance
with top10 AS
(
select customer_ID,
sum(balance) as Total_Balance
from accounts
group by customer_ID
)
select * from
top10
order by Total_Balance desc
limit 10;


#  Monthly Transaction Totals
with MonthlyTransactions AS
(
select
YEAR(Transaction_Date) as YEAR,
MONTH(Transaction_Date) as MONTH,
SUM(Amount) as Total_Amount
from transactions
group by YEAR, MONTH
)
select * 
from MonthlyTransactions
order by YEAR,MONTH;


#  Branch-wise Balance Summary
with BranchBalance AS
(
select b.branch_ID,
B.branch_NAme,
sum(a.balance) as Total_Balance
from branches b
join
customers c
on b.branch_ID = c.Branch_ID
join accounts a
on c.customer_ID = a.customer_ID
group by c.branch_ID,b.branch_name
)
select *
from BranchBalance
order by Total_Balance desc;


#  Customers with Above-Average Total Balance
with CustomerBalance AS
(
select
customer_ID,
SUM(balance) as Total_Balance
from accounts
group by customer_ID
)
select * 
from CustomerBalance
where Total_Balance > 
( 
select AVG(Total_Balance)
from CustomerBalance
);


#  Branch-wise customer count
with BranchCustomers AS
(
select branch_ID,
count(*) as Total_Customers
from customers
group by branch_ID
)
select * 
from BranchCustomers
order by Total_customers desc;

#  Total Loan Amount by Loan Type
with LoanAmount AS
(
select loan_type,
sum(loan_amount) as Total_loan
from loans
group by loan_type
)
select *
from LoanAmount
order by Total_loan desc;


#  Customers Having More Than One Account
WITH MultipleAccounts AS
(
select 
customer_ID,
count(*) as Total_Accounts
from Accounts
group by customer_ID
having count(*) > 1
)
select * 
from MultipleAccounts;


#  Top Branch by Total Deposits
with BranchDeposits AS
(
select b.branch_ID,
b.branch_name,
SUM(a.balance) as Total_Deposits
from branches b
join
customers c
on b.branch_ID = c.branch_ID
join
accounts a
on c.customer_ID = a.customer_ID
group by b.branch_ID,b.branch_name
)
select *
from BranchDeposits
order by Total_Deposits desc
limit 1;


#  Customer Transaction Summary
with CustomerTransactions AS
(
select 
a.customer_ID,
count(t.transaction_ID) as Total_transactions,
SUM(t.amount) as Total_transaction_amount
from accounts a
join
transactions t
on a.account_ID = t.Account_ID
group by a.customer_ID
) 
select * 
from CustomerTransactions
order by Total_transaction_amount desc;

#  Find the top 3 customers by total balance in each branch.
WITH CustomerBalance AS
(
    SELECT
        c.Branch_ID,
        c.Customer_ID,
        SUM(a.Balance) AS Total_Balance
    FROM Customers c
    JOIN Accounts a
        ON c.Customer_ID = a.Customer_ID
    GROUP BY c.Branch_ID, c.Customer_ID
),
RankedCustomers AS
(
    SELECT
        *,
        DENSE_RANK() OVER (
            PARTITION BY Branch_ID
            ORDER BY Total_Balance DESC
        ) AS Rank_No
    FROM CustomerBalance
)
SELECT *
FROM RankedCustomers
WHERE Rank_No <= 3
ORDER BY Branch_ID, Rank_No;

# -----------------------------------------------------------------------------------------------------------------------------------
#---------------------------INTERVIEW LEVEL BUSINESS PROBLEMS---------------------------------------
#  Top 10 Customers by Total Transaction Amount
select c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
SUM(t.amount) as Total_Transaction_Amount
from customers c
join 
accounts a
on c.customer_ID = a.customer_ID
join 
transactions t
on a.account_ID = t.account_ID
group by c.customer_ID,customer_Name
order by Total_Transaction_Amount desc
limit 10;


#  Branch Generating the Highest Revenue (Highest Transaction Amount)
select b.branch_ID,
b.branch_Name,
SUM(t.amount) as Total_Transaction_Amount
from branches b
join
customers c
on b.branch_ID = c.branch_ID
join
accounts a
on c.customer_ID = a.customer_ID
join
transactions t
on a.account_ID = t.account_ID
group by b.branch_ID,b.branch_Name
order by Total_Transaction_Amount desc
limit 1;


#  Average Transaction Value by Month
select 
YEAR(transaction_date) as YEAR,
MONTH(transaction_date) as MONTH,
ROUND(AVG(amount),2) as Average_Transaction_Value
from transactions
group by MONTH,YEAR
order by MONTH,YEAR;


#  Most Popular Account Type
select
Account_Type,
count(*) as Total_accounts
from accounts
group by account_type
order by total_accounts desc
limit 1;


#  Most Active Customer (Highest Number of Transactions)
select
c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
count(t.transaction_ID) as TOtal_transactions
from customers c
join
accounts a
on c.customer_ID = a.customer_ID
join
transactions t
on a.account_ID = t.account_ID
group by c.customer_ID,customer_Name
order by Total_Transactions desc
limit 1;

# Customer Lifetime Transaction Value
select
c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
SUM(t.amount) as Lifetime_amount
from customers c
join
accounts a
on c.customer_ID = a.customer_ID
join 
transactions t
on a.account_ID = t.account_ID
group by c.customer_ID,Customer_Name
order by Lifetime_Amount desc;


#  Branch Performance Ranking
select 
branch_name,
Total_Revenue,
RANK() OVER(order by Total_Revenue) as Branch_rank
from
(
select b.branch_name,
sum(t.amount) as Total_Revenue
from branches b
join
customers c
on b.branch_ID = c.branch_ID
join
accounts a
on c.customer_ID = a.customer_ID
join
transactions t
on a.account_ID = t.account_ID
group by b.branch_name
) d;


#  Monthly Growth in Transactions
with MonthlySales AS
(
select 
YEAR(Transaction_Date) as YEAR,
MONTH(Transaction_Date) as MONTH,
SUM(amount) as Total_Amount
from transactions 
group by YEAR(Transaction_Date),MONTH(Transaction_Date)
)
select *,
Total_Amount - 
LAG(Total_amount) OVER(order by YEAR ,MONTH) as growth
from MonthlySales;


#  Customers Having More Than One Account
select
c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
count(a.account_ID) as Total_accounts
from customers c
join
accounts a
on c.customer_ID = a.customer_ID
group by c.customer_ID,customer_Name
having Total_accounts > 1;


#  Customers with Both Loan and Multiple Accounts
select 
c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
count(a.account_ID) as Total_Accounts
from customers c
join accounts a
on c.customer_ID = a.customer_ID
join
loans l
on a.customer_ID = l.customer_ID
group by c.customer_ID ,Customer_Name
having count(*) > 1;


#  Top 5 Branches by Total Deposits
select 
b.branch_name,
sum(a.balance) as Total_Deposits
from branches b
join
customers c
on b.branch_ID = c.branch_ID
join
accounts a
on c.customer_ID = a.customer_ID
group by b.branch_name
order by Total_Deposits desc
limit 5;


#  Customer with Highest Account Balance
select 
c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_Name,
SUM(a.balance) as Total_Balance
from customers c
join
Accounts a
on c.customer_ID = a.customer_ID
group by c.customer_ID,Customer_Name
order by Total_Balance desc
limit 1;


#  Loan-to-Balance Ratio
select 
c.customer_ID,
concat(c.First_Name," ",c.Last_Name) as Customer_NAme,
SUM(a.balance) as Total_Balance,
SUM(l.loan_amount) as Total_Loan,
ROUND(SUM(l.loan_amount)/SUM(a.balance),2) as loan_ratio
from customers c
join
accounts a
on c.customer_ID = a.customer_ID
join
loans l
on a.customer_ID = l.customer_ID
group by c.customer_ID,customer_name;


#  Top 3 Customers in Every Branch
WITH Customer_Balance AS
(
SELECT
c.Branch_ID,
c.Customer_ID,
SUM(a.Balance) AS Total_Balance
FROM Customers c
JOIN Accounts a
ON c.Customer_ID=a.Customer_ID
GROUP BY c.Branch_ID,c.Customer_ID
)

SELECT *
FROM
(
SELECT *,
DENSE_RANK() OVER(PARTITION BY Branch_ID ORDER BY Total_Balance DESC) AS rnk
FROM Customer_Balance
) x
WHERE rnk<=3;

#  Average Loan Amount by Branch
SELECT
b.Branch_Name,
ROUND(AVG(l.Loan_Amount),2) AS Average_Loan
FROM Branches b
JOIN Customers c
ON b.Branch_ID=c.Branch_ID
JOIN Loans l
ON c.Customer_ID=l.Customer_ID
GROUP BY b.Branch_Name;


# Branch with Maximum Number of Loans
SELECT
b.Branch_Name,
COUNT(l.Loan_ID) AS Total_Loans
FROM Branches b
JOIN Customers c
ON b.Branch_ID=c.Branch_ID
JOIN Loans l
ON c.Customer_ID=l.Customer_ID
GROUP BY b.Branch_Name
ORDER BY Total_Loans DESC
LIMIT 1;

#  Highest Transaction in Each Month
SELECT
YEAR(Transaction_Date) AS Year,
MONTH(Transaction_Date) AS Month,
MAX(Amount) AS Highest_Transaction
FROM Transactions
GROUP BY YEAR(Transaction_Date),MONTH(Transaction_Date);


#  Customers with Above Average Transaction Amount
SELECT
Customer_ID,
Total_Amount
FROM
(
SELECT
a.Customer_ID,
SUM(t.Amount) AS Total_Amount
FROM Accounts a
JOIN Transactions t
ON a.Account_ID=t.Account_ID
GROUP BY a.Customer_ID
)x
WHERE Total_Amount>
(
SELECT AVG(Total_Amount)
FROM
(
SELECT
SUM(t.Amount) AS Total_Amount
FROM Accounts a
JOIN Transactions t
ON a.Account_ID=t.Account_ID
GROUP BY a.Customer_ID
)y
);


#  Branch-wise Transaction Count
SELECT
b.Branch_Name,
COUNT(t.Transaction_ID) AS Total_Transactions
FROM Branches b
JOIN Customers c
ON b.Branch_ID=c.Branch_ID
JOIN Accounts a
ON c.Customer_ID=a.Customer_ID
JOIN Transactions t
ON a.Account_ID=t.Account_ID
GROUP BY b.Branch_Name;


#  Banking Dashboard Summary
SELECT
(SELECT COUNT(*) FROM Customers) AS Total_Customers,
(SELECT COUNT(*) FROM Accounts) AS Total_Accounts,
(SELECT COUNT(*) FROM Transactions) AS Total_Transactions,
(SELECT SUM(Balance) FROM Accounts) AS Total_Deposits,
(SELECT SUM(Loan_Amount) FROM Loans) AS Total_Loans,
(SELECT COUNT(*) FROM Employees) AS Total_Employees;


#--------------------------------------------------------------------------------------------------------------------------------------
