----Lab-7 Perform PL/SQL Programs

----Part - A

----1. Write a PL/SQL program to print a welcome message on a screen.
--	print 'Welcome to South Koreaaaaa'
----2. Write a PL/SQL program to addition of two numbers.
--	declare @a int =10,  @b int = 20
--	print concat(@a,' + ',@b,' = ',(@a+@b))

----3. Write a PL/SQL program to print maximum number out of three numbers.
--	declare @p int, @q int, @r int,@m int
--	set @p=9
--	set @q=1
--	set @r=7
--	set @m= 
--	case
--		when @p > @q and @p > @r then @p
--		when @q> @p and @q > @r then @q
--		else @r
--	end
--	print @m

----4. Write a PL/SQL program to print number from 1 to 10. (Using while loop)
--	declare @i int
--	set @i=1
--	while @i <= 10
--	begin
--		print @i+' '
--		set @i+=1
--	end

----5. Write a PL/SQL program to check where given number is ODD or EVEN.
--	declare @p int =10 
--	if @p%2=0
--	begin
--		print 'Even'
--	end
--	else
--		print 'Odd'

----Part - B

----6. Write a PL/SQL program to print ODD numbers between 1 and 10.
--		declare @i int
--		set @i=1
--		While @i<=10
--		begin
--			if @i%2!=0
--			begin
--				print @i
--			end
--			set @i+=1
--		end

----7. Write a PL/SQL program to print Sum of 1 to 50 numbers.
--		declare @sumI int, @sum int=0
--		set @sumI=1
--		While @sumI<=50
--		begin
--			set @sum+=@sumI
--			set @sumI+=1
--		end
--		print @sum

----8. Write a PL/SQL program to print Sum of even numbers between 1 to 20.
--		declare @sumEvenI int, @sumEven int=0
--		set @sumEvenI=1
--		While @sumEven<=20
--		begin
--			if @sumEvenI%2=0
--			begin
--				set @sumEven+=@sumEvenI
				
--			end
--			set @sumEvenI+=1
--		end
--		print @sumEven
	
--9. Write a PL/SQL program to inserting even numbers into even table & odd numbers into odd table between 1 to 50.
	--create table even(
	--	number int 
	--)
	--create table odd(
	--	number int
	--)
	--	declare @int int
	--	set @int=1
	--	While @int<=50
	--	begin
	--		if @int % 2 = 0
	--		begin
	--			insert into even 
	--			values (@int)
	--		end
	--		else
	--		insert into odd 
	--			values (@int)
	--		set @int+=1
	--	end
		
--Part - C

--10. Write a PL/SQL program to calculate the factorial of N number and display the result.
	--declare @n int=4, @i int=1, @fact int=1
	--while @i<=@n
	--begin
	--	set @fact=@fact*@i
	--	set @i+=1
	--end
	--print @fact

--11. Write a PL/SQL program to check weather given number is prime or not.
	--declare @n int=-10, @i int=2, @flag int = 0
	--if @n=2
	--begin
	--	print '2 is a prime number'
	--end
	--else if @n<=1
	--	print 'undefined'
	--else
	--while @i<@n
	--begin
	--	if @n % @i = 0
	--	begin
	--		set @flag=1
	--		break;
	--	end
	--	set @i+=1
	--end
	--if @flag=1
	--begin
	--print 'Number is not prime'
	--end
	--else
	--print 'Number is prime'

--12. Write a PL/SQL program to reverse a string and display the reversed string.

	declare @str varchar (100)='Hiru is my name'
	print 'Reversed String: '+(reverse(@str))

		--or

	declare @inString nvarchar(100)='Hiru';
	declare @reverseString nvarchar(100)='';
	declare @length int;
	declare @i int;

	--get length of input string
	set @length = len(@inString);

	--initialize the loop index to the length of the string
	set @i = @length

	--loop through the string in reverse order 
	while @i>0
	begin 
		--concatenate each character to the reversed string
		set @reverseString+= substring(@inString, @i, 1)

	 -- Decrement the index
 SET @Index = @Index - 1;
END;
-- Display the results
PRINT 'Original String: ' + @InputString;
PRINT 'Reversed String: ' + @ReversedString;

--13. Write a PL/SQL program to generate the Fibonacci series up to N number and display the series.
DECLARE @TERM INT= 10;
DECLARE @PREV INT = 0;
DECLARE @CURR INT = 1;
DECLARE @NEXT INT;
DECLARE @COUNTER INT = 1;
PRINT @PREV

PRINT @CURR
WHILE @COUNTER < @TERM
BEGIN
SET @NEXT = @PREV + @CURR
PRINT @NEXT
SET @PREV = @CURR
SET @CURR = @NEXT
SET @COUNTER = @COUNTER + 1
END		
	

--14. Write a PL/SQL program to check given year is leap year or not.
DECLARE @YEAR INT = 2014
IF (@YEAR % 4 = 0 AND @YEAR % 100 != 0) OR @YEAR % 400 = 0
BEGIN
PRINT 'THE GIVEN YEAR '+CONVERT(VARCHAR,@YEAR)+ ' LEAP YEAR'
END
ELSE
BEGIN
PRINT 'THE GIVEN YEAR '+CONVERT(VARCHAR,@YEAR)+ ' NOT LEAP YEAR'
END