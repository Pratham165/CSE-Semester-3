CREATE DATABASE CSE_3B_309

CREATE TABLE BRANCH(
BNAME VARCHAR(50),
CITY VARCHAR(50)
)
INSERT INTO BRANCH(BNAME,CITY) VALUES ('VRCE','NAGPUR')
INSERT INTO BRANCH(BNAME,CITY) VALUES ('AJNI','NAGPUR')
INSERT INTO BRANCH(BNAME,CITY) VALUES ('KAROLBAGH','DELHI')
INSERT INTO BRANCH(BNAME,CITY) VALUES ('CHANDI','DELHI')
INSERT INTO BRANCH(BNAME,CITY) VALUES ('DHARAMPETH','NAGPUR')
INSERT INTO BRANCH(BNAME,CITY) VALUES ('M.G.ROAD','BANGLORE')
INSERT INTO BRANCH(BNAME,CITY) VALUES ('ANDHERI','BOMBAY')
INSERT INTO BRANCH(BNAME,CITY) VALUES ('VIRAR','BOMBAY')
INSERT INTO BRANCH(BNAME,CITY) VALUES ('NEHRU PLACE','DELHI')
INSERT INTO BRANCH(BNAME,CITY) VALUES ('POWAI','BOMBAY')

CREATE TABLE CUSTOMER(
CNAME VARCHAR(50),
CITY VARCHAR(50)
)
INSERT INTO CUSTOMER(CNAME,CITY) VALUES ('ANIL','CALCUTTA')
INSERT INTO CUSTOMER(CNAME,CITY) VALUES ('SUNIL','DELHI')
INSERT INTO CUSTOMER(CNAME,CITY) VALUES ('MEHUL','BARODA')
INSERT INTO CUSTOMER(CNAME,CITY) VALUES ('MANDAR','PATNA')
INSERT INTO CUSTOMER(CNAME,CITY) VALUES ('MADHURI','NAGPUR')
INSERT INTO CUSTOMER(CNAME,CITY) VALUES ('PRAMOD','NAGPUR')
INSERT INTO CUSTOMER(CNAME,CITY) VALUES ('SANDIP','SURAT')
INSERT INTO CUSTOMER(CNAME,CITY) VALUES ('SHIVANI','BOMBAY')
INSERT INTO CUSTOMER(CNAME,CITY) VALUES ('KRANTI','BOMBAY')
INSERT INTO CUSTOMER(CNAME,CITY) VALUES ('NAREN','BOMBAY')

CREATE TABLE BORROW(
LOANNO INT,
CNAME VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2)
)
INSERT INTO BORROW(LOANNO,CNAME,BNAME,AMOUNT) VALUES(201,'ANIL','VRCE',1000.00)
INSERT INTO BORROW(LOANNO,CNAME,BNAME,AMOUNT) VALUES(206,'MEHUL','AJNI',5000.00)
INSERT INTO BORROW(LOANNO,CNAME,BNAME,AMOUNT) VALUES(311,'SUNIL','DHARAMPETH',3000.00)
INSERT INTO BORROW(LOANNO,CNAME,BNAME,AMOUNT) VALUES(321,'MADHURI','ANDHERI',2000.00)
INSERT INTO BORROW(LOANNO,CNAME,BNAME,AMOUNT) VALUES(375,'PRAMOD','VIRAR',8000.00)
INSERT INTO BORROW(LOANNO,CNAME,BNAME,AMOUNT) VALUES(481,'KRANTI','NEHRU PLACE',3000.00)

SELECT * FROM BORROW
SELECT * FROM BRANCH
SELECT * FROM CUSTOMER

CREATE TABLE DEPOSIT(
ACTNO INT,
CNAME VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2),
ADATE DATETIME
)
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES(101,'ANIL','VRCE',1000.00,'01-MAR-95')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES(102,'SUNIL','AJNI',5000.00,'04-JAN-96')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES(103,'MEHUL','KAROLBAGH',3500.00,'17-NOV-95')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES(104,'MADHURI','CHANDI',1200.00,'17-DEC-95')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES(105,'PRAMOD','M.G.ROAD',3000.00,'27-MAR-96')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES(106,'SANDIP','ANDHERI',2000.00,'31-MAR-96')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES(107,'SHIVANI','VIRAR',1000.00,'05-SEP-95')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES(108,'KRANTI','NEHRU PLACE',5000.00,'02-JUL-95')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES(109,'MINU','POWAI',7000.00,'10-AUG-95')

