
GO
/****** Object:  Table [dbo].[CUSTOMER2]    Script Date: 14-08-2024 13:11:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMER2](
	[customer_id] [int] NULL,
	[cust_name] [varchar](30) NULL,
	[city] [varchar](30) NULL,
	[Grade] [int] NULL,
	[salesman_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 14-08-2024 13:11:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDERS](
	[ord_no] [int] NULL,
	[purch_amt] [decimal](8, 2) NULL,
	[ord_date] [datetime] NULL,
	[customer_id] [int] NULL,
	[salesman_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SALESMAN]    Script Date: 14-08-2024 13:11:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SALESMAN](
	[salesman_id] [int] NULL,
	[name] [varchar](30) NULL,
	[city] [varchar](30) NULL,
	[commission] [decimal](4, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CUSTOMER2] ([customer_id], [cust_name], [city], [Grade], [salesman_id]) VALUES (3002, N'Nick Rimando', N'New York', 100, 5001)
INSERT [dbo].[CUSTOMER2] ([customer_id], [cust_name], [city], [Grade], [salesman_id]) VALUES (3007, N'Brad Davis', N'New York', 200, 5001)
INSERT [dbo].[CUSTOMER2] ([customer_id], [cust_name], [city], [Grade], [salesman_id]) VALUES (3005, N'Graham Zusi', N'California', 200, 5002)
INSERT [dbo].[CUSTOMER2] ([customer_id], [cust_name], [city], [Grade], [salesman_id]) VALUES (3008, N'Julian Green', N'London', 300, 5002)
INSERT [dbo].[CUSTOMER2] ([customer_id], [cust_name], [city], [Grade], [salesman_id]) VALUES (3004, N'Fabian Johnson', N'Paris', 300, 5006)
INSERT [dbo].[CUSTOMER2] ([customer_id], [cust_name], [city], [Grade], [salesman_id]) VALUES (3009, N'Geoff Cameron', N'Berlin', 100, 5003)
INSERT [dbo].[CUSTOMER2] ([customer_id], [cust_name], [city], [Grade], [salesman_id]) VALUES (3003, N'Jozy Altidor', N'Moscow', 200, 5007)
INSERT [dbo].[CUSTOMER2] ([customer_id], [cust_name], [city], [Grade], [salesman_id]) VALUES (3001, N'Brad Guzan', N'London', NULL, 5005)
INSERT [dbo].[CUSTOMER2] ([customer_id], [cust_name], [city], [Grade], [salesman_id]) VALUES (4001, N'abc', N'ABC', 900, NULL)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70001, CAST(150.50 AS Decimal(8, 2)), CAST(N'2012-12-05 00:00:00.000' AS DateTime), 3005, 5002)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70009, CAST(270.65 AS Decimal(8, 2)), CAST(N'2012-11-10 00:00:00.000' AS DateTime), 3001, 5005)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70001, CAST(65.26 AS Decimal(8, 2)), CAST(N'2012-10-05 00:00:00.000' AS DateTime), 3002, 5001)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70004, CAST(110.50 AS Decimal(8, 2)), CAST(N'2012-08-17 00:00:00.000' AS DateTime), 3009, 5003)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70007, CAST(948.50 AS Decimal(8, 2)), CAST(N'2012-11-10 00:00:00.000' AS DateTime), 3005, 5002)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70005, CAST(2400.60 AS Decimal(8, 2)), CAST(N'2012-07-27 00:00:00.000' AS DateTime), 3007, 5001)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70008, CAST(5760.00 AS Decimal(8, 2)), CAST(N'2012-11-10 00:00:00.000' AS DateTime), 3002, 5001)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70010, CAST(1983.43 AS Decimal(8, 2)), CAST(N'2012-10-10 00:00:00.000' AS DateTime), 3004, 5006)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70003, CAST(2480.40 AS Decimal(8, 2)), CAST(N'2012-10-10 00:00:00.000' AS DateTime), 3009, 5003)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70012, CAST(250.45 AS Decimal(8, 2)), CAST(N'2012-06-27 00:00:00.000' AS DateTime), 3008, 5002)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70011, CAST(75.29 AS Decimal(8, 2)), CAST(N'2012-08-17 00:00:00.000' AS DateTime), 3003, 5007)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70013, CAST(3045.60 AS Decimal(8, 2)), CAST(N'2012-04-25 00:00:00.000' AS DateTime), 3002, 5001)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70001, CAST(150.50 AS Decimal(8, 2)), CAST(N'2012-12-05 00:00:00.000' AS DateTime), 3005, 5002)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70009, CAST(270.65 AS Decimal(8, 2)), CAST(N'2012-11-10 00:00:00.000' AS DateTime), 3001, 5005)
INSERT [dbo].[ORDERS] ([ord_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (70001, CAST(65.26 AS Decimal(8, 2)), CAST(N'2012-10-05 00:00:00.000' AS DateTime), 3002, 5001)
INSERT [dbo].[SALESMAN] ([salesman_id], [name], [city], [commission]) VALUES (5001, N'James Hoog', N'New York', CAST(0.15 AS Decimal(4, 2)))
INSERT [dbo].[SALESMAN] ([salesman_id], [name], [city], [commission]) VALUES (5002, N'Nail Knite', N'Paris', CAST(0.13 AS Decimal(4, 2)))
INSERT [dbo].[SALESMAN] ([salesman_id], [name], [city], [commission]) VALUES (5005, N'Pit Alex', N'London', CAST(0.11 AS Decimal(4, 2)))
INSERT [dbo].[SALESMAN] ([salesman_id], [name], [city], [commission]) VALUES (5006, N'Mc Lyon', N'Paris', CAST(0.14 AS Decimal(4, 2)))
INSERT [dbo].[SALESMAN] ([salesman_id], [name], [city], [commission]) VALUES (5007, N'Paul Adam', N'Rome', CAST(0.13 AS Decimal(4, 2)))
INSERT [dbo].[SALESMAN] ([salesman_id], [name], [city], [commission]) VALUES (5003, N'Lauson Hen', N'San Jose', CAST(0.12 AS Decimal(4, 2)))

select * from [dbo].[CUSTOMER2]
select * from [dbo].[ORDERS]
select * from [dbo].[SALESMAN]
 

-- PART-A:

-- 1. Find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.
SELECT 
    s.name AS Salesman,
    c.cust_name,
    c.city
FROM 
    CUSTOMER2 c
JOIN 
    SALESMAN s 
    ON c.city = s.city
WHERE 
    c.salesman_id = s.salesman_id;

-- 2. Find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.
SELECT 
    o.ord_no,
    o.purch_amt,
    c.cust_name,
    c.city
FROM 
    ORDERS o
JOIN 
    CUSTOMER2 c 
    ON o.customer_id = c.customer_id
WHERE 
    o.purch_amt BETWEEN 500 AND 2000;

-- 3. Find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.
SELECT 
    c.cust_name,
    c.city AS customer_city,
    s.name AS Salesman,
    s.commission
FROM 
    CUSTOMER2 c
JOIN 
    SALESMAN s 
    ON c.salesman_id = s.salesman_id;

-- 4. Find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, commission.
SELECT 
    c.cust_name,
    c.city AS customer_city,
    s.name AS Salesman,
    s.commission
FROM 
    CUSTOMER2 c
JOIN 
    SALESMAN s 
    ON c.salesman_id = s.salesman_id
WHERE 
    s.commission > 0.12;

-- 5. Locate those salespeople who do not live in the same city where their customers live and have received a commission of more than 12% from the company. Return Customer Name, customer city, Salesman, salesman city, commission.
SELECT 
    c.cust_name,
    c.city AS customer_city,
    s.name AS Salesman,
    s.city AS salesman_city,
    s.commission
FROM 
    CUSTOMER2 c
JOIN 
    SALESMAN s 
    ON c.salesman_id = s.salesman_id
WHERE 
    s.city <> c.city
    AND s.commission > 0.12;

-- 6. Find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.
SELECT 
    o.ord_no,
    o.ord_date,
    o.purch_amt,
    c.cust_name,
    c.Grade,
    s.name AS Salesman,
    s.commission
FROM 
    ORDERS o
JOIN 
    CUSTOMER2 c 
    ON o.customer_id = c.customer_id
JOIN 
    SALESMAN s 
    ON o.salesman_id = s.salesman_id;

-- 7. Join the tables salesman, customer, and orders so that the same column of each table appears once and only the relational rows are returned.
SELECT 
    c.customer_id,
    c.cust_name,
    c.city AS customer_city,
    c.Grade,
    o.ord_no,
    o.purch_amt,
    o.ord_date,
    s.salesman_id,
    s.name AS Salesman,
    s.city AS salesman_city,
    s.commission
FROM 
    CUSTOMER2 c
JOIN 
    ORDERS o 
    ON c.customer_id = o.customer_id
JOIN 
    SALESMAN s 
    ON c.salesman_id = s.salesman_id
    AND o.salesman_id = s.salesman_id;

-- 8. Display the customer name, customer city, grade, salesman, salesman city. The results should be sorted by ascending customer_id.
SELECT 
    c.cust_name,
    c.city AS customer_city,
    c.Grade,
    s.name AS Salesman,
    s.city AS salesman_city
FROM 
    CUSTOMER2 c
JOIN 
    SALESMAN s 
    ON c.salesman_id = s.salesman_id
ORDER BY 
    c.customer_id ASC;

-- 9. Find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesman city. The result should be ordered by ascending customer_id.
SELECT 
    c.cust_name,
    c.city AS customer_city,
    c.Grade,
    s.name AS Salesman,
    s.city AS salesman_city
FROM 
    CUSTOMER2 c
JOIN 
    SALESMAN s 
    ON c.salesman_id = s.salesman_id
WHERE 
    c.Grade < 300
ORDER BY 
    c.customer_id ASC;

-- 10. Make a report with customer name, city, order number, order date, and order amount in ascending order according to the order date to determine whether any of the existing customers have placed an order or not.
SELECT 
    c.cust_name,
    c.city AS customer_city,
    o.ord_no,
    o.ord_date,
    o.purch_amt
FROM 
    CUSTOMER2 c
JOIN 
    ORDERS o 
    ON c.customer_id = o.customer_id
ORDER BY 
    o.ord_date ASC;

-- PART-B:

-- 1. Generate a report with customer name, city, order number, order date, order amount, salesperson name, and commission to determine if any of the existing customers have not placed orders or if they have placed orders through their salesman or by themselves.
SELECT 
    c.cust_name,
    c.city AS customer_city,
    o.ord_no,
    o.ord_date,
    o.purch_amt,
    s.name AS Salesman,
    s.commission
FROM 
    CUSTOMER2 c
LEFT JOIN 
    ORDERS o 
    ON c.customer_id = o.customer_id
LEFT JOIN 
    SALESMAN s 
    ON c.salesman_id = s.salesman_id;

-- 2. Generate a list in ascending order of salespersons who work either for one or more customers or have not yet joined any of the customers.
SELECT 
    s.name AS Salesman
FROM 
    SALESMAN s
LEFT JOIN 
    CUSTOMER2 c 
    ON s.salesman_id = c.salesman_id
GROUP BY 
    s.name
ORDER BY 
    s.name;

-- 3. List all salespersons along with customer name, city, grade, order number, date, and amount.
SELECT 
    s.name AS Salesman,
    c.cust_name,
    c.city AS customer_city,
    c.Grade,
    o.ord_no,
    o.ord_date,
    o.purch_amt
FROM 
    SALESMAN s
LEFT JOIN 
    CUSTOMER2 c 
    ON s.salesman_id = c.salesman_id
LEFT JOIN 
    ORDERS o 
    ON c.customer_id = o.customer_id;

-- 4. Make a list for the salesmen who either work for one or more customers or yet to join any of the customer. The customer may have placed, either one or more orders on or above order amount 2000 and must have a grade, or he may not have placed any order to the associated supplier.
SELECT 
    s.name AS Salesman
FROM 
    SALESMAN s
LEFT JOIN 
    CUSTOMER2 c 
    ON s.salesman_id = c.salesman_id
LEFT JOIN 
    ORDERS o 
    ON c.customer_id = o.customer_id 
    AND o.purch_amt >= 2000
WHERE 
    c.Grade IS NOT NULL
GROUP BY 
    s.name;

-- 5. For those customers from the existing list who put one or more orders, or which orders have been placed by the customer who is not on the list, create a report containing the customer name, city, order number, order date, and purchase amount.
SELECT 
    c.cust_name,
    c.city AS customer_city,
    o.ord_no,
    o.ord_date,
    o.purch_amt
FROM 
    CUSTOMER2 c
LEFT JOIN 
    ORDERS o 
    ON c.customer_id = o.customer_id
UNION
SELECT 
    c.cust_name,
    c.city AS customer_city,
    o.ord_no,
    o.ord_date,
    o.purch_amt
FROM 
    ORDERS o
LEFT JOIN 
    CUSTOMER2 c 
    ON o.customer_id = c.customer_id;

-- 6. Generate a report with the customer name, city, order no, order date, purchase amount for only those customers on the list who must have a grade and placed one or more orders or which orders have been placed by the customer who neither is on the list nor has a grade.
SELECT 
    c.cust_name,
    c.city AS customer_city,
    o.ord_no,
    o.ord_date,
    o.purch_amt
FROM 
    CUSTOMER2 c
JOIN 
    ORDERS o 
    ON c.customer_id = o.customer_id
WHERE 
    c.Grade IS NOT NULL
UNION
SELECT 
    c.cust_name,
    c.city AS customer_city,
    o.ord_no,
    o.ord_date,
    o.purch_amt
FROM 
    ORDERS o
LEFT JOIN 
    CUSTOMER2 c 
    ON o.customer_id = c.customer_id
WHERE 
    c.customer_id IS NULL;

-- 7. List all salespersons combined with each row of the customer table.
SELECT 
    s.name AS Salesman,
    c.cust_name,
    c.city AS customer_city
FROM 
    SALESMAN s
C
