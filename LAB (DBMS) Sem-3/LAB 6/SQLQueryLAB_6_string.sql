--LAB 6
--STRING FUNCTION
--PART A


CREATE TABLE Emp_Master
(
	EmpNo INT,
	EmpName	VARCHAR(50),
	JoiningDate	DATETIME,
	Salary DECIMAL(8,2),
	Commison INT,
	City VARCHAR(25),
	DeptCode VARCHAR(25)
)

INSERT INTO Emp_Master
VALUES
(101, 'Keyur', '5-JAN-02', 12000.00, 4500, 'Rajkot', '3@g'),
(102, 'Hardik', '15-FEB-04', 14000.00, 2500, 'Ahmedabad','3@'),
(103, 'Kajal', '14-MAR-06', 15000.00, 3000, 'Baroda', '3-GD'),
(104, 'Bhoomi', '23-JUN-05', 12500.00, 1000, 'Ahmedabad', '1A3D'),
(102, 'Harmit', '15-FEB-04', 14000.00, 2000,'Rajkot', '312A')

--1.
	SELECT LEN(NULL),LEN('   hello     '),LEN('')

--2.
	SELECT LOWER('Kevin'),UPPER('Kevin')

--3.
	SELECT LEFT('Kevin',3)

--4.
	SELECT SUBSTRING('Darshan University',3,10)

--5.
	SELECT REPLACE('abc123efg',123,'XYZ'),REPLACE('abcabcabc','c',5)

--6.
	SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII(0),ASCII(9)

--7.
	SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)

--8.
	SELECT LTRIM('hello world		')

--9.
	SELECT RTRIM('	hello world		')

--10.
	SELECT LEFT('SQL Server',4),RIGHT('SQL Server',5)

--11.
	SELECT CONVERT(VARCHAR(25),1234.56),CAST(1234.56 AS VARCHAR(25))

--12.
	SELECT CONVERT(INT,10.58),CAST(10.58 AS INT)

--13.
	SELECT SPACE(10)+'Darshan'

--14.
	SELECT 'Darshan'+'University',CONCAT('Darshan','University')

--15.
	SELECT REVERSE('Darshan')

--16.
	SELECT REPLICATE('Darshan',3)

-------------------------------------------------------------------------------------------------------------------

--PART-B

--1.
	SELECT LEN(FirstName),LEN(LastName) FROM Student

--2.
	SELECT LOWER(FirstName),UPPER(FirstName) FROM Student
	SELECT LOWER(LastName),UPPER(LastName) FROM Student

--3.
	SELECT LEFT(FirstName,3) FROM Student

--4.
	SELECT SUBSTRING(Website,3,10) FROM Student

--5.
	SELECT LEFT(Website,4),RIGHT(Website,5) FROM Student

--PART-C

--1.
	SELECT SPACE(10)+FirstName FROM Student

--2.
	SELECT FirstName+LastName FROM Student	
	SELECT CONCAT(FirstName,LastName) FROM Student

--3.
	SELECT CAST(StuID AS VARCHAR(25))+FirstName+LastName+Website+City+Address FROM Student
	SELECT CONCAT(CAST(StuID AS VARCHAR(25)),FirstName,LastName,Website,City,Address) FROM Student
	
--4.
	SELECT REVERSE(FirstName) FROM Student

--5.
	SELECT REPLICATE(FirstName,3) FROM Student
	
--6.
	SELECT FirstName FROM Student
	WHERE LEN(FirstName) = 5

--7.
	SELECT FirstName+' Lives in '+City  FROM Student

--8.
	SELECT FirstName+' is '+CAST(StuID AS VARCHAR(25)) FROM Student