SELECT * FROM DEPOSIT

--4--
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT
--6--
SELECT LOANNO FROM BORROW
WHERE BNAME = 'ANDHERI'
--7--
SELECT ACTNO,AMOUNT FROM DEPOSIT
WHERE ACTNO = 106
--5--
SELECT LOANNO,AMOUNT FROM BORROW
--8--
SELECT CNAME FROM BORROW
WHERE AMOUNT>5000
--9--
SELECT CNAME FROM DEPOSIT
WHERE ADATE>'01-DEC-96'
--10--
SELECT CNAME FROM DEPOSIT
WHERE ACTNO<105
--11--
SELECT CNAME FROM CUSTOMER
WHERE CITY='NAGPUR' OR CITY='DELHI'
--12--
SELECT CNAME FROM DEPOSIT
WHERE AMOUNT>4000 AND ACTNO<105
--13--
SELECT * FROM BORROW
WHERE AMOUNT BETWEEN 3000 AND 8000
--14--
SELECT CNAME FROM DEPOSIT
WHERE BNAME = 'ANDHERI'
--15--
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT
WHERE BNAME IN('AJNI','KAROLBAGH','M.G.ROAD') AND ACTNO<104
CREATE TABLE CRICKET(
NAME VARCHAR(50),
CITY VARCHAR(20),
AGE INT)

INSERT INTO CRICKET VALUES('Sachin Tendulkar','Mumbai',30);
INSERT INTO CRICKET VALUES('Rahul Dravid','Bombay',35);
INSERT INTO CRICKET VALUES('M.S.Dhoni','Jharkhand',31);
INSERT INTO CRICKET VALUES('Suresh Raina','Gujarat',30);

SELECT * INTO WORLDCUP FROM CRICKET;

SELECT NAME,CITY INTO T20 FROM CRICKET
WHERE 1=0

SELECT * INTO IPL FROM CRICKET
WHERE 1=0

CREATE TABLE EMPLOYEE(
NAME VARCHAR(50),
CITY VARCHAR(20),
AGE INT)

INSERT INTO EMPLOYEE VALUES('Jay Patel','Rajkot',30);
INSERT INTO EMPLOYEE VALUES('Rahul Dave','Baroda',35);
INSERT INTO EMPLOYEE VALUES('Jeet Patel','Surat',31);
INSERT INTO EMPLOYEE VALUES('Vijay Raval','Rajkot',30);
SELECT * INTO EMPLOYEE_DETAIL FROM EMPLOYEE
SELECT NAME, CITY INTO EMPLOYEE_DATA FROM EMPLOYEE
WHERE 1=0
SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE
WHERE 1=0

INSERT INTO EMPLOYEE_INFO(NAME,CITY,AGE)
SELECT NAME,CITY,AGE FROM EMPLOYEE
WHERE CITY = 'Rajkot'

INSERT INTO EMPLOYEE_INFO
SELECT NAME,CITY,AGE FROM EMPLOYEE
WHERE AGE>32

UPDATE DEPOSIT
SET AMOUNT=5000 WHERE AMOUNT=3000

UPDATE BORROW
SET BNAME='C.G.ROAD' WHERE CNAME='ANIL'

UPDATE DEPOSIT
SET ACTNO=111,AMOUNT=5000 WHERE CNAME='SANDIP'

UPDATE DEPOSIT
SET AMOUNT=7000 WHERE CNAME='KRANTI'

UPDATE BRANCH
SET BNAME='ANDHERI WEST' WHERE BNAME='ANDHERI'

UPDATE DEPOSIT
SET BNAME='NEHRU PLACE' WHERE CNAME='MEHUL'

UPDATE DEPOSIT
SET AMOUNT=5000
WHERE ACTNO>=103 AND ACTNO<=107

UPDATE DEPOSIT
SET ADATE='01-APR-95' WHERE CNAME='ANIL'

