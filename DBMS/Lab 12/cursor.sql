CREATE DATABASE CURSOR_SQL
USE CURSOR_SQL

CREATE TABLE PRODUCTS
(	
	PRODUCT_ID INT PRIMARY KEY,
	PRODUCT_NAME VARCHAR(250) NOT NULL,
	PRICE DECIMAL(10,2)
)

INSERT INTO Products (Product_id, Product_Name, Price)
VALUES
(1, 'Smartphone', 35000),
(2, 'Laptop', 65000),
(3, 'Headphones', 5500),
(4, 'Television', 85000),
(5, 'Gaming Console', 32000);

--Part - A

--Create a cursor Product_Cursor to fetch all the rows from a products table.

DECLARE @PID  INT, @PNAME VARCHAR(255), @PRICE DECIMAL(10,2)
DECLARE FETCHALL CURSOR 
FOR 
SELECT * FROM PRODUCTS
OPEN FETCHALL
FETCH NEXT FROM FETCHALL INTO @PID, @PNAME, @PRICE
WHILE @@FETCH_STATUS=0
	BEGIN 
		PRINT 'PRODUCT ID:'+CONVERT(VARCHAR(25),@PID) 
		PRINT 'PRODUCT NAME:' + @PNAME
		PRINT 'PRICE:' + CONVERT(VARCHAR(25),@PRICE)
		PRINT ''
		FETCH NEXT FROM FETCHALL INTO @PID, @PNAME, @PRICE
	END
CLOSE FETCHALL
DEALLOCATE FETCHALL

--Create a cursor Product_Cursor_Fetch to fetch the records in form of ProductID_ProductName (Example: 1_Smartphone).
DECLARE @PID  INT, @PNAME VARCHAR(255)

DECLARE FETCHALLf CURSOR 
FOR 
SELECT PRODUCT_ID,PRODUCT_NAME FROM PRODUCTS
OPEN FETCHALLf
FETCH NEXT FROM FETCHALLf INTO @PID, @PNAME
WHILE @@FETCH_STATUS=0
	BEGIN 
		PRINT CONVERT(VARCHAR(25),@PID)+'_'+@PNAME
		FETCH NEXT FROM FETCHALLF INTO @PID, @PNAME
	END
CLOSE FETCHALLf
DEALLOCATE FETCHALLf

--Create a cursor that displays the products price above 50000.
	DECLARE @
	DECLARE HIGHER_PRICE CURSOR
	
--Create a cursor Product_CursorUpdate that retrieves all the data from the products table and increases the price by 10%.
--Part - B

--Create a cursor that finds product with maximum price.
--Create a cursor to insert details of Products table into the NewProducts table if the product is "Laptop".
--Part - C

--Create a cursor that increase price of products by 5000 if price is below 40000.
--Create a cursor that displays products with prices below the average price.
--Create a cursor Product_CursorDelete that deletes all the data from the Products table. Activate W