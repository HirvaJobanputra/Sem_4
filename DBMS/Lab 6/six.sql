create table Country(
	Country_ID int primary key,
	Country_Name varchar(100) not null unique,
	Populationn int not null,
	Area_sq_km float not null,
	Capital varchar(100) not null,
	Currancy varchar(50) not null
)

insert into Country(Country_ID,Country_Name,Populationn,Area_sq_km,Capital,Currancy)
values(1,'USA',331002651,9833520,'Washington,D.C','USD')

insert into Country(Country_ID,Country_Name,Populationn,Area_sq_km,Capital,Currancy)
values(2,'CANADA',38005238,9984670,'Ottawa','CAD')

insert into Country(Country_ID,Country_Name,Populationn,Area_sq_km,Capital,Currancy)
values(3,'BRAZIL',212559417,8515767,'Brasillia','BRL')

insert into Country(Country_ID,Country_Name,Populationn,Area_sq_km,Capital,Currancy)
values(4,'INDIA',1380004385,3287263,'New Delhi','INR')

insert into Country(Country_ID,Country_Name,Populationn,Area_sq_km,Capital,Currancy)
values(5,'RUSSIA',145934462,17098246,'Moscow','RUB')

insert into Country(Country_ID,Country_Name,Populationn,Area_sq_km,Capital,Currancy)
values(6,'CHINA',1439323776,9706961,'Beijing','CNY')

insert into Country(Country_ID,Country_Name,Populationn,Area_sq_km,Capital,Currancy)
values(7,'AUSTRALIA',25499881,7692024,'Canberra','AUD')

insert into Country(Country_ID,Country_Name,Populationn,Area_sq_km,Capital,Currancy)
values(8,'ARGENTINA',45195777,2780400,'Buenous Aires','ARS')

insert into Country(Country_ID,Country_Name,Populationn,Area_sq_km,Capital,Currancy)
values(9,'GERMANY',83783942,357022,'Berlin','EUR')

insert into Country(Country_ID,Country_Name,Populationn,Area_sq_km,Capital,Currancy)
values(10,'SOUTH AFRICA',59308690,1221037,'Pretoria','ZAR')

create table Statee(
	State_ID int primary key,
	State_Name varchar(100) not null unique,
	Populationn int not null,
	Area_sq_km float not null,
	Capital varchar(100) not null,
	Country_ID int ,
	foreign key(Country_ID) references Country(Country_ID)
)

insert into Statee(State_ID,State_Name,Populationn,Area_sq_km,Capital,Country_ID)
values(1,'California',39538223,423972,'Sacramento',1)

insert into Statee(State_ID,State_Name,Populationn,Area_sq_km,Capital,Country_ID)
values(2,'Texas',28995881,695662,'Austin',1)

insert into Statee(State_ID,State_Name,Populationn,Area_sq_km,Capital,Country_ID)
values(3,'Ontario',14734014,917741,'Toronoto',2)

insert into Statee(State_ID,State_Name,Populationn,Area_sq_km,Capital,Country_ID)
values(4,'Sao Paulo',46289333,248209,'Sao Paulo',3)

insert into Statee(State_ID,State_Name,Populationn,Area_sq_km,Capital,Country_ID)
values(5,'Maharashtra',1114063427,307713,'Mumbai',4)

insert into Statee(State_ID,State_Name,Populationn,Area_sq_km,Capital,Country_ID)
values(6,'Moscow Oblast',7694989,443562,'Moscow',5)

insert into Statee(State_ID,State_Name,Populationn,Area_sq_km,Capital,Country_ID)
values(7,'Beijing',21542000,16410,'Beijing',6)

insert into Statee(State_ID,State_Name,Populationn,Area_sq_km,Capital,Country_ID)
values(8,'New South Wales',8160062,800642,'Sydney',7)

insert into Statee(State_ID,State_Name,Populationn,Area_sq_km,Capital,Country_ID)
values(9,'Buenos Aires Province',17700000,307571,'La Plata',8)

insert into Statee(State_ID,State_Name,Populationn,Area_sq_km,Capital,Country_ID)
values(10,'Bavaria',13076721,70550,'Munich',9)


--partA
--1.create a view that displays the top 5 countries with the highest population,along with their population figures.

	create view TOP5countries as
	select top 5  Country_Name,Populationn from Country
	order by Populationn desc

--2.create a view that lists countries that do not have any states

	create view NOstate as
	select Country.Country_Name from Country
	join Statee
	on Country.Country_ID=Statee.Country_ID
	where Statee.Country_ID is null

--3.create a view that displays the state with the highest population for each country,along with its population figure

	create view Highpopulation as
	select * from Statee
	join Country
	on Country.Country_ID=Statee.Country_ID
	where Statee.Populationn=(select max(Populationn) from Statee where Country_ID=Statee.Country_ID)

--4.create a view that lists states that do not have a designated capital

	create view listss as
	select State_ID,State_Name from Statee
	where Capital is null

--5.create a view that displays countries with more than one capital city

	create view Morecapital as
	select Country_ID,Country_Name from Country
	where Capital>1

	--Table of customer and order

	create table Customer(
	CustomerID int primary key,
	FirstName varchar(50) not null,
	LastName varchar(50) not null,
	Email varchar(50) not null,
	Phone Nvarchar(20) not null
	)

	insert into Customer(CustomerID,FirstName,LastName,Email,Phone)
	values(1,'John','Doe','john.doe@example.com',1234567890)
	
	insert into Customer(CustomerID,FirstName,LastName,Email,Phone)
	values(2,'Jane','Smith','jane.smith@example.com',987653210)

	insert into Customer(CustomerID,FirstName,LastName,Email,Phone)
	values(3,'Mike','Johnson','mike.johnson@example.com',1112223333)

	insert into Customer(CustomerID,FirstName,LastName,Email,Phone)
	values(4,'Emily','Williams','emily.williams@example.com',4445556666)

	insert into Customer(CustomerID,FirstName,LastName,Email,Phone)
	values(5,'David','Brown','david.brown@example.com',7778889999)


	create table Orders(
	OrderID int primary key,
	CustomerID int foreign key(CustomerID) references Customer(CustomerID),
	OrderDate date not null,
	TotalAmount decimal(10,2) not null
	)
	
	insert into Orders(OrderID,CustomerID,OrderDate,TotalAmount)
	values(1001,1,'2023-07-01',100.50)

	insert into Orders(OrderID,CustomerID,OrderDate,TotalAmount)
	values(1002,1,'2023-07-02',75.20)

	insert into Orders(OrderID,CustomerID,OrderDate,TotalAmount)
	values(1003,3,'2023-07-03',250.75)

	insert into Orders(OrderID,CustomerID,OrderDate,TotalAmount)
	values(1004,4,'2023-07-04',50.00)

	insert into Orders(OrderID,CustomerID,OrderDate,TotalAmount)
	values(1005,5,'2023-07-05',300.00)


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