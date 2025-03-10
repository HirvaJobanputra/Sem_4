create database trigger_SQL
use trigger_SQL

-- Create the Person table
CREATE TABLE Person (
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(100) NOT NULL,
    Salary DECIMAL(8, 2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    City VARCHAR(100) NOT NULL,
    Age INT NULL,
    BirthDate DATETIME NOT NULL
);


-- Create the PersonLog table
CREATE TABLE PersonLog (
    PLogID INT PRIMARY KEY IDENTITY(1, 1), -- Auto-incrementing primary key
    PersonID INT NOT NULL,
    PersonName VARCHAR(250) NOT NULL,
    Operation VARCHAR(50) NOT NULL,
    UpdateDate DATETIME NOT NULL
);

--Part - A

--Create a trigger that fires on INSERT, UPDATE and DELETE operation on the Person table to display a message "Record is Affected."
	create or alter trigger msg
	on person
	for insert, update,delete
	as 
	begin 
		print 'Record Affected'
	end
	insert into person
	values(101,'Hirva',12390,GETDATE(),'Morbi',12,'2025-09-09');

--Create a trigger that fires on INSERT operation on the Person table to convert person name into uppercase whenever the record is inserted.
	create or alter trigger uppercase
	on person
	for insert
	as
	begin
		update person
	set PersonName=upper(PersonName)
	end
	insert into person
	values(111,'hirva',12390,GETDATE(),'Morbi',12,'2005-09-09');

	select * from person
--Create an INSERT trigger on person table, which calculates the age and update that age in Person table.
	
	create or alter trigger ageCalculator
	on person
	for insert 
	as
	begin
		update person
		set BirthDate=datediff(year,birthdate,getdate())
	end

--Part - B

--Create a trigger that fires on INSERT, UPDATE and DELETE operation on the Person table. For that, create a new table PersonLog to log (enter) all operations performed on the person table.   
	create or alter trigger logtable
	on personlog
	after insert, update, delete
	as
	begin
		--log insert
		insert into PersonLog
		Values()
--Create an INSTEAD OF trigger that fires on INSERT, UPDATE and DELETE operation on the Person table. For that, log all operations performed on the person table into PersonLog.   
	create or alter trigger logtable
	on personlog
	after insert, update, delete


--PART C
--Create DELETE trigger on PersonLog table, when we delete any record of PersonLog table it prints 'Record deleted successfully from PersonLog'.