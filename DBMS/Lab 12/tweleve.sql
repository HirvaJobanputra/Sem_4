create database Cursor_SQL_135
create table products (
    product_id int primary key,
    product_name varchar(250) not null,
    price decimal(10,2) not null
);

insert into products (product_id, product_name, price) values
(1, 'smatphone', 35000),
(2, 'laptop', 65000),
(3, 'headphones', 5500),
(4, 'television', 85000),
(5, 'gaming console', 32000);	

--Part - A
--1. Create a cursor Product_Cursor to fetch all the rows from a products table.
declare @product_id int,
        @product_name varchar(50),
        @price decimal(10,2);
declare product_cursor cursor
for select product_id, product_name, price from products;
open product_cursor;
fetch next from product_cursor into @product_id, @product_name, @price;
while @@fetch_status = 0
begin
    print 'product_id: ' + convert(varchar, @product_id) + 
          ', product_name: ' + @product_name + 
          ', price: ' + convert(varchar, @price);
 fetch next from product_cursor into @product_id, @product_name, @price;
end;
close product_cursor;
deallocate product_cursor;

--2. Create a cursor Product_Cursor_Fetch to fetch the records in form of ProductID_ProductName (Example: 1_Smartphone).
declare @product_idd int, @product_namee varchar(50);
declare productt_cursor cursor
for select product_id, product_name from products;
open productt_cursor
fetch next from productt_cursor into @product_idd, @product_namee;
while @@fetch_status = 0
begin
    print cast(@product_idd as varchar) + '_' + @product_namee;
fetch next from productt_cursor into @product_idd, @product_namee;
end;
close productt_cursor;
deallocate productt_cursor;

--3. Create a cursor that displays the products price above 50000.
declare @product_id int,
        @product_name varchar(50),
        @price decimal(10,2);
declare product_cursor cursor
for select product_id, product_name, price from products where price > 50000;
open product_cursor;
fetch next from product_cursor into @product_id, @product_name, @price;
while @@fetch_status = 0
begin
    print 'product_id: ' + convert(varchar, @product_id) + 
          ', product_name: ' + @product_name + 
          ', price: ' + convert(varchar(20), @price, 1);
fetch next from product_cursor into @product_id, @product_name, @price;
end;
close product_cursor;
deallocate product_cursor;

--4. Create a cursor Product_CursorUpdate that retrieves all the data from the products table and increases the price by 10%.
declare @product_id int,
        @product_name varchar(50),
        @price decimal(10,2);
declare product_cursor cursor
for select product_id, product_name, price from products where price > 50000;
open product_cursor;
fetch next from product_cursor into @product_id, @product_name, @price;
while @@fetch_status = 0
begin
    update products
	set price=price+price*0.10
	where @product_id=@product_id
    fetch next from product_cursor into @product_id, @product_name, @price;
end;
close product_cursor;
deallocate product_cursor;

--Part - B
--5. Create a cursor that finds product with maximum price.
declare @product_id int,
        @product_name varchar(50),
        @price decimal(10,2);
declare product_cursor cursor
for select product_id, product_name, price 
from products 
where price = (select max(price) from products);  
open product_cursor;
fetch next from product_cursor into @product_id, @product_name, @price;
while @@fetch_status = 0
begin
    print 'product_id: ' + convert(varchar, @product_id) + 
          ', product_name: ' + @product_name + 
          ', price: ' + convert(varchar(20), @price, 1);
    fetch next from product_cursor into @product_id, @product_name, @price;
end;
close product_cursor;
deallocate product_cursor;

--6. Create a cursor to insert details of Products table into the NewProducts table if the product is "Laptop".
create table NewProducts (
    product_id int primary key,
    product_name varchar(250) not null,
    price decimal(10,2) not null
);
declare @product_id int,
        @product_name varchar(250),
        @price decimal(10,2);
declare product_cursor cursor
for select product_id, product_name, price 
from products 
where product_name = 'Laptop';  
open product_cursor;
fetch next from product_cursor into @product_id, @product_name, @price;
while @@fetch_status = 0
begin
    insert into NewProducts (product_id, product_name, price)
    values (@product_id, @product_name, @price);
    print 'Inserted: product_id = ' + convert(varchar, @product_id) + 
          ', product_name = ' + @product_name + 
          ', price = ' + convert(varchar(20), @price, 1);
    fetch next from product_cursor into @product_id, @product_name, @price;
end;
close product_cursor;
deallocate product_cursor;

--Part - C
--7. Create a cursor that increases price of products by 5000 if price is below 40000.
declare @product_id int,
        @product_name varchar(250),
        @price decimal(10,2);
declare product_cursor cursor
for select product_id, product_name, price 
from products 
where price < 40000;  
open product_cursor;
fetch next from product_cursor into @product_id, @product_name, @price;
while @@fetch_status = 0
begin
    update products 
    set price = price + 5000
    where product_id = @product_id;
    print 'Updated: product_id = ' + convert(varchar, @product_id) + 
          ', product_name = ' + @product_name + 
          ', new price = ' + convert(varchar(20), @price + 5000, 1);
fetch next from product_cursor into @product_id, @product_name, @price;
end;
close product_cursor;
deallocate product_cursor;

--8. Create a cursor that displays products with prices below the average price.
declare @product_id int,
        @product_name varchar(250),
        @price decimal(10,2),
        @avg_price decimal(10,2);
select @avg_price = avg(price) from products;
declare product_cursor cursor
for select product_id, product_name, price 
from products 
where price < @avg_price;  
open product_cursor;
fetch next from product_cursor into @product_id, @product_name, @price;
while @@fetch_status = 0
begin
    print 'product_id: ' + convert(varchar, @product_id) + 
          ', product_name: ' + @product_name + 
          ', price: ' + convert(varchar, @price) + 
          ' (Below Average Price: ' + convert(varchar, @avg_price) + ')';
    fetch next from product_cursor into @product_id, @product_name, @price;
end;
close product_cursor;
deallocate product_cursor;

--9. Create a cursor Product_CursorDelete that deletes all the data from the Products table.
declare @product_id int;
declare Product_CursorDelete cursor
for select product_id from products; 
open Product_CursorDelete;
fetch next from Product_CursorDelete into @product_id;
while @@fetch_status = 0
begin
    delete from products where product_id = @product_id;  
    print 'Deleted product with ID: ' + convert(varchar, @product_id);
    fetch next from Product_CursorDelete into @product_id;
end;
close Product_CursorDelete;
deallocate Product_CursorDelete;