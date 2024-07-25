create table SALES_DATA
(
Region VARCHAR(20),
Product varchar(10),
Sales_Amount int,
Year int)

insert into SALES_DATA values('NORTH AMERICA','WATCH',1500,2023)
insert into SALES_DATA values('EUROPE','MOBILE',1200,2023)
insert into SALES_DATA values('ASIA','WATCH',1800,2023)
insert into SALES_DATA values('NORTH AMERICA','TV',900,2024)
insert into SALES_DATA values('EUROPE','WATCH',2000,2024)
insert into SALES_DATA values('ASIA','MOBILE',1000,2024)
insert into SALES_DATA values('NORTH AMERICA','MOBILE',1600,2023)
insert into SALES_DATA values('EUROPE','TV',1500,2023)
insert into SALES_DATA values('ASIA','TV',1100,2024)
insert into SALES_DATA values('NORTH AMERICA','WATCH',1700,2024)

SELECT * FROM SALES_DATA
--PART A--
--1-- Display Total Sales Amount by Region.
SELECT Region, SUM(Sales_Amount) AS TOTAL_SALE FROM SALES_DATA group by Region
--2--Display Average Sales Amount by Product
SELECT PRODUCT, AVG(SALES_AMOUNT) AS AVG_SALE FROM SALES_DATA GROUP BY Product
--3--Display Maximum Sales Amount by Year 
SELECT YEAR, MAX(sales_amount) as Max_Sale from SALES_DATA group by Year
--4--Display Minimum Sales Amount by Region and Year
select region,year,MIN(sales_amount) as Min_Sales from SALES_DATA group by region,year
--5--Count of Products Sold by Region
select region, count(product) from SALES_DATA group by Region
--6--Display Sales Amount by Year and Product 
select SUM(sales_amount) from SALES_DATA group by year,Product
--7--Display Regions with Total Sales Greater Than 5000 
select SUM(sales_amount) from SALES_DATA group by Region having SUM(Sales_Amount)>5000
--8--Display Products with Average Sales Less Than 10000
select product from SALES_DATA group by Product having AVG(sales_amount)<10000
--9--Display Years with Maximum Sales Exceeding 500 
select year from SALES_DATA group by Year having max(sales_amount)>500
--10--Display Regions with at Least 3 Distinct Products Sold. 
select region from SALES_DATA group by Region having count(distinct product)>=3
--11-- Display Years with Minimum Sales Less Than 1000 
select year from SALES_DATA group by year having min(sales_amount)<1000
--12--Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount 
select region,sum(sales_amount) from SALES_DATA where year=2023 group by region order by SUM(sales_amount)

--PART B--
--1--Display Count of Orders by Year and Region, Sorted by Year and Region 
select region,year, count(product) from SALES_DATA group by year,region order by year,region
--2--Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region 
select region from SALES_DATA group by region having max(sales_amount)>1000 order by region
--3--Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
select year from SALES_DATA group by Year having sum(sales_amount)<1000 order by year desc
--4--Display Top 3 Regions by Total Sales Amount in Year 2024 
select top 3 region,sum(sales_amount) from SALES_DATA where year=2024 group by region order by sum(sales_amount) desc

--PART C--
--1-- Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
SELECT PRODUCT FROM SALES_DATA GROUP BY product HAVING AVG(Sales_Amount)>1000 and avg(sales_amount)<200 order by product
--2. Display Years with More Than 5 Orders from Each Region 
select year,count(product) from sales_data group by year having count(product)>5
--3. Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.
select region from sales_data where year=2023 group by region having avg(sales_amount)>1500 order by avg(sales_amount) desc
--4. Find out region wise duplicate product.
select region,count(product),product from sales_data group by product,region having count(product)>1
--5. Find out region wise highest sales amount.
select region,max(sales_amount) from SALES_DATA group by region order by max(sales_amount) desc