-- Q: JOIN Operations
/* Assume you have another table named CustomerInfo with columns CustomerID and CustomerName.
Write an SQL query to retrieve a list of orders from the Orderlist table along with the CustomerName from the
CustomerInfo table based on a matching Customer field.*/

-- Create table first
create table Customerinfo (
customerid nvarchar(50) not null, 
customername nvarchar(50) not null
)
-- Insert data into the new table
insert into Customerinfo (customerid,customername) values 
('V55555_53', 'Devansh'),
('V55555_54', 'Atmaja')

-- Solving the question
select a.*, b.customername from Orderlist a join customerinfo b on a.Customer=b.customerid

-- Practising other types of joins

-- inner join -> same as join
-- without using table alias
select Orderlist.*, customerinfo.customername from Orderlist inner join customerinfo 
on Orderlist.Customer=customerinfo.customerid

-- using table alias
select a.*, b.customername from Orderlist a inner join customerinfo b on a.Customer=b.customerid

-- left join
select a.*, b.customername from Orderlist a left join customerinfo b on a.Customer=b.customerid

-- right join
select a.*, b.customername from Orderlist a right join customerinfo b on a.Customer=b.customerid

-- full outer join
select a.*, b.customername from Orderlist a full outer join customerinfo b on a.Customer=b.customerid

-- union
select Customer from Orderlist
union
select customername from customerinfo