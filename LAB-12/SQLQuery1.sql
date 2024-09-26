create database CSE_139--Complex Joins --




CREATE TABLE Dept (
    DepartmentID INT ,
    DepartmentName VARCHAR(100),
    DepartmentCode VARCHAR(50) ,
    Location VARCHAR(50) 
);

CREATE TABLE Person (
    PersonID INT,
    PersonName VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(8, 2) ,
    JoiningDate DATETIME ,
    City VARCHAR(100) ,
  
);

INSERT INTO Dept (DepartmentID, DepartmentName, DepartmentCode, Location) VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'CI', 'G-Block'),
(4, 'Electrical', 'EE', 'E-Block'),
(5, 'Mechanical', 'ME', 'B-Block');

INSERT INTO Person (PersonID, PersonName, Salary, JoiningDate, City,DepartmentID) VALUES
(101, 'Rahul Tripathi', 56000, '2000-01-01', 'Rajkot' ,2),
(102, 'Hardik Pandya', 18000, '2001-09-25', 'Ahmedabad', 3),
(103, 'Bhavin Kanani', 25000, '2000-05-14', 'Baroda', 4),
(104, 'Bhoomi Vaishnav', 39000, '2005-02-08', 'Rajkot', 1),
(105, 'Rohit Topiya', 17000, '2001-07-23', 'Jamnagar', 2),
(106, 'Priya Menpara', 9000, '2000-10-18', 'Ahmedabad', NULL),
(107, 'Neha Sharma', 34000, '2002-12-25', 'Rajkot', 2),
(108, 'Nayan Goswami', 25000, '2001-07-01', 'Rajkot', 3),
(109, 'Mehul Bhundiya', 13500, '2005-01-09', 'Baroda', 4),
(110, 'Mohit Maru', 14000, '2000-05-25', 'Jamnagar', 5);

--Part – A:
--1. Find all persons with their department name & code.
 SELECT DEPT.DepartmentName,DEPT.DepartmentCode,PERSON.PersonName
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID

--2. Find the person's name whose department is in C-Block.
 SELECT DEPT.Location,PERSON.PersonName
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 WHERE DEPT.Location='C-Block'

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
 SELECT DEPT.DepartmentName,PERSON.PersonName,PERSON.Salary,PERSON.City
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 WHERE PERSON.City='Jamnagar'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
 SELECT DEPT.DepartmentName,PERSON.PersonName,PERSON.Salary,PERSON.City
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 WHERE PERSON.City!='Rajkot'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
 SELECT DEPT.DepartmentName,PERSON.PersonName,PERSON.JoiningDate
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 WHERE PERSON.JoiningDate>'2001-08-01' and DEPT.DepartmentName='Civil'

--6. Find details of all persons who belong to the computer department.
 SELECT DEPT.DepartmentName,PERSON.PersonName
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 WHERE DEPT.DepartmentName='Computer'

--7. Display all the person's name with the department whose joining date difference with the current date
--is more than 365 days.
 SELECT DEPT.DepartmentName,PERSON.PersonName,PERSON.JoiningDate
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 WHERE GETDATE()-PERSON.JoiningDate>365

--8. Find department wise person counts.
 SELECT DEPT.DepartmentName,COUNT(PERSON.PersonID)
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 GROUP BY DEPT.DepartmentName

--9. Give department wise maximum & minimum salary with department name.
 SELECT DEPT.DepartmentName,MAX(PERSON.Salary),MIN(PERSON.Salary)
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 GROUP BY DEPT.DepartmentName

--10. Find city wise total, average, maximum and minimum salary.
 SELECT MAX(PERSON.Salary),MIN(PERSON.Salary),AVG(PERSON.Salary),SUM(PERSON.Salary),PERSON.City
 FROM DEPT INNER JOIN PERSON ON 
 DEPT.DepartmentID=PERSON.DepartmentID
 GROUP BY PERSON.City

--11. Find the average salary of a person who belongs to Ahmedabad city.
SELECT AVG(PERSON.Salary),PERSON.City
FROM DEPT INNER JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID
GROUP BY PERSON.City
HAVING PERSON.City='Ahmedabad'

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In
--single column)
SELECT CONCAT(PERSON.PersonName,' lives in ',PERSON.City,' and works in ',DEPT.DepartmentName,'Department.')
FROM DEPT INNER JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID

--Part – B:
--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In
--single column)
SELECT CONCAT(PERSON.PersonName,' earns ',PERSON.Salary,' from ',DEPT.DepartmentName,'department monthly.')
FROM DEPT INNER JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID

--2. Find city & department wise total, average & maximum salaries.
SELECT MAX(PERSON.Salary),AVG(PERSON.Salary),SUM(PERSON.Salary),PERSON.City,DEPT.DepartmentName
FROM DEPT INNER JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID
GROUP BY PERSON.City,DEPT.DepartmentName

--3. Find all persons who do not belong to any department.
SELECT PERSON.PersonName,DEPT.DepartmentName
FROM DEPT RIGHT JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID
WHERE PERSON.DepartmentID IS NULL

--4. Find all departments whose total salary is exceeding 100000.
SELECT SUM(PERSON.Salary),DEPT.DepartmentName
FROM DEPT INNER JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID
GROUP BY DEPT.DepartmentName
HAVING SUM(PERSON.Salary)>100000

--Part – C:
--1. List all departments who have no person.
SELECT PERSON.PersonName,DEPT.DepartmentName
FROM DEPT LEFT JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID
WHERE PERSON.PersonID IS NULL

--2. List out department names in which more than two persons are working.
SELECT DEPT.DepartmentName,COUNT(PERSON.PersonID)
FROM DEPT INNER JOIN PERSON ON 
DEPT.DepartmentID=PERSON.DepartmentID
GROUP BY DEPT.DepartmentName
HAVING COUNT(PERSON.PersonID)>2

--3. Give a 10% increment in the computer department employee’s salary. (Use Update )
UPDATE PERSON
SET Salary=Salary*1.1
WHERE DepartmentID=
(
SELECT DepartmentID
FROM DEPT
WHERE DepartmentName='Computer'
)
