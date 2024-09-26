-- Creating the COMPUTER table
CREATE TABLE COMPUTER (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50)
);

-- Inserting data into the COMPUTER table
INSERT INTO COMPUTER (RollNo, Name) VALUES (101, 'Ajay');
INSERT INTO COMPUTER (RollNo, Name) VALUES (109, 'Haresh');
INSERT INTO COMPUTER (RollNo, Name) VALUES (115, 'Manish');

-- Creating the ELECTRICAL table
CREATE TABLE ELECTRICAL (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50)
);

-- Inserting data into the ELECTRICAL table
INSERT INTO ELECTRICAL (RollNo, Name) VALUES (105, 'Ajay');
INSERT INTO ELECTRICAL (RollNo, Name) VALUES (107, 'Mahesh');
INSERT INTO ELECTRICAL (RollNo, Name) VALUES (115, 'Manish');

--PART A:

-- 1. Display name of students who are either in Computer or in Electrical
-- Using UNION to combine unique names from both tables
SELECT Name FROM COMPUTER
UNION
SELECT Name FROM ELECTRICAL;

-- 2. Display name of students who are either in Computer or in Electrical including duplicate data
-- Using UNION ALL to combine all names, including duplicates
SELECT Name FROM COMPUTER
UNION ALL
SELECT Name FROM ELECTRICAL;

-- 3. Display name of students who are in both Computer and Electrical
-- Using INTERSECT to get names common to both tables
SELECT Name FROM COMPUTER
INTERSECT
SELECT Name FROM ELECTRICAL;

-- 4. Display name of students who are in Computer but not in Electrical
-- Using EXCEPT to get names in COMPUTER that are not in ELECTRICAL
SELECT Name FROM COMPUTER
EXCEPT
SELECT Name FROM ELECTRICAL;

-- 5. Display name of students who are in Electrical but not in Computer
-- Using EXCEPT to get names in ELECTRICAL that are not in COMPUTER
SELECT Name FROM ELECTRICAL
EXCEPT
SELECT Name FROM COMPUTER;

-- 6. Display all the details of students who are either in Computer or in Electrical
-- Using UNION to combine all details, ensuring distinct records
SELECT RollNo, Name FROM COMPUTER
UNION
SELECT RollNo, Name FROM ELECTRICAL;

-- 7. Display all the details of students who are in both Computer and Electrical
-- Using INTERSECT to get all details common to both tables
SELECT RollNo, Name FROM COMPUTER
INTERSECT
SELECT RollNo, Name FROM ELECTRICAL;



