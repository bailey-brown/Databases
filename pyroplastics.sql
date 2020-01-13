
DROP DATABASE IF EXISTS PYROPLASTICS;
CREATE DATABASE PYROPLASTICS;
USE PYROPLASTICS;


CREATE TABLE EMPLOYEE (
  SSN varchar(9) NOT NULL,
  Fname varchar(25) NOT NULL,
  Minit char NOT NULL,
  Lname varchar(25) NOT NULL,
  Email varchar(25) NOT NULL,
  PhoneNum varchar(10) NOT NULL,
  Address varchar(100) NOT NULL,
  Gender char NOT NULL,
  DeptID varchar(10) NOT NULL,
  Salary int NOT NULL
);

insert into EMPLOYEE values('765241945','John','B','Smith','js@gmail.com','8179031633','980 Street Houston, Tx','M','101','60000');
insert into EMPLOYEE values('234569834','Alicia','J','Zeleya','az@gmail.com','2142334468','5631 Rice Houston, Tx','F','102','101000');
insert into EMPLOYEE values('456093421','Ramesh','K','Narayan','rn@gmail.com','9081245678','291 Berry Bellaire, Tx','M','103','120000');
insert into EMPLOYEE values('987345067','Rita','V','Jabbar','rj@gmail.com','8946672346','3321 Castle Spring, Tx','F','104','90000');
insert into EMPLOYEE values('111223333','Ellen','F','Ripley','ellenripley@gmail.com','9990008888','123 Road Spring, Tx','F','101','120000');
insert into EMPLOYEE values('222334444','Rick','D','Deckard','rickdeckard@gmail.com','5556667777','456 Avenue Berry, Tx','M','102','50000');
insert into EMPLOYEE values('333445555','Makoto','M','Kusanagi','majork@gmail.com','4445556666','876 Avenue Spring, Tx','F','103','90000');
insert into EMPLOYEE values('444556666','John','W','Wick','john.wick@gmail.com','111002222','909 Blue Arlington, Tx','M','104','40000');
insert into EMPLOYEE values('765241978','Luke','B','Skywalker','lukeskywalker@gmail.com','8179039090','690 Street Houston, Tx','M','101','60000');
insert into EMPLOYEE values('234569000','Steve','J','Rogers','thecap@gmail.com','2142330909','1234 Rice Houston, Tx','M','102','101000');
insert into EMPLOYEE values('456093555','Jules','K','Winnfield','julesk@gmail.com','3331245678','234 Berry Bellaire, Tx','M','103','120000');
insert into EMPLOYEE values('987345787','Peter','V','Venkman','pvenkman@gmail.com','5556672346','4444 Castle Spring, Tx','M','104','90000');
insert into EMPLOYEE values('111220000','Ash','K','Williams','awilliams@gmail.com','9990007777','987 Road Spring, Tx','M','104','120000');
insert into EMPLOYEE values('222339090','Doc','D','Brown','dbrown@gmail.com','5556665555','0123 Avenue Berry, Tx','M','103','50000');
insert into EMPLOYEE values('333446767','John','L','McLane','johnmclane@gmail.com','4445554444','567 Avenue Spring, Tx','M','102','90000');
insert into EMPLOYEE values('000556666','Harleen','F','Quinzel','hquinzel@gmail.com','1110001111','4444 Blue Arlington, Tx','F','101','40000');


CREATE TABLE DEPARTMENT (
  DeptID varchar(10) NOT NULL,
  Name varchar(25) NOT NULL,
  NoOfEmployees int NOT NULL
);

insert into DEPARTMENT values('101','Sales','4');
insert into DEPARTMENT values('102','Engineering','4');
insert into DEPARTMENT values('103','Logistics','4');
insert into DEPARTMENT values('104','Tech','4');


CREATE TABLE PROJECT (
  ProjectID varchar(10) NOT NULL,
  DeptID varchar(10) NOT NULL,
  ProjName varchar(25) NOT NULL,
  Collaborator varchar(25) NOT NULL
);

insert into PROJECT values('201','101','ProjctW','Waste Management');
insert into PROJECT values('202','102','ProjectX','Recycling Technologies');
insert into PROJECT values('203','103','ProjectY','National Park Service');
insert into PROJECT values('204','104','ProjectZ','Clean Oceans Int');


CREATE TABLE ENGINEER (
  SSN varchar(9) NOT NULL,
  EngType varchar(10) NOT NULL
);

