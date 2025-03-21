--From the above given table perform the following queries:
--1. Find all persons with their department name & code.
	SELECT  DEPARTMENT.DEPARTMENTNAME , PERSON.PERSONNAME, DEPARTMENT.DEPARTMENTCODE
	FROM PERSON INNER JOIN
	DEPARTMENT ON PERSON.DEPARTMENTID=DEPARTMENT.DEPARTMENTid
	
--2. Give department wise maximum & minimum salary with department name.
	SELECT DEPARTMENT.DepartmentName, MIN(PERSON.SALARY), MAX(PERSON.SALARY)
	FROM PERSON INNER JOIN
	DEPARTMENT ON PERSON.DEPARTMENTID=DEPARTMENT.DEPARTMENTid
	GROUP BY DEPARTMENT.DEPARTMENTNAME
	

--3. Find all departments whose total salary is exceeding 100000.
	SELECT DEPARTMENT.DEPARTMENTNAME,PERSON.SALARY
	FROM PERSON INNER JOIN
	DEPARTMENT ON PERSON.DEPARTMENTID=DEPARTMENT.DEPARTMENTid
	WHERE MAX(PERSON.SALARY)>100000
	GROUP BY DEPARTMENT.DEPARTMENTNAME
	


--4. Retrieve person name, salary & department name who belongs to Jamnagar city.
	SELECT PERSON.PERSONNAME, PERSON.SALARY, DEPARTMENT.DEPARTMENTNAME
	FROM PERSON LEFT OUTER JOIN DEPARTMENT
	ON PERSON.DEPARTMENTID=DEPARTMENT.DEPARTMENTid
	WHERE CITY='JAMNAGAR'

--5. Find all persons who does not belongs to any department.
	SELECT PERSON.PERSONNAME FROM PERSON
	LEFT OUTER JOIN DEPARTMENT
	ON DEPARTMENT.DEPARTMENTid=PERSON.DEPARTMENTID
	WHERE DEPARTMENT.DEPARTMENTid IS NULL


--6. Find department wise person counts.
	SELECT COUNT(PERSON.PERSONID) FROM PERSON
	FULL OUTER JOIN DEPARTMENT
	ON DEPARTMENT.DEPARTMENTid=PERSON.DEPARTMENTID
	GROUP BY DEPARTMENT.DEPARTMENTid
	
--7. Find average salary of person who belongs to Ahmedabad city.
	SELECT AVG(PERSON.SALARY) FROM PERSON
	LEFT OUTER JOIN DEPARTMENT 
	ON DEPARTMENT.DEPARTMENTid=PERSON.PERSONID
	WHERE CITY='AHEMDABAD'
	
--8. Produce Output Like: <PersonName> earns <Salary> from department <DepartmentName> monthly (In Single Column).
	SELECT PERSON.PERSONNAME +' EARNS '+ CAST(PERSON.SALARY AS VARCHAR)+ ' FROM ' + DEPARTMENT.DEPARTMENTNAME + ' MONTHLY ' FROM PERSON
	JOIN DEPARTMENT ON DEPARTMENT.DEPARTMENTid=PERSON.DEPARTMENTID

--9. List all departments who have no persons.
	SELECT DEPARTMENT.DEPARTMENTNAME FROM DEPARTMENT
	LEFT OUTER JOIN PERSON ON DEPARTMENT.DEPARTMENTid=PERSON.DEPARTMENTID
	WHERE PERSON.PERSONID IS NULL

--10. Find city & department wise total, average & maximum salaries.
	SELECT PERSON.CITY,DEPARTMENT.DEPARTMENTNAME,AVG(PERSON.SALARY) AS AVERAGE, MAX(PERSON.SALARY) AS MAXIMUM, SUM(PERSON.SALARY) AS TOTAL FROM PERSON
	LEFT OUTER JOIN DEPARTMENT ON DEPARTMENT.DEPARTMENTID=PERSON.DEPARTMENTID
	GROUP BY PERSON.CITY, DEPARTMENT.DEPARTMENTNAME

--11. Display Unique city names.
	SELECT DISTINCT PERSON.CITY FROM PERSON

--12. List out department names in which more than two persons.
	SELECT DEPARTMENT.DEPARTMENTNAME, COUNT(PERSON.PERSONNAME) FROM DEPARTMENT
	LEFT OUTER JOIN PERSON ON PERSON.DEPARTMENTID=DEPARTMENT.DEPARTMENTid
	GROUP BY DEPARTMENT.DEPARTMENTNAME
	HAVING COUNT(PERSON.PERSONNAME)>2

--13. Combine person name�s first three characters with city name�s last three characters in single column.
	SELECT LEFT(PERSON.PERSONNAME,3)+RIGHT(PERSON.CITY,3) FROM PERSON
--14. Give 10% increment in Computer department employee�s salary.
	UPDATE PERSON
	SET SALARY=SALARY*1.10
	WHERE DEPARTMENTID=(SELECT DEPARTMENTID FROM DEPARTMENT WHERE DEPARTMENTNAME='COMPUTER')
--15. Display all the person name�s who�s joining dates difference with current date is more than 365 days.
	SELECT PERSON.PERSONNAME FROM PERSON
	WHERE DATEDIFF(DAY, PERSON.JOININGDATE,GETDATE())>365