UPDATE DEPOSIT
SET AMOUNT=10000 WHERE CNAME='MINU'

UPDATE DEPOSIT
SET AMOUNT=5000,ADATE='01-APR-95'
WHERE CNAME='PRAMOD'

UPDATE BORROW
SET AMOUNT = (AMOUNT*0.1)+AMOUNT

UPDATE DEPOSIT
SET AMOUNT = (AMOUNT*0.2)+AMOUNT

UPDATE BORROW
SET AMOUNT=null WHERE LOANNO=321 

UPDATE BORROW
SET BNAME=NULL WHERE CNAME='KRANTI'

SELECT CNAME FROM BORROW
WHERE AMOUNT IS NULL

--Lab4
--1--
ALTER TABLE DEPOSIT
ADD CITY VARCHAR(20),PINCODE INT
--2--
ALTER TABLE DEPOSIT ALTER COLUMN CNAME VARCHAR(35)
--3--
ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT
--4--
EXEC sp_rename 'DEPOSIT.ACTNO','ANO'
--5--
ALTER TABLE DEPOSIT
DROP COLUMN CITY
--6--
EXEC sp_rename 'DEPOSIT', 'DEPOSIT_DETAIL'
--PART-B--
--1--
exec sp_rename 'DEPOSIT_DETAIL.ADATE','AOPENDATE'
--2--
ALTER TABLE	DEPOSIT_DETAIL
DROP COLUMN AOPENDATE
--3--
EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME','CustomerName'
--Part-C
CREATE TABLE STUDENT_DETAIL(
ENROLLMENT_NO VARCHAR(20),
NAME VARCHAR(25),
CPI DECIMAL(5,2),
BIRTHDATE DATETIME)

--1--
ALTER TABLE STUDENT_DETAIL
ADD CITY VARCHAR(20) NOT NULL,BACKLOG INT
--2--
ALTER TABLE STUDENT_DETAIL ALTER COLUMN NAME VARCHAR(35)
--3--
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN CPI INT
--4--
EXEC SP_RENAME 'STUDENT_DETAIL.ENROLLMENT_NO','ENO'
--5--
ALTER TABLE STUDENT_DETAIL
DROP COLUMN CITY
--6--
EXEC SP_RENAME 'STUDENT_DETAIL','STUDENT_MASTER'

--DELETE,TRUNCATE,DROP
--PART-A
--1--
DELETE FROM DEPOSIT_DETAIL
WHERE AMOUNT>=4000
--2--
DELETE FROM DEPOSIT_DETAIL
WHERE BNAME='CHANDI'
--3--
DELETE FROM DEPOSIT_DETAIL
WHERE ANO>105
--4--
TRUNCATE TABLE DEPOSIT_DETAIL
--5--
DROP TABLE DEPOSIT_DETAIL
--PART-B--
CREATE TABLE EMPLOYEE_MASTER(
EMP_NO INT,
EMP_NAME VARCHAR(25),
JOINING_DATE DATETIME,
SALARY DECIMAL(8,2),
CITY VARCHAR(20))
SELECT * FROM EMPLOYEE_MASTER
INSERT INTO EMPLOYEE_MASTER VALUES(102,'HARDIK','15-FEB-04',14000.00,'AHMEDABAD')
INSERT INTO EMPLOYEE_MASTER VALUES(103,'KAJAL','14-MAR-06',15000.00,'BARODA')
INSERT INTO EMPLOYEE_MASTER VALUES(104,'BHOOMI','23-JUN-05',12500.00,'AHMEDABAD')
INSERT INTO EMPLOYEE_MASTER VALUES(105,'HARMIT','15-FEB-04',14000.00,'RAJKOT')
INSERT INTO EMPLOYEE_MASTER VALUES(106,'MITESH','25-SEP-01',5000.00,'JAMNAGAR')
INSERT INTO EMPLOYEE_MASTER VALUES(107,'MEERA',NULL,7000.00,'MORBI')
INSERT INTO EMPLOYEE_MASTER VALUES(108,'KISHAN','06-FEB-03',10000.00,NULL)	

--Lab-5--
CREATE TABLE STUDENT(
STUID INT,
FirstName VARCHAR(25),
LastName VARCHAR(25),
Website VARCHAR(50),
City VARCHAR(25),
Address VARCHAR(100)
)

