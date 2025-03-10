CREATE DATABASE EMPLOYEE_INFORMATION
USE EMPLOYEE_INFORMATION

CREATE TABLE EMPLOYEE(
	EID INT ,
	EName VARCHAR(100),
	GENDER VARCHAR(10),
	JoiningDate DATETIME,
	Salary DECIMAL(8,2),
	City VARCHAR(100)
)

INSERT INTO EMPLOYEE(ENAME, GENDER, JoiningDate, SALARY, CITY)
VALUES('NICK','MALE','01-01-13',4000,'LONDON')

INSERT INTO EMPLOYEE(ENAME, GENDER, JoiningDate, SALARY, CITY)
VALUES('Julian', 'Female', '01-08-14',3000,'New York')

INSERT INTO EMPLOYEE(ENAME, GENDER, JoiningDate, SALARY, CITY)
VALUES('Roy', 'Male', '01-08-16', 3500, 'London')

INSERT INTO EMPLOYEE(ENAME, GENDER, JoiningDate, SALARY, CITY)
VALUES('Tom','Male',null,4500,'London')

INSERT INTO EMPLOYEE(ENAME, GENDER, JoiningDate, SALARY, CITY)
VALUES('Jerry','Male','01-02-13',2800,'Sydney')

INSERT INTO EMPLOYEE(ENAME, GENDER, JoiningDate, SALARY, CITY)
VALUES('Philip','Male','01-01-15',7000,'NeW York')

INSERT INTO EMPLOYEE(ENAME, GENDER, JoiningDate, SALARY, CITY)
VALUES('Sara','Female','01-08-17',4800,'Sydney')

INSERT INTO EMPLOYEE(ENAME, GENDER, JoiningDate, SALARY, CITY)
VALUES('Emily','Female','01-01-15',5500,'New York')

INSERT INTO EMPLOYEE(ENAME, GENDER, JoiningDate, SALARY, CITY)
VALUES('Michael','Male',null,6500,'London')

INSERT INTO EMPLOYEE(ENAME, GENDER, JoiningDate, SALARY, CITY)
VALUES('John','Male','01-01-15',8800,'London')

DELETE FROM EMPLOYEE

--1. Display all the employees whose name starts with “m” and 4th character is “h”.
	SELECT * FROM EMPLOYEE 
	WHERE eNAME LIKE 'M__H%'
--2. Find the value of 3 raised to 5. Label the column as output.
	SELECT POWER(3,5) AS OUTPUT

--3. Write a query to subtract 20 days from the current date.
	SELECT GETDATE()-20

--4. Produce output like <Ename> having <salary> salary (i.e. Nick having 4000 salary).
	SELECT CONCAT(ENAME,' ','HAVING',' ',SALARY,' ','SALARY') FROM EMPLOYEE

--5. Write a query to display name of employees whose name starts with “j” and contains “n” in their name.
	SELECT ENAME FROM EMPLOYEE 
	WHERE ENAME LIKE 'J%N%'

--6. Display 2nd to 9th character of the given string “SQL Programming”.
	SELECT SUBSTRING ('SQL Programming',2,9)

--7. Display name of the employees whose city name ends with “ney” & contains six characters.
	SELECT * FROM EMPLOYEE 
	WHERE CITY LIKE '___NEY'

--8. Convert all employee names to Uppercase whose name starts with “j” and having salary more than 3000.
	SELECT UPPER(ENAME) AS ENAME FROM EMPLOYEE
	WHERE ENAME LIKE 'J%' AND SALARY>3000

--9. Write a query to convert value 15 to string.
	SELECT CONVERT(VARCHAR(100),15)
		--OR
	SELECT CAST (15 AS VARCHAR(100))
	
--10. Count the number of employees in each city.
	SELECT CITY,COUNT(ENAME) FROM EMPLOYEE
	GROUP BY CITY

--11. Concatenate the city and employee name and generate the output like: <EName> belongs to <City> city (i.e. Tom belongs to London city).
	SELECT ENAME + ' BELONGS TO ' + CITY + ' CITY' FROM EMPLOYEE

--12. Get the sum of salaries for employees who joined after 2014.
	SELECT SUM(SALARY) FROM EMPLOYEE 
	WHERE JoiningDate > '01-01-2014'

--13. Display all the employees whose name ends with either “n” or “y”.
	SELECT * FROM EMPLOYEE
	WHERE ENAME LIKE '%N' OR ENAME LIKE '%Y'

--14. Find smallest integer value that is greater than or equal to 63.1, 63.8 and -63.2.
	SELECT CEILING(63.1)
	SELECT CEILING(63.8)
	SELECT CEILING(-63.2)

--15. Calculate the Total, Average, Minimum, and Maximum Salaries by City.
	SELECT CITY,SUM(SALARY) AS 'SUM', AVG(SALARY) AS 'AVERAGE', MIN(SALARY) AS 'MINIMUM', MAX(SALARY) AS 'MAXIMUM' FROM EMPLOYEE
	GROUP BY CITY

--16. Display all employees whose joining date is not specified.
	SELECT * FROM EMPLOYEE
	WHERE JoiningDate IS NULL
	
--17. Display name of the employees in capital letters and city in small letters.
	SELECT UPPER(ENAME), LOWER(CITY) FROM EMPLOYEE

--18. Display gender wise maximum salary.
	SELECT MAX(SALARY) FROM EMPLOYEE
	GROUP BY GENDER

--19. Calculate the Number of Days Each Employee Has Worked (If JoiningDate is Not Null).
	SELECT DATEDIFF(DAY, JOININGDATE, GETDATE()) FROM EMPLOYEE
	WHERE JoiningDate IS NOT NULL

--20. Display name of the employees and their experience in years.
	SELECT DATEDIFF(YEAR, JOININGDATE, GETDATE()) FROM EMPLOYEE