--LAB-4
--PART-A
--ALTER
--1.Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSITE ADD CITY VARCHAR(50),PINCODE INT
--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSITE ALTER COLUMN CNAME VARCHAR(35)
--3. Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSITE ALTER COLUMN AMOUNT INT
--4. Rename Column ActNo to ANO.
EXEC SP_RENAME 'DEPOSITE.ACTNO', 'ANO'
--5. Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSITE DROP COLUMN CITY
--6. Change name of table DEPOSIT to DEPOSIT_DETAIL
EXEC SP_RENAME 'DEPOSITE', 'DEPOSIT_DETAIL'

--PART-B
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table
SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE'
--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSITE_DETAIL ALTER COLUMN CNAME='AOPENDATE'--3. Rename Column CNAME to CustomerName.SP_RENAME 'DEPOSITE_DETAIL.CNAME','CUSTOMERNAME'

--PART-C
CREATE TABLE STUDENT_DETAIL(
ENROLLMENT_NO VARCHAR(20),
NAME VARCHAR(25),
CPI DECIMAL(5,2),
BIRTHDATE DATETIME
)
SELECT * FROM STUDENT_DETAIL

--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL ADD CITY VARCHAR (20),BACKLOG INT 
--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE STUDENT_DETAIL ALTER COLUMN VARCHAR (35)
--3. Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAIL ALTER COLUMN CPI INT
--4. Rename Column Enrollment_No to ENO.
SP_RENAME 'STUDENT_DETAIL.Enrollment_No','ENO'
--5. Delete Column City from the student_detail table.
ALTER TABLE STUDENT_DETAIL DROP COLUMN CITY
--6. Change name of table student_detail to STUDENT_MASTER.
SP_RENAME 'STUDENT_DETAIL','STUDENT_MASTER'


--DELET,TRUNCATE,DROP
--PART-A
--1.Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
DELETE FROM DEPOSIT_DETAIL WHERE AMOUNT>=4000
--2. Delete all the accounts CHANDI BRANCH.₹
DELETE FROM DEPOSIT_DETAIL WHERE BNAME='CHANDI'
--3. Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL WHERE ANO>105
--4. Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL
--5. Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL

--PART-B

CREATE TABLE EMPLOYEE_MASTER(
EmpNo INT,
EmpName VARCHAR(25),
JoiningDate DATETIME,
Salary DECIMAL (8,2),
City VARCHAR(20)
)
INSERT INTO EMPLOYEE_MASTER VALUES
(101, Keyur 5-1-02 12000.00 Rajkot)
(103, Kajal 14-3-06 15000.00 Baroda)
(104, Bhoomi 23-6-05 12500.00 Ahmedabad)
(105, Harmit 15-2-04 14000.00 Rajkot)
(106, Mitesh 25-9-01 5000.00 Jamnagar)
(107, Meera Null 7000.00 Morbi)
(108, Kishan 6-2-03 10000.00 NULL)