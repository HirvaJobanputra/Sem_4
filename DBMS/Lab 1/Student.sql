--1. Display all the records of Student table.
SELECT * FROM STUDENT

--2. Display Name, Enrollment number & Division of 3rd semester student only.
SELECT Name, EnrollmentNo, Division from STUDENT
WHERE Sem=3;

--3. Display the Name & ID of student and label the columns as “Student Name” and “Student ID”.
SELECT Name as "Student Name", EnrollmentNo as "Student ID" FROM STUDENT 


--4. Display Name of Student who belongs to Semester 5 and belong to BCX-5 division.
SELECT Name FROM Student
WHERE Sem=5 and Division='BCX-5';

--5. Find Student Name & Enrollment number in which Student Id between 102 to 105. (Use AND &BETWEEN).
SELECT Name, EnrollmentNo from Student
Where StuId>102 and StuId<105

	--between
	SELECT Name, EnrollmentNo from Student
	Where StuId between 102 and 105

--6. Find Student Name, Enrollment number with their Email who belongs to 5th or 3rd Semester. (Use IN & OR).
	SELECT Name, EnrollmentNo, Email from Student
	Where sem=3 or sem=5

--7. Display student Name & Id who does not belongs to BCY-3 and BCX-3 division.
	SELECT Name, StuId from Student
	Where Division<>'bcy-3' and Division<>'bcx-3'

--8. Display all the students whose name starts with “v”.
	Select name from Student
	where name like 'V%'
	
--9. Display All the Details of first two students.
	Select top 2 * from Student
	
--10. Display all the student details order by Birth Date.
	Select * from Student
	order by BirthDate
	
--11. Display student ID, Name, Enrollment number and Email ID whose semester is either 3 or 5 and division in BCZ-5 and BCY-3.
	SELECT Name, EnrollmentNo, Email from Student
	Where (sem=3 or sem=5) and (Division='BCZ-5' or  Division='BCY-3')
	
--12. Display Name & Enrollment no of first 30% Students.
	SELECT top 30 percent name, EnrollmentNo from student
	
--13. Display Unique Semesters.
	SELECT distinct sem from STUDENT
	
--14. Find the student details who born between year 1984 and 1990.
	SELECT * FROM STUDENT
	WHERE BirthDate>'1984' and BirthDate<'1990'
	
--15. Retrieve all the Students who have no Enrollment.
	SELECT * FROM STUDENT
	Where EnrollmentNo=null	

--16. Retrieve all the students name and semester whose email id contain “123”.
	SELECt name, sem from Student
	Where email like '%123%'

--17. Find Students who born before date 01-01-1986 & belongs to 4th semester.
	SELECT * FROM STUDENT
	WHERE BirthDate<'01-01-1986' and sem=4

--18. Display all the students order by name in descending order.
	SELECT * FROM STUDENT
	order by name desc

--19. Write an SQL query to clone a new table Student_New from Student table with all data.
	SELECT * into student_new from Student

--20. Insert a new row in Student_New table: (106, “Chirag Patel”, 090200107104, “BCY-5”, 5, 1987-03-23,
--“chirag_s@gmail.com”, 7788998893)
	Insert into Student_New (StuId, Name, EnrollmentNo, Division, sem, BirthDate, Email, ContactNo)
	Values(106,'Chirag Patel', 090200107104,'BCY-5', 5, '1987-03-23','chirag_s@gmail.com',7788990066)
	