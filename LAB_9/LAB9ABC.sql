-- Create STUDENT_DATA table
CREATE TABLE STUDENT_DATA (
    Rno INT,
    Name VARCHAR(50),
    City VARCHAR(50),
    DID INT
);

-- Insert data into STUDENT_DATA table
INSERT INTO STUDENT_DATA (Rno, Name, City, DID) VALUES
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

-- Create ACADEMIC table
CREATE TABLE ACADEMIC (
    Rno INT,
    SPI DECIMAL(3, 1),
    Bklog INT
);

-- Insert data into ACADEMIC table
INSERT INTO ACADEMIC (Rno, SPI, Bklog) VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

-- Create DEPARTMENT table
CREATE TABLE DEPARTMENT (
    DID INT,
    DName VARCHAR(50)
);

-- Insert data into DEPARTMENT table
INSERT INTO DEPARTMENT (DID, DName) VALUES
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');


-- Part A:

-- 1. Display details of students who are from the Computer department.
-- Subquery gets the department IDs of 'Computer' and outer query retrieves student details for these departments.
SELECT *
FROM STUDENT_DATA
WHERE DID IN (
    SELECT DID
    FROM DEPARTMENT
    WHERE DName = 'Computer'
);

-- 2. Display names of students whose SPI is more than 8.
-- Subquery gets the student numbers with SPI > 8, and outer query retrieves their names.
SELECT Name
FROM STUDENT_DATA
WHERE Rno IN (
    SELECT Rno
    FROM ACADEMIC
    WHERE SPI > 8
);

-- 3. Display details of students from the Computer department who belong to Rajkot city.
-- Subquery gets the department IDs for 'Computer' and the outer query gets students from those departments and Rajkot city.
SELECT *
FROM STUDENT_DATA
WHERE DID IN (
    SELECT DID
    FROM DEPARTMENT
    WHERE DName = 'Computer'
)
AND City = 'Rajkot';

-- 4. Find the total number of students in the Electrical department.
-- Subquery retrieves department IDs for 'Electrical' and the outer query counts the students in those departments.
SELECT COUNT(*)
FROM STUDENT_DATA
WHERE DID IN (
    SELECT DID
    FROM DEPARTMENT
    WHERE DName = 'Electrical'
);

-- 5. Display the name of the student who has the maximum SPI.
-- Subquery finds the maximum SPI and outer query retrieves the name of the student with that SPI.
SELECT Name
FROM STUDENT_DATA
WHERE Rno = (
    SELECT Rno
    FROM ACADEMIC
    WHERE SPI = (SELECT MAX(SPI) FROM ACADEMIC)
);

-- 6. Display details of students having more than 1 backlog.
-- Subquery retrieves student numbers with backlog > 1 and outer query retrieves details of these students.
SELECT *
FROM STUDENT_DATA
WHERE Rno IN (
    SELECT Rno
    FROM ACADEMIC
    WHERE Bklog > 1
);

-- Part B:

-- 1. Display names of students who are either from Computer department or from Mechanical department.
-- Subquery retrieves department IDs for 'Computer' or 'Mechanical' and outer query gets students from these departments.
SELECT Name
FROM STUDENT_DATA
WHERE DID IN (
    SELECT DID
    FROM DEPARTMENT
    WHERE DName = 'Computer'
    OR DName = 'Mechanical'
);

-- 2. Display names of students who are in the same department as student 102.
-- Subquery gets department ID of student 102 and outer query retrieves names of students from that department.
SELECT Name
FROM STUDENT_DATA
WHERE DID = (
    SELECT DID
    FROM STUDENT_DATA
    WHERE Rno = 102
);

-- Part C:

-- 1. Display names of students whose SPI is more than 9 and who are from the Electrical department.
-- Subquery retrieves student numbers with SPI > 9 and belongs to 'Electrical' department.
SELECT Name
FROM STUDENT_DATA
WHERE Rno IN (
    SELECT Rno
    FROM ACADEMIC
    WHERE SPI > 9
)
AND DID IN (
    SELECT DID
    FROM DEPARTMENT
    WHERE DName = 'Electrical'
);

-- 2. Display the name of the student who has the second highest SPI.
-- Subquery retrieves the second highest SPI and outer query retrieves the name of the student with that SPI.
SELECT Name
FROM STUDENT_DATA
WHERE Rno = (
    SELECT Rno
    FROM ACADEMIC
    WHERE SPI = (
        SELECT DISTINCT SPI
        FROM ACADEMIC
        ORDER BY SPI DESC
        LIMIT 1 OFFSET 1
    )
);

-- 3. Display city names where students' branch-wise SPI is 9.2.
-- Subquery retrieves department IDs with SPI 9.2 and outer query gets cities of students from these departments.
SELECT DISTINCT City
FROM STUDENT_DATA
WHERE DID IN (
    SELECT DID
    FROM ACADEMIC
    WHERE SPI = 9.2
);
