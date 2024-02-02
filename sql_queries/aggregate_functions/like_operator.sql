-- Q: Using LIKE Operator
-- Write an SQL query to select all records from the Orderlist table where the Carrier name starts with the 'V4'.
select * from Orderlist  where Carrier like 'V4%' 

-- Bonus question: Write an SQL query to find number of orders with carrier id as v44_3
select Carrier, COUNT(carrier) as count from Orderlist
where carrier='V44_3'
 group by Carrier

-- Bonus question: Write an SQL query to find number of orders for every port that starts with PO. 
-- Present the output in descending order.
select Origin_Port, count(order_id) as a from Orderlist where Origin_Port like 'po%'
group by Origin_Port 
order by a desc
