-- Create the Employee table
create database SQL_UDF
CREATE TABLE Employee (
    EID INT PRIMARY KEY,
    EName VARCHAR(100),
    Gender VARCHAR(10),
    JoiningDate DATETIME,
    Salary DECIMAL(8, 2),
    City VARCHAR(100)
);

-- Insert data into the Employee table
INSERT INTO Employee (EID, EName, Gender, JoiningDate, Salary, City)
VALUES 
    (1, 'Nick', 'Male', '2013-01-01', 4000.00, 'London'),
    (2, 'Julian', 'Female', '2014-10-01', 3000.00, 'New York'),
    (3, 'Roy', 'Male', '2016-06-01', 3500.00, 'London'),
    (4, 'Tom', 'Male', NULL, 4500.00, 'London'),
    (5, 'Jerry', 'Male', '2013-02-01', 2800.00, 'Sydney'),
    (6, 'Philip', 'Male', '2015-01-01', 7000.00, 'New York'),
    (7, 'Sara', 'Female', '2017-08-01', 4800.00, 'Sydney'),
    (8, 'Emily', 'Female', '2015-01-01', 5500.00, 'New York'),
    (9, 'Michael', 'Male', NULL, 6500.00, 'London'),
    (10, 'John', 'Male', '2015-01-01', 8800.00, 'London');

-- Create the Employee table
CREATE TABLE Employee2 (
    Employee_ID INT PRIMARY KEY,
    First_Name VARCHAR(100),
    Last_Name VARCHAR(50),
    Age INT,
    Department VARCHAR(50)
);


-- Insert data into the Employee table
INSERT INTO Employee2 (Employee_ID, First_Name, Last_Name, Age, Department)
VALUES
    (1, 'John', 'Doe', 30, 'HR'),
    (2, 'Jane', 'Smith', 25, 'Finance'),
    (3, 'Michael', 'Johnson', 35, 'IT'),
    (4, 'Emily', 'Williams', 28, 'Marketing'),
    (5, 'Robert', 'Brown', 22, 'IT');

--Here's the text from the image:

--**From the above given table perform the following queries:**

--**Part - A**

--**Scalar Valued Functions**

--1. Create a function which displays total number of employees.
	create or alter function display_employees()
	returns int
	as
	begin
		return (select count(eid) from employee)
	end
	select dbo.display_employees()

--2. Create a function which returns highest salary from Employee table.
	CREATE OR ALTER FUNCTION HIGHEST_SALARY()
	RETURNS	int
	AS
	BEGIN
		RETURN (SELECT MAX(SALARY) FROM EMPLOYEE)
	END 

	SELECT dbo.HIGHEST_SALARY()

--3. Create a function to get the experience of the employee based on their joining date.
	create or alter function get_experience(@empid int)
	returns int
	as 
	begin
		declare @experience int;
			select @experience = datediff(year, joiningdate, getdate())
			from employee
			where eid = @empid
		return @experience
	end;
	select dbo.get_experience(1)
--4. Create a function that calculates the factorial of a given number.
	create or alter function factorial(@n int)
	returns int
	as
	begin
		if (@n<1)
			return (0)
		else
			declare @fact int
			declare @i int
			set @i=1
			set @fact=1
			while @i<=@n
			begin
				set @fact=@fact*@i
				set @i=@i+1
			end
			return @fact
	end
	select dbo.factorial(5)
			
--5. Create a function which returns minimum salary of a female employee.
	CREATE FUNCTION GetMinimumSalaryFemale()
RETURNS INT
AS
BEGIN
 DECLARE @MinSalary int
SELECT @MinSalary = Min(Salary)
FROM Employee
WHERE Gender = 'Female';
 RETURN @MinSalary
END
SELECT dbo.GetMinimumSalaryFemale() AS MinimumSalaryFemale
--6. Create a function which count unique city from employee table.
--7. Create a scalar-valued function that returns the name combined with salary of an employee based on their employee-id and displayed output like 'Roy having 3500 salaries'.

--**Table Valued Functions**

--1. Create a function which retrieve the data of Employee table.
	create or alter function getData()
	returns table
	as
		return (Select * from employee)
	
	select * from dbo.getdata()

--2. Create a function which returns an employee table with city wise total salary.
	CREATE FUNCTION GetTotalSalaryEmployee()
RETURNS TABLE
AS
RETURN (SELECT City,SUM(Salary) AS TotalSalary
 FROM Employee
 GROUP BY City)
SELECT * FROM dbo.GetTotalSalaryEmployee()

--3. Create a function which returns an employee table with gender wise maximum, minimum, total and average salaries.
	create or alter function gender_wise_data()
	returns table
	as 
		return(select gender, min(salary) as min, max(salary) as max, sum(salary) as total, avg(salary) as average from employee
	group by gender)
	Select * from gender_wise_data()
--4. Create a function which return an employee table with details of employee whose name starts with J.
	create or alter function starts_with_j()
	returns table
		as
		return select * from Employee where ename like 'j%'

		select * from starts_with_j()
--5. Create a function to get all the male employees.
	create or alter function male()
	returns table 
	as 
		return select * from employee
		where gender = 'male'
		select * from male()

	select * from male()
	
--6. Create a function to get employees from a given city.
--7. Create a function that displays employees with a salary greater than a specified amount.
--8. Create a function to get employees who joined after a given specified date.


--**Part - B**

--1. Create UDF to get the full name and department of an employee.
	create or alter function retrive_name_dept()
	returns table
	as
		return select ename, department from Employee
		inner join Employee2
		on Employee.EID=Employee2.Employee_ID

	select * from retrive_name_dept()

--2. Create UDF to calculate the age of an employee based on the birth year.
	create or alter function dbo.calc_Age(@BirthYear int)
	returns int
	as
	begin
		declare @age int;
		set @age = YEar(getdate())-@BirthYear
		return @age
	end

	select dbo.calc_Age(2005)

--3. Create UDF to get the number of employees in a specific department.
	create function noOfEmployee(@department varchar(50))
	returns int
	as
	begin
		 RETURN (SELECT COUNT(Employee_ID)
		 FROM Employee2
		 WHERE Department = @Department)

	end

	select dbo.noOfEmployee('IT')

--4. Create UDF to concatenate the first name and last name with a custom separator.
	create or alter function firstLast(
		@firstname nvarchar(100),
		@lastname nvarchar(100),
		@separator nvarchar(10)
	)
	returns varchar(200)
	as
	begin 
		return concat(@firstname,@separator,@lastname)
	end
	select dbo.firstLast('Hirva','Jobanputra','krishna')
		

--5. Create UDF to check if an employee is part of the IT department.
	create or alter function checkEMPifIT(@empID int)
	returns bit
	as 
	begin
		declare @isIT bit
		select @isIT = CASE
			when department = 'IT' then 1
				else 0
			end
			from Employee2
		where Employee_ID=@empID
		return @isIT
	end
	select dbo.checkEMPifIT(1)
--6. Create UDF to convert age into a friendly message.
--7. Create UDF to find the average age of employees in a department.
--8. Create UDF to check if an employee exists in the table.
--9. Create UDF to get the last name in uppercase.

--**Part - C**

--10. Create UDF to check if an employee is older than a specific age.
--11. Create UDF to get the first initial of an employee's first name.
--12. Create UDF to get the number of employees older than a specific age.
--13. Create UDF to check if an employee's first name starts with a specific letter.
--14. Create UDF to calculate the years of experience based on the current year and an employee's starting year.
