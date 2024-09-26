select * from sales_data

insert into sales_data values('North America','Watch',1500,2023)
insert into sales_data values('Europe','Mobile',1200,2023)
insert into sales_data values('Asia','Watch',1800,2023)
insert into sales_data values('North America','TV',900,2024)
insert into sales_data values('Europe','Watch',2000,2024)
insert into sales_data values('Asia','Mobile',1000,2024)
insert into sales_data values('North America','Mobile',1600,2023)
insert into sales_data values('Europe','TV',1500,2023)
insert into sales_data values('Asia','TV',1100,2024)
insert into sales_data values('North America','Watch',1700,2023)

--Part - A:
--1. Display Total Sales Amount by Region.
select region,sum(sales_amount) from sales_data group by region

--2. Display Average Sales Amount by Product
select product,avg(sales_amount) from sales_data group by product

--3. Display Maximum Sales Amount by Year
select year,max(sales_amount) from sales_data group by year

--4. Display Minimum Sales Amount by Region and Year
select region,year,min(sales_amount) from sales_data group by region,year

--5. Count of Products Sold by Region
select region,count(distinct product) from sales_data group by region

--6. Display Sales Amount by Year and Product
select product,year,sum(sales_amount) from sales_data group by product,year

--7. Display Regions with Total Sales Greater Than 5000
select region,sum(sales_amount) from sales_data group by region having sum(sales_amount)>5000

--8. Display Products with Average Sales Less Than 10000
select product ,avg(sales_amount) from sales_data group by product having avg(sales_amount)<10000

--9. Display Years with Maximum Sales Exceeding 500
select year ,max(sales_amount) from sales_data group by year having max(sales_amount)>500

--10. Display Regions with at Least 3 Distinct Products Sold.
select region,count(distinct product) from sales_data group by region having count(distinct product)>=3

--11. Display Years with Minimum Sales Less Than 1000
select year, min(sales_amount) from sales_data group by year having min(sales_amount)<1000

--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
select region,sum(sales_amount) as total from sales_data where year=2023 group by region order by total DESC



--Part – B:
--1. Display Count of Orders by Year and Region, Sorted by Year and Region
select year,region,count(sales_amount) as amount from sales_data group by year,region order by amount DESC

--2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
select region from sales_data where sales_amount>1000 group by region order by region DESC

--3. Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
select year from sales_data where sales_amount<1000 group by year order by year DESC

--4. Display Top 3 Regions by Total Sales Amount in Year 2024select region, sum(sales_amount) as total from sales_data where year=2024 group by region order by total DESC