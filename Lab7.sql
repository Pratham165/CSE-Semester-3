USE CSE_3B_309
CREATE TABLE EMP(
EID INT,
EName VARCHAR(25),
Department VARCHAR(50),
Salary INT,
JoinigDate DATETIME,	
City VARCHAR(25)
)
INSERT INTO EMP VALUES(101,'Rahul','Admin', 56000, '1-Jan-90','Rajkot')
INSERT INTO EMP VALUES(102,'Hardik','IT', 18000, '25-Sep-90','Ahmedabad ')
INSERT INTO EMP VALUES(103,'Bhavin','HR', 25000, '14-May-91','Baroda ')
INSERT INTO EMP VALUES(104,'Bhoomi','Admin', 39000, '8-Feb-91','Rajkot ')
INSERT INTO EMP VALUES(105,'Rohit','IT', 17000, '23-Jul-90','Jamnagar')
INSERT INTO EMP VALUES(106,'Priya','IT',9000, '18-Oct-90','Ahmedabad')
INSERT INTO EMP VALUES(107,'Bhoomi','HR', 34000, '25-Dec-91','Rajkot ')

--Lab-7--
--1--Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(Salary) AS Maximum FROM EMP
SELECT MIN(SALARY) AS Minimum FROM EMP
--2--Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, 
--respectively--
SELECT AVG(SALARY) AS Total_Sal,AVG(SALARY) AS AVERAGE_SAL FROM EMP
--3--Find total number of employees of EMPLOYEE table
SELECT COUNT(EID) AS CI FROM EMP
--4--Find highest salary from Rajkot city
SELECT MAX(SALARY) AS MSAL FROM EMP
WHERE City = ' RAJKOT'
--5--Give maximum salary from IT department
SELECT MAX(SALARY) AS MAXsal FROM EMP
WHERE Department = 'IT'
--6--Count employee whose joining date is after 8-feb-91
SELECT COUNT(ENAME) AS CNS1 FROM EMP
WHERE JoinigDate>'8-FEB-91'
--7--Display average salary of Admin department
SELECT AVG(SALARY) AS avg_SAL FROM EMP
WHERE Department = 'ADMIN'
--8--Display total salary of HR department
SELECT SUM(SALARY) AS TOTAL_SAL
FROM EMP WHERE Department='ADMIN'
--9--Count total number of cities of employee without duplication
SELECT COUNT(DISTINCT CITY) AS dCITY FROM EMP
--10--Count unique departments
SELECT COUNT(DISTINCT Department) AS dDEPT FROM EMP
--11--Give minimum salary of employee who belongs to Ahmedabad.
select MIN(salary) as mn from EMP
where City = 'Ahmedabad'
--12-- Find city wise highest salary.
select max(salary) from EMP
group by City
--13-- Find department wise lowest salary
select min(salary) from EMP
group by Department
--14--Display city with the total number of employees belonging to each city
select count(eid),city from EMP
group by City
--15-- Give total salary of each department of EMP table
select sum(salary),department from EMP
group by Department
--16--Give average salary of each department of EMP table without displaying the respective department 
--name
select AVG(salary) from EMP
group by Department