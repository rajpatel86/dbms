--LAB-7

--CREATE NEW TABLE EMP

CREATE TABLE EMP(
EID INT,
ENAME VARCHAR(50),
DEPARTMENT VARCHAR(35),
SALARY INT,
JOININGDATE	DATETIME,
CITY VARCHAR(50))
ALTER TABLE EMP ALTER COLUMN SALARY DECIMAL(8,2)
ALTER TABLE EMP ALTER COLUMN JOININGDATE DATE

INSERT INTO EMP VALUES
(101,'Rahul','Admin',56000,'1990-01-01','Rajkot'),
(102,'Hardik','IT',18000,'1990-09-25','Ahmedabad'),
(103,'Bhavin','HR',25000,'1991-05-14','Baroda'),
(104,'Bhoomi','Admin',39000,'1991-02-08','Rajkot'),
(105,'Rohit','IT',17000,'1990-07-13','Jamnagar'),
(106,'Priya','IT',9000,'1990-10-18','Ahmedabad'),
(107, 'Bhoomi','HR',34000,'1991-12-25','Rajkot')

SELECT * FROM EMP

----PART-A
--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAXIMUM,MIN(SALARY) AS MINIMUM FROM EMP
--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,respectively.
SELECT AVG(SALARY) AS AVERAGE_SAL,SUM(SALARY) AS TOTAL_SAL FROM EMP
--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(ENAME) AS TOTAL_EMP FROM EMP
--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) AS HIGHEST_SALARY_IN_RAJKOT FROM EMP WHERE CITY='Rajkot'
--5. Give maximum salary from IT department.
SELECT MAX(SALARY)FROM EMP WHERE DEPARTMENT='IT'
--6. Count employee whose joining date is after 8-feb-91.
SELECT MAX(ENAME)FROM EMP WHERE JOININGDATE>'1991-02-08'
--7. Display average salary of Admin department.
SELECT AVG(SALARY) FROM EMP WHERE DEPARTMENT='ADMIN'
--8. Display total salary of HR department.
SELECT SUM(SALARY)FROM EMP WHERE DEPARTMENT='HR'
--9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT(CITY)) FROM EMP
--10. Count unique departments.
SELECT COUNT(DISTINCT(DEPARTMENT)) FROM EMP
--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) FROM EMP WHERE CITY='AHMEDABAD'
--12. Find city wise highest salary.
SELECT MAX(SALARY),CITY FROM EMP GROUP BY CITY
--13. Find department wise lowest salary.
SELECT MIN(SALARY),DEPARTMENT FROM EMP GROUP BY DEPARTMENT
--14. Display city with the total number of employees belonging to each city.
SELECT COUNT(ENAME),CITY FROM EMP GROUP BY CITY
--15. Give total salary of each department of EMP table.
SELECT SUM(SALARY) AS TOTAL_SALARY,DEPARTMENT FROM EMP GROUP BY DEPARTMENT
--16. Give average salary of each department of EMP table without displaying the respective departmentname.
SELECT AVG(SALARY) AS AVERAGE_SAL,DEPARTMENT FROM EMP GROUP BY DEPARTMENT


--PART-B
--1. Count the number of employees living in Rajkot.
SELECT COUNT(ENAME) AS EMP_FROM_RAJKOT FROM EMP WHERE CITY='RAJKOT'
--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT (MAX(SALARY)-MIN(SALARY)) AS DIFFERENCE FROM EMP
--3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(ENAME) AS hired_before_1st_January_1991 FROM EMP WHERE JOININGDATE<'1991-01-01'


--PART-C
--1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(ENAME) AS EMP_FROM_BARODA FROM EMP WHERE CITY='BARODA'
--2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(ENAME) AS EMP_FROM_DEPARTMENT_Hired_Before1stJanuary FROM EMP WHERE DEPARTMENT='IT' AND JOININGDATE<'1991-01-01'
--3. Find the Joining Date wise Total Salaries.
SELECT SUM(SALARY) AS JOINING_DATEWISE_TOTAL_SALARY,JOININGDATE FROM EMP GROUP BY JOININGDATE
--4. Find the Maximum salary department & city wise in which city name starts with �R�.
SELECT MAX(SALARY) AS MAXIMUM_SALARY,DEPARTMENT,CITY AS Maximum_salary_department_AND_citywise  FROM EMP WHERE CITY LIKE 'R%' GROUP BY DEPARTMENT,CITY


--FIND DEPARTMENT WISE HIGHEST PAID EMP NAME WITHOUT HAVING
SELECT DEPARTMENT,ENAME AS HIGHEST_PAID_EMPLOYEE,SALARY AS HIGHEST_SALARY FROM EMP WHERE SALARY IN( SELECT MAX(SALARY) FROM EMP GROUP BY DEPARTMENT)