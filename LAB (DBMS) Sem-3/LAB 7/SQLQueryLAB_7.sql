-- LAB 7 Perform SQL queries for Aggerate function and group by (without having) 
CREATE TABLE EMP(

	EID INT,
	ENAME VARCHAR(50),
	DEPARTMENT VARCHAR(50),
	SALARY DECIMAL(8,2),
	JOININGDATE DATE,
	CITY VARCHAR(50),
);
INSERT INTO EMP (EID,ENAME,DEPARTMENT,SALARY,JOININGDATE,CITY) VALUES (101,'RAHUL','ADMIN',56000,'1990-01-01','RAJKOT');
INSERT INTO EMP (EID,ENAME,DEPARTMENT,SALARY,JOININGDATE,CITY) VALUES (102,'HARDIK','IT',18000,'1990-09-25','AHEMDABAD');
INSERT INTO EMP (EID,ENAME,DEPARTMENT,SALARY,JOININGDATE,CITY) VALUES (103,'BHAVIN','HR',25000,'1991-05-14','BARODA');
INSERT INTO EMP (EID,ENAME,DEPARTMENT,SALARY,JOININGDATE,CITY) VALUES (104,'BHOOMI','ADMIN',39000,'1991-02-8','RAJKOT');
INSERT INTO EMP (EID,ENAME,DEPARTMENT,SALARY,JOININGDATE,CITY) VALUES (105,'ROHIT','IT',17000,'1990-07-23','JAMNAGAR');
INSERT INTO EMP (EID,ENAME,DEPARTMENT,SALARY,JOININGDATE,CITY) VALUES (106,'PRIYA','IT',9000,'1990-08-18','AHEMDABAD');
INSERT INTO EMP (EID,ENAME,DEPARTMENT,SALARY,JOININGDATE,CITY) VALUES (107,'BHOOMI','HR',34000,'1991-12-25','RAJKOT');

SELECT * FROM EMP


--PART  A
--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.

SELECT MAX(SALARY) AS MAX_SALARY,MIN(SALARY) AS MIN_SALARY FROM EMP 

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,respectively.

SELECT COUNT(SALARY) AS TOTAL_SALARY,AVG(SALARY) AS AVG_SALARY FROM EMP 

--3. Find total number of employees of EMPLOYEE table.

SELECT COUNT(EID) FROM EMP

--4. Find highest salary from Rajkot city.

SELECT MAX(SALARY)FROM EMP WHERE CITY='RAJKOT'

--5. Give maximum salary from IT department.

SELECT MAX(SALARY)FROM EMP WHERE DEPARTMENT='IT'

--6. Count employee whose joining date is after 8-feb-91.

SELECT COUNT(ENAME) FROM EMP WHERE JOININGDATE='1991-02-08'

--7. Display average salary of Admin department.

SELECT AVG(SALARY) FROM EMP WHERE DEPARTMENT='ADMIN'

--8. Display total salary of HR department.

SELECT SUM(SALARY) FROM EMP WHERE DEPARTMENT='HR'

--9. Count total number of cities of employee without duplication.

SELECT COUNT(DISTINCT CITY) FROM EMP 

--10. Count unique departments.

SELECT COUNT(DISTINCT DEPARTMENT) FROM EMP 

--11. Give minimum salary of employee who belongs to Ahmedabad.

SELECT MIN(SALARY) FROM EMP WHERE CITY='AHEMDABAD'

--12. Find city wise highest salary.

SELECT MAX(SALARY) FROM EMP GROUP BY CITY

--13. Find department wise lowest salary.

SELECT MIN(SALARY) FROM EMP GROUP BY DEPARTMENT

--14. Display city with the total number of employees belonging to each city.

SELECT COUNT(ENAME),CITY FROM EMP GROUP BY CITY

--15. Give total salary of each department of EMP table.

SELECT SUM(SALARY),DEPARTMENT FROM EMP GROUP BY DEPARTMENT

--16. Give average salary of each department of EMP table without displaying the respective department name.

SELECT AVG(SALARY),DEPARTMENT FROM EMP GROUP BY DEPARTMENT

--PART B
--1. Count the number of employees living in Rajkot.

SELECT COUNT(EID) FROM EMP WHERE CITY='RAJKOT'

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.

SELECT MAX(SALARY)- MIN(SALARY) AS DIFFERENCE FROM EMP

--3. Display the total number of employees hired before 1st January, 1991.

SELECT COUNT(EID) FROM EMP WHERE JOININGDATE<'1991-01-01'

--Part – C:
--1. Count the number of employees living in Rajkot or Baroda.

SELECT COUNT(ENAME) FROM EMP WHERE CITY='RAJKOT' OR CITY='BARODA'

--2. Display the total number of employees hired before 1st January, 1991 in IT department.

SELECT COUNT(ENAME) FROM EMP WHERE DEPARTMENT='IT' AND JOININGDATE<'1991-01-01'

--3. Find the Joining Date wise Total Salaries.

SELECT COUNT(SALARY),JOININGDATE FROM EMP GROUP BY JOININGDATE

--4. Find the Maximum salary department & city wise in which city name starts with 'R'.

SELECT MAX(SALARY),DEPARTMENT,CITY FROM EMP GROUP BY DEPARTMENT,CITY