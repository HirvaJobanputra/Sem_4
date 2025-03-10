CREATE TABLE COUNTRY(
	COUNTRY_ID INT PRIMARY KEY,
	COUNTRY_NAME VARCHAR(100) NOT NULL UNIQUE,
	POPULATION INT NOT NULL,
	AREA_SQ_KM FLOAT NOT NULL,
	CAPITAL VARCHAR(100) NOT NULL,
	CURRENCY VARCHAR(50) NOT NULL
	)

CREATE TABLE STATE ( 
	STATE_ID INT PRIMARY KEY,
	STATE_NAME VARCHAR(100) NOT NULL UNIQUE,
	POPULATION INT NOT NULL,
	AREA_SQ_KM FLOAT NOT NULL,
	CAPITAL VARCHAR(100) NOT NULL,
	CURRENCY VARCHAR(50) NOT NULL,
	COUNTRY_ID INT FOREIGN KEY(COUNTRY_ID) REFERENCES COUNTRY(COUNTRY_ID)
)
--Part - A

--Create a view that displays the top 5 countries with the highest population, along with their population figures.
CREATE VIEW TOP5
AS
SELECT TOP 5 COUNTRY_NAME,POPULATION FROM COUNTRY

--Create a view that lists countries that do not have any states.
CREATE VIEW NOSTATE
AS
SELECT COUNTRY.COUNTRY_NAME, STATE.STATE_ID FROM COUNTRY
FULL OUTER JOIN STATE
ON COUNTRY.COUNTRY_ID=STATE.COUNTRY_ID
WHERE STATE.STATE_ID IS NULL

--Create a view that displays the state with the highest population for each country, along with its population figure.
CREATE VIEW HIGHEST_POPULATION
AS
SELECT COUNTRY.COUNTRY_NAME, MAX(STATE.POPULATION) AS MAXPOPULATION FROM STATE
INNER JOIN COUNTRY
ON COUNTRY.COUNTRY_ID=STATE.COUNTRY_ID
GROUP BY COUNTRY.COUNTRY_NAME

--Create a view that lists states that do not have a designated capital.
CREATE VIEW NOCAPITAL
AS
SELECT STATE.STATE_NAME FROM STATE
WHERE STATE.CAPITAL IS NULL

--Create a view that displays countries with more than one capital city
CREATE VIEW MORE_THAN_ONE_CAP
AS
SELECT COUNTRY_NAME,COUNT(CAPITAL) AS CAPITAL FROM COUNTRY
GROUP BY COUNTRY_NAME
HAVING COUNT(CAPITAL)>1


--partb
--1.create a view AllOrdersView to get all orders with customer name

	create view AllOrderView as
	select Orders.OrderID,Orders.OrderDate,Customer.FirstName,Customer.LastName from Orders
	join Customer
	on Orders.CustomerID=Customer.CustomerID

--2.create a view to get customers with no email addresses

	create view NoEmail as
	select Customer.FirstName,Customer.LastName from Customer
	where email is null

--3.create  view to return sum of total amount of order as total_amount

	create view Totalamount as
	select sum(Orders.TotalAmount)as Total_Amount from Orders

--4.create a view to get customers with their total order amount

	create view Totalamountt as
	select Customer.CustomerID,Customer.FirstName,Orders.TotalAmount from Customer
	join Orders
	on Orders.CustomerID=Customer.CustomerID
	where Orders.TotalAmount=(select sum(Orders.TotalAmount)as Total_Amount from Orders)

--5.create a view to get customers with their latest order data

	create view Latestorder as
	select Customer.CustomerID,Customer.FirstName,Orders.TotalAmount,Orders.OrderDate from Customer
	join Orders
	on Orders.CustomerID=Customer.CustomerID
	where Orders.OrderDate=(select max(OrderDate) from Orders where CustomerID=Customer.CustomerID)

--partc

--6.create a view to get customers with no orders

	create view Noorder as
	select Customer.CustomerID,Customer.FirstName,Orders.TotalAmount,Orders.OrderDate from Customer
	join Orders
	on Orders.CustomerID=Customer.CustomerID
	where Orders.OrderID is null

--7.create a view to get custommers with their total numbers of orders

	create view Totalnumber as
	select Customer.CustomerID,Customer.FirstName,Orders.TotalAmount,Orders.OrderDate from Customer
	join Orders
	on Orders.CustomerID=Customer.CustomerID
	where Orders.TotalAmount=(select sum(Totalamount) from Orders where CustomerID=Customer.CustomerID)

--8.create a view to get customers with high value orders

	create view HighValueOrder as
	select Customer.CustomerID,Customer.FirstName,Orders.TotalAmount,Orders.OrderDate from Customer
	join Orders
	on Orders.CustomerID=Customer.CustomerID
	where Orders.TotalAmount=(select max(Totalamount) from Orders where CustomerID=Customer.CustomerID)

--9.getting customers with more than 1 ordder placed

	create view Orderplaced as
	select Customer.CustomerID,Customer.FirstName,Orders.TotalAmount,Orders.OrderDate,count(Orders.OrderID) from Customer
	inner join Orders
	on Orders.CustomerID=Customer.CustomerID
	group by Customer.CustomerID,Customer.FirstName,Orders.TotalAmount,Orders.OrderDate
	having count(Orders.OrderDate)>1 

--10.getting customers with orders in date range 2023-07-01 to 2023-07-04

	create view CustomerOrder as
	select Customer.CustomerID,Customer.FirstName,Customer.LastName,Orders.OrderDate,Orders.OrderID from Customer
	inner join Orders
	on Orders.CustomerID=Customer.CustomerID
	where Orders.OrderDate between 2023-07-01 and 2023-07-04

