create database SQL_SP
use SQL_SP
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Designation (
    DesignationID INT PRIMARY KEY,
    DesignationName VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Person (
    WorkerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Salary DECIMAL(8,2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    DepartmentID INT FOREIGN KEY REFERENCES Department(DepartmentID),
    DesignationID INT FOREIGN KEY REFERENCES Designation(DesignationID)
);


INSERT INTO Department (DepartmentID, DepartmentName) VALUES
    (1, 'Admin'),
    (2, 'IT'),
    (3, 'HR'),
    (4, 'Account');

INSERT INTO Designation (DesignationID, DesignationName) VALUES
    (11, 'Jobber'),
    (12, 'Welder'),
    (13, 'Clerk'),
    (14, 'Manager'),
    (15, 'CEO');
INSERT INTO Person (FirstName, LastName, Salary, JoiningDate, DepartmentID, DesignationID)
VALUES
('Rahul', 'Anshu', 56000.00, '1990-01-01', 1, 12),
('Hardik', 'Hinsu', 18000.00, '1990-09-25', 2, 11),
('Bhavin', 'Kamani', 25000.00, '1991-05-14', NULL, 11),
('Bhoomi', 'Patel', 39000.00, '2014-02-20', 1, 13),
('Rohit', 'Rajgor', 17000.00, '1990-07-23', 2, 15),
('Priya', 'Mehta', 25000.00, '1990-10-18', 2, NULL),
('Neha', 'Trivedi', 18000.00, '2014-02-20', 3, 15);
--Part - A

--Create a stored procedure that takes department name as an input and returns a table with all workers working in that department.
create procedure pr_worker_department
	@departmentName varchar(100)
AS
begin
select department.departmentname, Person.FirstName, Person.LastName, Person.JoiningDate, person.Salary
from department inner join person
on person.DepartmentID=Department.DepartmentID
where Department.DepartmentName=@departmentName
end

exec pr_worker_department admin

--Create procedure that takes department name & designation name as input and returns a table with worker's first name, salary, joining date & department name.
create procedure pr_designation_department_worker
	@departmentName varchar(100),
	@designationName varchar(100)
as
begin 
select person.FirstName, person.Salary, person.JoiningDate, Department.DepartmentName
from person inner join Department
on person.DepartmentID=Department.DepartmentID
inner join designation 
on person.DesignationID=Designation.DesignationID
where Department.DepartmentName=@departmentName
		and
	Designation.DesignationName=@designationName
end;
EXEC pr_designation_department_worker 'Admin','Welder'


--Create a Procedure that takes the first name as an input parameter and display all the details of the worker with their department & designation name.
CREATE PROCEDURE pr_display_all_info
@FirstName varchar(100)
AS
BEGIN
SELECT Person.WorkerID,
 Person.FirstName,
 Person.LastName,
 Person.JoiningDate,
 Person.Salary,
 Department.DepartmentName,
 Designation.DesignationName
FROM Person
INNER JOIN Department
ON Person.DepartmentID = Department.DepartmentID
INNER JOIN Designation
ON Person.DesignationID = Designation.DesignationID
WHERE Person.FirstName = @FirstName
END;
EXEC pr_display_all_info 'Rahul'

--Create Procedure which displays department wise maximum, minimum & total salaries.
create procedure pr_dept_wise_salary
as
begin
select department.departmentName,
	max(person.salary) as max_salary,
	min(person.salary) as min_salary,
	sum(person.salary) as total_salary
from person
inner join department
on person.departmentID=Department.DepartmentID
group by Department.DepartmentName
end

exec pr_dept_wise_salary


--Create Procedure which displays designation wise maximum, minimum & total salaries.
create procedure pr_desig_wise_salary
as
begin
select Designation.DesignationName,
	max(person.salary) as max_salary,
	min(person.salary) as min_salary,
	sum(person.salary) as total_salary
from person
inner join designation
on person.DesignationID=Designation.DesignationID
group by designation.DesignationName
end

exec pr_desig_wise_salary

--**Part - B**

--1. Create a Stored Procedure to Calculate Total Salary Expense.
	CREATE PROCEDURE PR_TOTAL_SALARY
	AS
	BEGIN
	SELECT SUM(SALARY) FROM PERSON
	END

	EXEC PR_TOTAL_SALARY
--2. Create a Stored Procedure to Get Employees with the Longest Tenure.
	CREATE PROCEDURE LONGEST_TENURE
	AS
	BEGIN
		DECLARE @MINDATE DATE
		SELECT @MINDATE=MIN(JOININGDATE) FROM PERSON
		SELECT * FROM PERSON
		WHERE JoiningDate = @MINDATE
	END
	EXEC LONGEST_TENURE

--3. Create a Stored Procedure to Calculate the Total Number of Employees in Each Department.
CREATE PROCEDURE TOTAL_EMPLOYEE
AS
BEGIN
	SELECT COUNT(PERSON.WORKERID),DEPARTMENT.DepartmentName FROM PERSON
	INNER JOIN Department
	ON Department.DepartmentID=Person.DepartmentID
	GROUP BY Department.DepartmentID
END


	
--4. Create a Stored Procedure to Calculate the Average Salary for Each Department.

--**Part - C**

--5. Create a Stored Procedure to Calculate Average Salary in a Department.
--6. Create a Stored Procedure to Generate Monthly Salary Report.
--7. Create a Stored Procedure to Get Highest Paid Employee.
--8. Create a Stored Procedure to Get Employees Hired in a Specific Year.