INSERT INTO STUDENT VALUES(1011,'Keyur','Patel','technothenet.com','Rajkot','A-303 ''Vasant kunj'',Rajkot')
INSERT INTO STUDENT VALUES(1022,'Hardik','Shah','digiminecraft.com','Ahmedabad','"Ram Krupa",Raiya Road')
INSERT INTO STUDENT VALUES(1033,'Kajal','Trivedi','bigactivites.com','Baroda','Raj bhavan plot,near garden')
INSERT INTO STUDENT VALUES(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','"Jigs''s Home",Narol')
INSERT INTO STUDENT VALUES(1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55,Raj Residency')
INSERT INTO STUDENT VALUES(1066,'Ashok','Jani',NULL,'Baroda','A502,Club House Building')
--Display the name of students whose name starts with �k�--
SELECT FirstName FROM STUDENT
WHERE FirstName LIKE 'K%'
--Display the name of students whose name consists of five characters--
SELECT FirstName FROM STUDENT
WHERE FirstName LIKE '_____'
--Retrieve the first name & last name of students whose city name ends with a & contains six characters--
SELECT FirstName,LastName FROM STUDENT
WHERE CITY LIKE '_____A'
--Display all the students whose last name ends with �tel�--
SELECT * FROM STUDENT
WHERE LastName LIKE '%TEL'
--Display all the students whose first name starts with �ha� & ends with�t�--
SELECT * FROM STUDENT
WHERE FirstName LIKE 'HA%T'
--Display all the students whose first name starts with �k� and third character is �y�--
SELECT * FROM STUDENT
WHERE FirstName LIKE 'K_Y%'
--Display the name of students having no website and name consists of five characters--
SELECT * FROM STUDENT
WHERE Website IS NULL AND FirstName LIKE '_____'
--Display all the students whose last name consist of �jer�--
SELECT * FROM STUDENT
WHERE LastName LIKE '%JER%'
--Display all the students whose city name starts with either �r� or �b�--
SELECT * FROM STUDENT
WHERE City LIKE 'r%' OR City LIKE 'b%'
--Display all the name students having websites--
SELECT * FROM STUDENT
WHERE Website LIKE '%'
--Display all the students whose name starts from alphabet A to H--
SELECT * FROM STUDENT
WHERE FirstName LIKE '[A-H]%'
--Display all the students whose name�s second character is vowel--
SELECT * FROM STUDENT
WHERE FirstName LIKE '_[A,E,I,O,U]%'
-- Display the name of students having no website and name consists of minimum five characters--
SELECT * FROM STUDENT
WHERE Website IS NULL AND FirstName LIKE '_____%'
--Display all the students whose last name starts with �Pat�--
SELECT * FROM STUDENT
WHERE LastName LIKE 'PAT%'
--Display all the students whose city name does not starts with �b�--
SELECT * FROM STUDENT
WHERE CITY LIKE '[A,C-Z]%'
--part-b--
--Display all the students whose name starts from alphabet A or H--
SELECT * FROM STUDENT
WHERE FirstName LIKE '[A-H]%'
--Display all the students whose name�s second character is vowel and of and start with H--
SELECT * FROM STUDENT
WHERE FirstName LIKE '_H%'
--Display all the students whose last name does not ends with �a�--
SELECT * FROM STUDENT
WHERE LastName NOT LIKE '%a'
--Display all the students whose first name starts with consonant--
SELECT * FROM STUDENT
WHERE FirstName NOT LIKE '[A,E,I,O,U]%'
--Display all the students whose website contains .net--
SELECT * FROM STUDENT
WHERE WEBSITE LIKE '%.NET%'
--PART-C--
--Display all the students whose address consist of ---
SELECT * FROM STUDENT 
WHERE Address LIKE '%-%'
--Display all the students whose address contains single quote or double quote--
SELECT * FROM STUDENT
WHERE Address LIKE '%''%'
--Display all the students whose website contains @--
SELECT * FROM STUDENT
WHERE Website LIKE '%@%'
--Display all the names those are either four or five characters--
SELECT * FROM STUDENT
WHERE FirstName LIKE '____' OR FirstName LIKE '_____'