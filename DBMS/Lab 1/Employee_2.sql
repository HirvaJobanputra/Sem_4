--1. Update the salary of an employee to 4500 whose EID is 1.
	update employee
	set salary=4500
	where eid=1
--2. Increase the salary of all the employee by 7% who belongs to “London” city.
	update EMPLOYEE
	set Salary=salary+((7*salary)/100)
	where city='London'

--3. Add a new column department Varchar (50) to the employee table.
	alter table EMPLOYEE
	add department varchar(50)

--4. Delete Employee Record Where EID = 5.
	delete from employee
	where eid=5

--5. Delete employees who have 'NULL' in their JoiningDate.
	DELETE FROM EMPLOYEE
	WHERE JoiningDate IS NULL

--6. Modify the salary column to allow for 10 digits and 2 decimal places.
	ALTER TABLE EMPLOYEE
	ALTER COLUMN SALARY DECIMAL(10,2)

----7. Add new columns, Email and PhoneNumber, to store employee emails and phone numbers.
	ALTER TABLE EMPLOYEE
	ADD EMAIL VARCHAR(50)
	ALTER TABLE EMPLOYEE
	ADD PHONENUMBER VARCHAR(20) 


--8. Set JoiningDate to NULL for employees in “Sydney”.
	UPDATE EMPLOYEE
	SET JoiningDate=NULL 
	WHERE CITY='SYDNEY'

--9. Reduce salary by 200 for all employees earning above 5000.
	UPDATE EMPLOYEE
	SET SALARY=SALARY-200
	WHERE SALARY>5000

--10. Rename the Salary column to MonthlySalary.
	SP_RENAME 'EMPLOYEE.SALARY' , 'MONTHLYSALARY'

--11. Remove column PhoneNumber from employee table.
	ALTER TABLE EMPLOYEE
	DROP COLUMN PHONENUMBER

--12. Rename a column from Ename to FirstName.
	SP_RENAME 'EMPLOYEE.ENAME', 'FIRSTNAME'


--13. Rename a table from Employee to EmpMaster.
	SP_RENAME 'EMPLOYEE', 'EMPMASTER'
	

--14. Remove City column form the EmpMaster table.
	ALTER TABLE EMPMASTER
	DROP COLUMN CITY


--15. Drop EmpMaster table from the database.
	DROP TABLE EMPMASTER

	SELECT * FROM EMPMASTER