insert into ENGINEER values('234569834', 'Electrical');
insert into ENGINEER values('222334444', 'Mechanical');
insert into ENGINEER values('234569000', 'Petroleum');
insert into ENGINEER values('333446767', 'Petroleum');


CREATE TABLE SALESPERSON (
  SSN varchar(9) NOT NULL
);

insert into SALESPERSON values('765241945');
insert into SALESPERSON values('111223333');
insert into SALESPERSON values('765241978');
insert into SALESPERSON values('000556666');


CREATE TABLE TECHNICIAN (
  SSN varchar(9) NOT NULL
);

insert into TECHNICIAN values('987345067');
insert into TECHNICIAN values('444556666');
insert into TECHNICIAN values('987345787');
insert into TECHNICIAN values('111220000');


CREATE TABLE MATERIALSHANDLER (
  SSN varchar(9) NOT NULL
);

insert into MATERIALSHANDLER values('456093421');
insert into MATERIALSHANDLER values('333445555');
insert into MATERIALSHANDLER values('456093555');
insert into MATERIALSHANDLER values('222339090');


CREATE TABLE MACHINE (
  MachineID varchar(10) NOT NULL,
  OperatingCost int NOT NULL
);

insert into MACHINE values('1234', '10000');
insert into MACHINE values('3456', '5000');
insert into MACHINE values('5678', '2000');
insert into MACHINE values('7890', '10000');


CREATE TABLE OPERATES (
  SSN varchar(9) NOT NULL,
  MachineID varchar(10) NOT NULL
);

insert into OPERATES values('234569834', '1234');
insert into OPERATES values('222334444', '3456');
insert into OPERATES values('234569000', '5678');
insert into OPERATES values('333446767', '7890');


CREATE TABLE SERVICES (
  SSN varchar(9) NOT NULL,
  MachineID varchar(10) NOT NULL
);

insert into SERVICES values('987345067', '1234');
insert into SERVICES values('444556666', '3456');
insert into SERVICES values('987345787', '5678');
insert into SERVICES values('111220000', '7890');


CREATE TABLE PRODUCES (
  MachineID varchar(10) NOT NULL,
  BarrelsProd int NOT NULL
);

insert into PRODUCES values('1234', '1000');
insert into PRODUCES values('3456', '1500');
insert into PRODUCES values('5678', '1000');
insert into PRODUCES values('7890', '1200');


CREATE TABLE TRANSACTIONS (
  TransactionId varchar(10) NOT NULL,
  SSN varchar(9) NOT NULL,
  Amount int NOT NULL,
  Profit int NOT NULL,
  AccountNo varchar(10) NOT NULL
);

insert into TRANSACTIONS values('12345','765241945','100000','60000','99988');
insert into TRANSACTIONS values('12346','111223333','200000','110000','88877');
insert into TRANSACTIONS values('12347','765241978','500000','300000','77766');
insert into TRANSACTIONS values('12348','000556666','700000','400000','66655');


CREATE TABLE ORDERS (
  OrderNum varchar(10) NOT NULL,
  SSN varchar(9) NOT NULL,
  Input_Output char NOT NULL,
  CompanyName varchar(25) NOT NULL,
  DestinationAddr varchar(45) NOT NULL
);

insert into ORDERS values('11111','456093421','I','PyroPlastics','1234 Nedderman Arlington, Tx');
insert into ORDERS values('11112','333445555','I','PyroPlastics','1234 Nedderman Arlington, Tx');
insert into ORDERS values('11113','456093555','O','Exxon','222 Street Los Angeles, Ca');
insert into ORDERS values('11114','222339090','O','Shell','444 Avenue Seattle, Wa');


CREATE TABLE PRODUCTS (
  ProductId varchar(10) NOT NULL,
  CurrentInv int NOT NULL
);

insert into PRODUCTS values('1234','1000');
insert into PRODUCTS values('2345','2000');
insert into PRODUCTS values('3456','2000');
insert into PRODUCTS values('4567','3000');
insert into PRODUCTS values('5678','200');
insert into PRODUCTS values('6789','300');
insert into PRODUCTS values('7890','500');
insert into PRODUCTS values('8901','200');


CREATE TABLE PLASTIC (
  ProductId varchar(10) NOT NULL,
  CurrenetPurPrice int NOT NULL
);

