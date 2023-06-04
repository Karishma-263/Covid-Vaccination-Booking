CREATE TABLE registration ( userID varchar(255),
firstname varchar(255),
lastname varchar(255),
age varchar(255),
email varchar(255),
password varchar(255),
role varchar(255),
gender varchar(255),
phonenumber varchar(255),
fulladdress varchar(255),
createddate datetime);


CREATE TABLE vaccinecenter ( centerID varchar(255),
vaccinename varchar(255),
vaccinecenter varchar(255),
Dosage int,
city varchar(255),
state varchar(255),
pincode varchar(255),
address varchar(255),
createddate datetime,
totalslots varchar(255));

CREATE TABLE dailydosage ( dosageID varchar(255),
CenterID varchar(255),
userID varchar(255),
DosageDate datetime)