insert into PLASTIC values('1234','2000');
insert into PLASTIC values('2345','2000');
insert into PLASTIC values('3456', '3000');
insert into PLASTIC values('4567', '2500');


CREATE TABLE OIL (
  ProductId varchar(10) NOT NULL,
  CurrentSalePrice int NOT NULL,
  Type varchar(10) NOT NULL
);

insert into OIL values('5678','5000','Crude oil');
insert into OIL values('6789','7000','LY oil');
insert into OIL values('7890', '8000', 'CW oil');
insert into OIL values('8901', '7000', 'TBW oil');



ALTER TABLE EMPLOYEE
  ADD PRIMARY KEY (SSN);

ALTER TABLE ENGINEER
  ADD PRIMARY KEY (SSN);

ALTER TABLE SALESPERSON
  ADD PRIMARY KEY (SSN);
  
 ALTER TABLE TECHNICIAN
  ADD PRIMARY KEY (SSN);
  
ALTER TABLE MATERIALSHANDLER
  ADD PRIMARY KEY (SSN);
  
ALTER TABLE DEPARTMENT
  ADD PRIMARY KEY (DeptID);

ALTER TABLE PROJECT
  ADD PRIMARY KEY (ProjectID);
  
ALTER TABLE MACHINE
  ADD PRIMARY KEY (MachineID);
  
ALTER TABLE OPERATES
  ADD PRIMARY KEY (SSN,MachineID);
  
ALTER TABLE SERVICES
  ADD PRIMARY KEY (SSN, MachineID);
  
ALTER TABLE TRANSACTIONS
  ADD PRIMARY KEY (TransactionID);
  
ALTER TABLE PRODUCES
  ADD PRIMARY KEY (MachineID);
  
ALTER TABLE ORDERS
  ADD PRIMARY KEY (OrderNum);
  
ALTER TABLE PRODUCTS
  ADD PRIMARY KEY (ProductID);
  
ALTER TABLE PLASTIC
  ADD PRIMARY KEY (ProductID);
  
ALTER TABLE OIL
  ADD PRIMARY KEY (ProductID);


ALTER TABLE ENGINEER
  ADD CONSTRAINT EngrSSN FOREIGN KEY (SSN) REFERENCES EMPLOYEE (SSN);

ALTER TABLE SALESPERSON
  ADD CONSTRAINT SP_SSN FOREIGN KEY (SSN) REFERENCES EMPLOYEE (SSN);

ALTER TABLE TECHNICIAN
  ADD CONSTRAINT TechSSN FOREIGN KEY (SSN) REFERENCES EMPLOYEE (SSN);

ALTER TABLE MATERIALSHANDLER
  ADD CONSTRAINT MH_SSN FOREIGN KEY (SSN) REFERENCES EMPLOYEE (SSN);
  
ALTER TABLE PROJECT
  ADD CONSTRAINT ControlsProj FOREIGN KEY (DeptID) REFERENCES DEPARTMENT (DeptID);

ALTER TABLE OPERATES
  ADD CONSTRAINT E_SSN FOREIGN KEY (SSN) REFERENCES ENGINEER (SSN),
  ADD CONSTRAINT O_MID FOREIGN KEY (MachineID) REFERENCES MACHINE (MachineID);

ALTER TABLE SERVICES
  ADD CONSTRAINT T_SSN FOREIGN KEY (SSN) REFERENCES TECHNICIAN (SSN),
  ADD CONSTRAINT S_MID FOREIGN KEY (MachineID) REFERENCES MACHINE (MachineID);

ALTER TABLE PRODUCES
  ADD CONSTRAINT MachID FOREIGN KEY (MachineID) REFERENCES MACHINE (MachineID);

ALTER TABLE PLASTIC 
  ADD CONSTRAINT PlasticProductID FOREIGN KEY (ProductID) REFERENCES PRODUCTS (ProductID);

ALTER TABLE OIL
  ADD CONSTRAINT OilProductID FOREIGN KEY (ProductID) REFERENCES PRODUCTS (ProductID);
COMMIT;

ALTER TABLE TRANSACTIONS
  ADD CONSTRAINT SPT_SSN FOREIGN KEY (SSN) REFERENCES SALESPERSON (SSN);
  
ALTER TABLE ORDERS
  ADD CONSTRAINT MHO_SSN FOREIGN KEY (SSN) REFERENCES MATERIALSHANDLER (SSN);
